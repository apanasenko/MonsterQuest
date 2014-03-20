define(function(){
   function Point(x, y) {
      this.x = x;
      this.y = y;
   }

   function Player(id) {
      this.id         = id;
      this.pt         = null;
      this.type       = null;
      this.login      = null;
      this.tile       = null;
   }

   Player.prototype.echo = function() {
      alert(this.login);
   }

   Player.prototype.Draw = function(graphic) {
      this.tile = graphic.DrawObj(this.tile, this.pt.x, this.pt.y, 'player')
   }

   Player.prototype.examineSuccess = function(data) {
      this.pt = new Point(data["x"], data["y"]);
      this.type = data["type"];
      this.login = data["login"];
   }

   return Player;
});