package ass {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	
	public class Bullet extends MovieClip {
		
		//火箭移动速度
		var moveSpeed:Number;
		
		//火箭最大移动素的
		var maxMoveSpeed:Number;
		
		//火箭速度增量
		var increment:Number;
		
		
		public function Bullet(x:Number,y:Number,initMoveSpeed:Number,maxMoveSpeed:Number,increment:Number) {
			
			this.x=x;
			this.y=y;
			
			this.moveSpeed=initMoveSpeed;
			this.maxMoveSpeed=maxMoveSpeed;
			this.increment=increment;
			
			this.addEventListener(Event.ENTER_FRAME,moveBullet);
			
			
		}
		
		//帧频事件方法，使火箭变加速移动
		private function moveBullet(e:Event):void{
			
			this.x+=moveSpeed;
			
			if(increment>0){
				if(moveSpeed<maxMoveSpeed)
					moveSpeed+=increment;
			}
			if(increment<0){
				if(moveSpeed>maxMoveSpeed)
					moveSpeed+=increment;
			}
			
		}
		
	}
	
}
