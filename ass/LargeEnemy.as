package ass {
	
	import ass.BaseEnemy;
	import flash.events.Event;
	
	public class LargeEnemy extends BaseEnemy {
		
		
		public function LargeEnemy() {
			blood=5;
			moveSpeed=0.6;
			score=5;
		}
		
		
		//因继承父类BaseEnemy，重写帧频事件方法，使其播放帧随血量改变
		override protected function moveEnemy(e:Event):void{
			
			this.x-=moveSpeed;
			
			this.gotoAndStop(this.totalFrames+1-blood);
			
			
			
		}
	}
	
}
