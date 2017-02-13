package ass {
	
	import ass.BaseEnemy;
	import flash.events.Event;
	
	
	public class LowEnemy extends BaseEnemy {
		
		
		var rot:Number;
		
		
		public function LowEnemy() {
			blood=2;
			moveSpeed=1;
			score=2;
			
			rot=Math.round(Math.random()*360);
			
		}
		
		
		//重写帧频事件方法，增加其移动方式为上下移动
		override protected function moveEnemy(e:Event):void{
			this.x-=moveSpeed;
			
			this.y+=Math.sin(rot *  Math.PI  / 180)*5;   
			rot+=5;
			
		}
	}
	
}
