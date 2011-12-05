package
{
	import flash.display.Sprite;
	
	import mx.core.UIComponent;
	
	public class CircleDrawer extends UIComponent
	{
		public function CircleDrawer()
		{
			var circle:Sprite= new Sprite;
			circle.graphics.lineStyle(3, 0x000000, 1);
			circle.graphics.beginFill(0x555555, 1);
			circle.graphics.drawCircle(200, 200, 200);
			circle.graphics.endFill();
			this.addChild(circle);
		}
	}
}