package
{
	import flash.events.MouseEvent;
	import flash.net.URLRequest;
	import flash.net.navigateToURL;
	import flash.text.TextFormat;
	
	import mx.graphics.SolidColor;
	import mx.managers.ToolTipManager;
	
	import spark.components.HGroup;
	import spark.components.Image;
	import spark.components.Label;
	import spark.components.SkinnableContainer;
	import spark.effects.Fade;
	import spark.layouts.HorizontalLayout;
	import spark.layouts.supportClasses.LayoutBase;
	import spark.primitives.Rect;

	public class InformationDisplay extends SkinnableContainer
	{
		var resultPicture:Image;
		var resultName:String;
		var resultURL:String;
		
		public function InformationDisplay(name:String, url:String,  picture:String, toolTipString:String)
		{
			this.setStyle("backgroundColor", "0x5D81F6");
			var hLayout:HorizontalLayout = new HorizontalLayout;
			this.layout =hLayout;
			//var horizontalGroup:HGroup= new HGroup;
			resultPicture = new Image;
			resultName = name;
			resultURL = url;
			
			resultPicture.source = picture;
			var nameLabel = new Label;
			nameLabel.width = 100;
			nameLabel.text = resultName;
			//horizontalGroup
			this.addElement(resultPicture);
			//horizontalGroup
			this.addElement(nameLabel);
			this.addEventListener(MouseEvent.CLICK, InformationClick);
			
			var fadeIn:Fade = new Fade();
			fadeIn.alphaFrom = 0;
			fadeIn.alphaTo = 1;
			fadeIn.duration = 1000;
            ToolTipManager.showDelay = 0;
			ToolTipManager.showEffect = fadeIn;
			this.toolTip=toolTipString;
			//this.addElement(horizontalGroup);
			
			
			
		}
		
		public function InformationClick(event:MouseEvent):void{
			navigateToURL(new URLRequest(resultURL));
		}

		

}
}