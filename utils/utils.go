package utils

import (
    "fmt"
    "strconv"
    "strings"
    "math"
    "github.com/nu7hatch/gouuid"
    "math/rand"
    "MonsterQuest/consts"
    "MonsterQuest/geometry"
)

func GetIdFromJson(req consts.JsonType) (int64, bool) {
    var (
        ok bool = false
        id float64 = -1
        intid int64
    )
    idParam := req["id"]
    if idParam != nil {
        id, ok = idParam.(float64)
    }
    intid = int64(id)
    return intid, ok
}

func GetSidFromJson(req consts.JsonType) (string, bool) {
    var (
        ok bool = false
        sid string = ""
    )
    sidParam := req["sid"]
    if sidParam != nil {
        sid, ok = sidParam.(string)
    }
    return sid, ok
}

func GetPointFromJson(req consts.JsonType) (*geometry.Point, bool) {
    var pt *geometry.Point
    x, x_ok := req["x"].(float64)
    y, y_ok := req["y"].(float64)
    if x_ok && y_ok {
        pt = &geometry.Point{x, y}
    }
    return pt, x_ok && y_ok
}

func CheckJsonRequest(req consts.JsonType, results map[string] string) (bool, string) {
    for field, errorMsg := range results {
        if req[field] == nil {
            return false, errorMsg
        }
    }
    return true, "ok"
}

func JsonAction(action, result string) consts.JsonType{
    return consts.JsonType {
        "action" : action,
        "result" : result,
    }
}

func Randint0(max int) int {
    return rand.Intn(max)
}

func ParseFloat(s string) float64 {
    res, err := strconv.ParseFloat(s, 64)
    if err != nil {
        panic(fmt.Sprintf("Try parse \"%s\" in float", s))
    }
    return res
}

func ParseInt(s string) int {
    return int(ParseInt64(s))
}

func ParseInt64(s string) int64 {
    res, err := strconv.ParseInt(s, 10, 64)
    if err != nil {
        panic(fmt.Sprintf("Try parse \"%s\" in int64", s))
    }
    return res
}

func Round(x float64) float64 {
    return math.Ceil(x * 100) / 100
}

var lastId int64 = -1

func GenerateId() int64 {
    lastId++
    return lastId
}

func GenerateSID() string {
    u4, _ := uuid.NewV4()
    return u4.String()
}

func IsDiceDesc(dice string) bool {
    d := strings.Split(dice, "d")
    if strings.Index(dice, "d") == -1 || len(d) != 2 {
        return false
    }
    _, err1   := strconv.Atoi(d[0])
    _, err2 := strconv.Atoi(d[1])
    return err1 == nil && err2 == nil
}
