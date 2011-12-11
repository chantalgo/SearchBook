package
{
	import flash.display.Sprite;
	
	import mx.core.UIComponent;

	public class RectangleDrawer extends UIComponent
	{	
		public function RectangleDrawer(refX:int, refY:int, height:int, width:int)
		{
//			var refX:int = 100;
//			var refY:int = 100;
//			
//			var height:int = 85;
//			var width:int = 150;
			
				var square:Sprite= new Sprite;
				square.graphics.lineStyle(3, 0x000000, 1);
				square.graphics.beginFill(0x555555, 1);
				square.graphics.drawRect(refX-width/2, refY-height/2, width, height);
				square.graphics.endFill();
				this.addChild(square);
		}
	}
}