package ass {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class Player extends MovieClip {
		//下落速度
		var fallSpeed:Number;
		
		//最小速度
		var minSpeed:Number;
		
		//最大速度
		var maxSpeed:Number;
		
		//速度变化增量
		var speedIncrement:Number;
		
		//下落Flag，决定角色是否可以下落
		var canFall:Boolean=false;
		
		//角色移动速度
		public var moveSpeed:Number;
		
		//角色分数
		public var score:Number;
		
		public function Player(initFallSpeed:Number,maxSpeed:Number,minSpeed:Number,speedIncrement:Number) {
			
			this.fallSpeed=initFallSpeed;
			this.minSpeed=minSpeed;
			this.maxSpeed=maxSpeed;
			this.speedIncrement=speedIncrement;
			
			//trace(initFallSpeed+"***"+maxSpeed+"***"+minSpeed+"***"+speedIncrement);
			
			this.addEventListener(Event.ENTER_FRAME,fallDown);
		}
		
		//帧频事件方法，使角色Y坐标随速度改变
		private function fallDown(e:Event):void{
			
			if(canFall){
				this.y+=fallSpeed
				changeFallSpeed();
			}

			
		}
		
		//改变角色下落的速度
		private function changeFallSpeed(){
			
			if(fallSpeed<maxSpeed)
				fallSpeed+=speedIncrement;
		}
		
		//使角色弹起
		public function rebound(){
			
			fallSpeed=minSpeed;
			
		}
		
		//使角色开始下落
		public function startFallDown(){
			canFall=true;
		}
		
		//使角色停止下落
		public function stopFallDown(){
			canFall=false;
		}
		
		//设置角色下落速度
		public function setSpeed(speed:Number){
			fallSpeed=speed;
		}
		
		//获得角色的下落速度
		public function getSpeed():Number{
			return fallSpeed;
		}
		
		//判断角色是否在下落
		public function isFalling():Boolean{
			if(fallSpeed>=0){
				return true;
			}
			else{
				return false;
			}
		}
		
	}
	
}
