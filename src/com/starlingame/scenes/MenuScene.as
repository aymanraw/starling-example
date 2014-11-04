package com.starlingame.scenes
{	
	import com.starlingame.utils.Assets;
	import com.starlingame.utils.GU;
	import com.starlingame.utils.TransitionType;
	
	import flash.geom.Rectangle;
	
	import starling.core.RenderSupport;
	import starling.core.Starling;
	import starling.display.Button;
	import starling.display.Quad;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.text.TextField;
	import starling.textures.Texture;
	import starling.utils.AssetManager;
	import starling.utils.Color;
	import com.starlingame.controllers.ApplicationController;
	
	public class MenuScene extends Sprite
	{
		
		public function MenuScene()
		{
			addEventListener(Event.ADDED_TO_STAGE, init);
			
		}
		private function init(e:Event):void{
			var texture1:Texture = ApplicationController.assets.getTexture("BTN");
			var texture2:Texture = ApplicationController.assets.getTexture("BTN_OVER");
			
			var quad:Quad = new Quad(Starling.current.viewPort.width, Starling.current.viewPort.height, Color.GRAY);
			addChild(quad);
			
			var button:Button = new Button(texture1, "Play", texture2);
			button.alignPivot();
			button.x = GU.getMidX();
			button.y = GU.getMidY();
			button.fontBold = true;
			button.fontSize = 16;
			button.addEventListener(Event.TRIGGERED, playGame);
			addChild(button);
			
			var text:TextField = new TextField(200, 50, "Hello Starling");
			text.color = 0xffffff;
			addChild(text);
		}
		
		
		private function playGame(e:Event):void{
			GU.transition(this.parent, this,new PlayScene(), TransitionType.SLIDE_LEFT);
		}
		
		
	}
}