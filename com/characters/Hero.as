package  com.characters {
	
	public class Hero {
		
		
		// Global Vars
			var isLeft:Boolean;
			var isRight:Boolean;
			var isUp:Boolean;
			var isDown:Boolean;
		
		//Player
			var hero:Hero;
		
		//Player Movement
			var heroSpeedX:int = 0;
			var heroSpeedY:int = 0;
			var heroMovement:int = 5;
		
		public function Hero() {
			// constructor code
		}
		
		function spawnHero() {
			//Insert Player
			hero = new Hero;
			hero.x = 20;
			hero.y = 200;
			addChild(hero);
			hero.gotoAndStop(1);
		}//<function prepareGame>
		
		function drawHero(){
			// Make Herio Move
			hero.x += heroSpeedX;
			hero.y += heroSpeedY;
			
			// Animate Hero
			if (isLeft == true){
				hero.scaleX = -1;
				hero.gotoAndStop(2);
			}else if (isRight == true) {
				hero.scaleX = 1;
				hero.gotoAndStop(2);
			} else {
				hero.gotoAndStop(1);
			}
			
			// Limit Hero Area 
			if(hero.x < 0){
				hero.x = 0;
			}
			if(hero.x > 550){
				hero.x = 550;
			}
			
			verifyHeroMovement();
			
		}//<function drawFrame>
		
		function verifyHeroMovement(){
			var up:int = 0;
			var down:int = 0;
			var left:int = 0;
			var right:int = 0;
			if(isUp)up = -heroMovement;
			if(isLeft)left = -heroMovement;
			if(isRight)right = heroMovement;
			heroSpeedX = left + right;
			heroSpeedY = up + down;
			
		}//<function varifyPlayerMovement>
		
		function verifyKeysDown(e:KeyboardEvent){
			var key:int = e.keyCode;
			if(key==Keyboard.UP) isUp = true;
			if(key==Keyboard.LEFT) isLeft = true;
			if(key==Keyboard.RIGHT) isRight = true;
		}//<function verifyKeysDown>
		
		function verifyKeysUp(e:KeyboardEvent){
			var key:int = e.keyCode;
			if(key==Keyboard.UP) isUp = false;
			if(key==Keyboard.LEFT) isLeft = false;
			if(key==Keyboard.RIGHT) isRight = false;
		}//<function verifyKeysUP>

	}
	
}
