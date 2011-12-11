package
{
	import flash.events.MouseEvent;
	import flash.net.URLRequest;
	import flash.net.navigateToURL;
	import flash.text.TextFormat;
	import flash.text.TextFormatAlign;
	
	import mx.graphics.SolidColor;
	import mx.managers.ToolTipManager;
	
	import spark.components.HGroup;
	import spark.components.Image;
	import spark.components.Label;
	import spark.components.SkinnableContainer;
	import spark.effects.Fade;
	import spark.layouts.VerticalLayout;
	import spark.layouts.supportClasses.LayoutBase;
	import spark.primitives.Rect;
	
	public class InformationDisplay extends SkinnableContainer
	{
		var resultPicture:Image;
		var resultName:String;
		var resultURL:String;
		var nameLabel:Label;
		
		public function InformationDisplay(name:String, url:String,  picture:String, toolTipString:String)
		{
			this.setStyle("backgroundColor", "0x5D81F6");
			
			var vLayout:VerticalLayout = new VerticalLayout
			vLayout.horizontalAlign ="center";
			this.layout =vLayout;
			
			resultPicture = new Image;
			resultName = name;
			if (resultName.length > 22)
				resultName = resultName.slice(0, 19) + "...";
			
			resultURL = url;
			
			resultPicture.source = picture;
			
			
			nameLabel = new Label;
			nameLabel.width = 80;
			nameLabel.setStyle("textAlign", "center");
			nameLabel.text = resultName;
			
			this.addElement(resultPicture);
			
			this.addElement(nameLabel);
			this.addEventListener(MouseEvent.CLICK, InformationClick);
			
			var fadeIn:Fade = new Fade();
			fadeIn.alphaFrom = 0;
			fadeIn.alphaTo = 1;
			fadeIn.duration = 1000;
			ToolTipManager.showDelay = 0;
			ToolTipManager.showEffect = fadeIn;
			this.toolTip=toolTipString;
			this.addEventListener(MouseEvent.MOUSE_OVER, mouseOverFunction);
			this.addEventListener(MouseEvent.MOUSE_OUT, mouseOutFunction);
			
			
			
		}
		
		public function InformationClick(event:MouseEvent):void{
			navigateToURL(new URLRequest(resultURL));
		}
		public function mouseOverFunction(event:MouseEvent):void{
			this.setStyle("backgroundColor", "0x000000");
			nameLabel.setStyle("color", "0xFFFFFF");
		}
		public function mouseOutFunction(event:MouseEvent):void{
			this.setStyle("backgroundColor", "0x5D81F6");
			nameLabel.setStyle("color", "0x000000");
		}
		
		
		
	}
}