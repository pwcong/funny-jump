package ass {
	
	import ass.SimpleBoard;
	import flash.events.Event;
	
	public class FakeBoard extends SimpleBoard {
		
		
		public function FakeBoard() {
			hit=false;
			moveSpeed=2;
			score=0;
			
		}
		
		//因继承父类SimpleBoard，重写帧频事件方法
		override protected function moveBoard(e:Event):void{
			
			this.x-=moveSpeed;
			
			//若跳板标记为已被碰撞，使跳板从第二帧播放动画
			if(hitted&&hittedFlag){
			
				this.gotoAndPlay(2);
				hittedFlag=false;
			
			}
			
			//若跳板当前帧为最后一帧，使跳板变为透明
			if(this.currentFrame==this.totalFrames){
				this.alpha=0;
			}
			
		}
		
	}
	
}
