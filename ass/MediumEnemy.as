package ass {
	
	import ass.BaseEnemy;
	import flash.events.Event;
	
	public class MediumEnemy extends BaseEnemy {
		
		
		var rot:Number;
		
		public function MediumEnemy() {
			
			blood=3;
			moveSpeed=2;
			score=3;
			
			
			rot=Math.round(Math.random()*360);
			
		}
		
		//重写帧频事件方法，增加其移动方式为上下和左右移动
		override protected function moveEnemy(e:Event):void{
			this.x-=moveSpeed;
			
			this.y+=Math.sin(rot *  Math.PI  / 180)*3;   
			this.x+=Math.cos(rot *  Math.PI  / 180)*3;
			rot+=5;
			
			
			
		}
		
	}
	
}
