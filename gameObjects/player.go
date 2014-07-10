package gameObjects

import (
    "fmt"
    wpns "MonsterQuest/gameStuff/weapons"
    "MonsterQuest/gameObjectsBase"
    "MonsterQuest/gameFight/fightBase"
    "MonsterQuest/gameObjectsFlags"
    "MonsterQuest/consts"
    "MonsterQuest/geometry"
    "MonsterQuest/connect"
)

type playerKind struct {
    gameObjectsBase.Kind
}

func (pk *playerKind) GetName() string {
    return "player"
}

func (pk *playerKind) GetDescription() string {
    return ""
}

var kind *playerKind

func getPlayerKind() *playerKind {
    if kind == nil {
        kind = &playerKind{gameObjectsBase.NewKind()}
        kind.SetRace(consts.PLAYER_RACE)
        kind.Flags = append(kind.Flags, gameObjectsFlags.GetFlag("CAN_MOVE"))
        kind.Flags = append(kind.Flags, gameObjectsFlags.GetFlag("CAN_BLOW"))
    }
    return kind
}

type slot struct {
    itemTypes []int
    item gameObjectsBase.Itemer
}

func (s* slot) isSuitableType(it int) bool {
    var result bool = false
    for _, v := range s.itemTypes {
        result = result || it == v
    }
    return result
}

func newSlot(itemTypes []int) *slot {
    return &slot{itemTypes, nil}
}

type Player struct {
    gameObjectsBase.ActiveObject
    Login string
    SID string
    DBId int64
    slots map[int] *slot
    weapon fightBase.Blower
    fist gameObjectsBase.Itemer
}

func (p *Player) GetType() string {
    return consts.PLAYER_TYPE
}

func (p* Player) GetInventoryInfo() []consts.JsonType {
    return p.Inventory.GetInfo()
}

func (p *Player) GetInfo() consts.JsonType {
    info := p.ActiveObject.GetInfo()
    info["login"] = p.Login
    info["type"] = consts.PLAYER_TYPE
    return info
}

func (p *Player) GetFullInfo() consts.JsonType {
    info := p.MergeInfo(p.GetInfo())
    slots := make(map[string] consts.JsonType)
    for slot, slotName := range consts.SlotNameMapping {
        if p.slots[slot].item != nil {
            slots[slotName] = p.slots[slot].item.GetFullInfo()
        }
    }
    info["slots"] = slots
    return info
}

func (p *Player) Do() {
    p.DoWithObj(p)
    p.Dir = -1
}

func (p *Player) Attack() consts.JsonType {
    var res consts.JsonType = nil
    t, _ := p.GetTarget()
    if d := geometry.Distance(p.GetCenter(), t.GetCenter()); d <= p.GetAttackRadius() {
        res = t.GetHit(p.weapon, p)
    }
    if res != nil {
        res["attacker"] = p.GetID()
        res["target"] = t.GetID()
    }
    p.Target = nil
    return res
}

func (p* Player) RestoreItem(item gameObjectsBase.Itemer, place int) {
    p.Inventory.RestoreItem(item, place)
    item.SetOwner(p)
}

func (p* Player) RestoreSlot(item gameObjectsBase.Itemer, slotIota int) {
    p.slots[slotIota].item = item
    item.SetOwner(p)
}

func (p* Player) DropItem(item gameObjectsBase.Itemer, amount int) (int, gameObjectsBase.Itemer) {
    db := connect.CreateConnect()
    place, new_item := p.ActiveObject.DropItem(item, amount)
    _, err := db.Exec("CALL dec_user_item_amount(?, ?, ?, ?)", p.DBId, item.GetKindId(), place, amount);
    if err != nil {
        //
    }
    return place, new_item
}

func (p* Player) PickUpItem(item gameObjectsBase.Itemer) bool {
    db := connect.CreateConnect()
    _, err := db.Exec("CALL inc_user_item_amount(?, ?, ?, ?)", p.DBId, item.GetKindId(), p.AddItem(item), item.GetAmount());
    if err != nil {
        //
        fmt.Println(err)
    }
    return err == nil
}

func (p* Player) DeleteItem(item gameObjectsBase.Itemer, amount int) bool {
    db := connect.CreateConnect()
    _, err := db.Exec("CALL dec_user_item_amount(?, ?, ?, ?)", p.DBId, item.GetKindId(), p.Inventory.DeleteItem(item), amount);
    if err != nil {
        //
    }
    return err == nil
}

