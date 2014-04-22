define(['actor_rpg', 'global'], function(ActorRPG, GLOBAL){

   function Player(id) {
      ActorRPG.call(this, id, 0, 0, 'Scrawny cat', false, this, {idle: true});
      this.login = null;
   }

   Player.prototype = Object.create(ActorRPG.prototype);
   Player.prototype.constructor = Player;

   Player.prototype.echo = function() {
      alert(this.login);
   }


   Player.prototype.examineSuccess = function(data) {
      this.pt.x = data["x"];
      this.pt.y = data["y"];
      this.type = data["type"];
      this.login = data["login"];
   }

   return Player;
});