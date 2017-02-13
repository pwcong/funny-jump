package ass {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class BaseEnemy extends MovieClip {
		
		//血量
		public var blood:int;
		
		//移动速度
		public var moveSpeed:Number;
		
		//怪物对应的分数
		public var score:Number;
		
		public function BaseEnemy() {
			
			blood=1;
			moveSpeed=1;
			score=1;
			
			this.addEventListener(Event.ENTER_FRAME,moveEnemy);
			
		}
		
		//怪物移动方法
		protected function moveEnemy(e:Event):void{
			this.x-=moveSpeed;
		}
		
	}
	
}