func (p *Player) Equip(item gameObjectsBase.Itemer, slotIota int) (bool, consts.JsonType) {
    var res consts.JsonType = nil
    slot := p.slots[slotIota]
    if slot == nil || !slot.isSuitableType(item.GetItemType())  || item.GetItemClass() != consts.ITEM_CLASS_GARMENT {
        return false, res
    }
    p.Unequip(slotIota)
    db := connect.CreateConnect()
    _, err := db.Exec("CALL equip_item(?, ?, ?, ?)", p.DBId, item.GetKindId(), item.EquipItem(p.Inventory), slotIota);
    if err == nil {
        if slotIota == consts.SLOT_LEFT_HAND || slotIota == consts.SLOT_RIGHT_HAND {
            st := item.GetItemSubtype()
            if st == consts.ITEM_ST_BOW || st == consts.ITEM_ST_TWO_HANDED {
                var s int
                if slotIota == consts.SLOT_LEFT_HAND {
                    s = consts.SLOT_RIGHT_HAND
                } else {
                    s = consts.SLOT_LEFT_HAND
                }
                if p.slots[s].item.GetID() != item.GetID() {
                    res = consts.JsonType {}
                    res[consts.SlotNameMapping[s]] = item.GetID()
                    p.Unequip(s)
                    p.slots[s].item = item
                    db.Exec("CALL clone_slot(?, ?, ?)", p.DBId, slotIota, s)
                }
            }
        }
        slot.item = item
    }
    return err == nil, res
}

func (p *Player) Unequip(slotIota int) (bool, consts.JsonType) {
    var res consts.JsonType = nil
    slot := p.slots[slotIota]
    if slot.item == nil {
        return false, res
    }
    db := connect.CreateConnect()
    _, err := db.Exec("CALL unequip_item(?, ?, ?, ?)", p.DBId, slot.item.GetKindId(), slot.item.UnequipItem(p.Inventory), slotIota)
    if err == nil {
        if slotIota == consts.SLOT_LEFT_HAND || slotIota == consts.SLOT_RIGHT_HAND {
            st := slot.item.GetItemSubtype()
            if st == consts.ITEM_ST_BOW || st == consts.ITEM_ST_TWO_HANDED {
                var s int
                if slotIota == consts.SLOT_LEFT_HAND {
                    s = consts.SLOT_RIGHT_HAND
                } else {
                    s = consts.SLOT_LEFT_HAND
                }
                if p.slots[s].item.GetID() == slot.item.GetID() {
                    res = consts.JsonType {}
                    res[consts.SlotNameMapping[s]] = slot.item.GetID()
                    p.slots[s].item = nil
                    db.Exec("CALL delete_clone_slot(?, ?)", p.DBId, s)
                }
            }
        }
        slot.item = nil
    }
    return err == nil, res
}

func (p *Player) GetHit(blow fightBase.Blower, attacker gameObjectsBase.Activer) consts.JsonType {
    res := p.ActiveObject.GetHit(blow, attacker)
    return res
}

func (p *Player) Equipped(item gameObjectsBase.Itemer) bool {
    for _, slot := range p.slots {
        if slot.item == item {
            return true
        }
    }
    return false
}

func (p *Player) MoveItem(item gameObjectsBase.Itemer, to_cell int) bool {
    if item.GetOwner().GetID() != p.GetID() || p.Equipped(item) {
        return false
    }
    from_cell := p.Inventory.GetPlace(item.GetID())
    if from_cell == to_cell {
        return true
    } else {
        db := connect.CreateConnect()
        _, err := db.Exec("CALL move_item(?, ?, ?)", p.DBId, from_cell, to_cell);
        if err == nil {
            p.Inventory.MoveItem(item, from_cell, to_cell)
        }
        return err == nil
    }
}

func (p* Player) UseItem(id int64) {
    if p.Inventory.HasItem(id) {
        p.Inventory.GetItem(id).UseItem(p.Inventory)
    }
}

func (p *Player) GetCapacity() int {
    return p.Characteristics[consts.CHARACTERISTIC_CAPACITY]
}

func (p *Player) CanPickUp(item gameObjectsBase.Itemer) bool {
    return p.Inventory.GetWeight() + item.GetWeight() <= p.GetCapacity()
}

func (p *Player) GetItem(id int64) gameObjectsBase.Itemer {
    if p.fist.GetID() == id {
        return p.fist
    } else {
        return p.Inventory.GetItem(id)
    }
}

func (p *Player) IsEquippedItem(item gameObjectsBase.Itemer) bool {
    return (item.GetID() == p.fist.GetID() && p.slots[consts.SLOT_LEFT_HAND].item == nil) || item.IsEquipped()
}

func (p *Player) GetFistID() int64 {
    return p.fist.GetID()
}

func NewPlayer(id, dbId int64, login, sid string, x, y float64) *Player {
    slots := make(map[int] *slot)
    for slotType, itemType := range consts.SlotItemMapping {
        slots[slotType] = newSlot(itemType)
    }
    p := &Player{gameObjectsBase.NewActiveObject(id, x, y, getPlayerKind()),
        login, sid, dbId, slots, wpns.GetWeapon(consts.FIST_WEAP), nil}
    p.fist  = gameObjectsBase.NewFistItem(p)
    return p
}
