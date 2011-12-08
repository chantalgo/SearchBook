package
{
	import mx.core.UIComponent;
	import flash.display.Sprite;

	public class RectangleDrawer extends UIComponent
	{	
		public function RectangleDrawer()
		{
			var refX:int = 200;
			var refY:int = 200;
			
				var square:Sprite= new Sprite;
				square.graphics.lineStyle(3, 0x000000, 1);
				square.graphics.beginFill(0x555555, 1);
				square.graphics.drawRect(refX, refY, 100, 50);
				square.graphics.endFill();
				this.addChild(square);
		}
	}
}