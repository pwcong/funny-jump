package ass {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class SimpleBoard extends MovieClip {
		
		
		var hit:Boolean;
		var moveSpeed:Number;
		
		public var hitted:Boolean=false;
		var hittedFlag:Boolean=true;
		
		public var score:Number;
		public var hitTimes:int;
		
		
		public function SimpleBoard() {
			hit=true;
			moveSpeed=2;
			score=1;
			
			this.addEventListener(Event.ENTER_FRAME,moveBoard);
		}
		
		public function canBeHit(){
			return hit;
		}
		
		protected function moveBoard(e:Event):void{
			
			this.x-=moveSpeed;
			
		}
		
		
	}
	
}
