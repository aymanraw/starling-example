package com.starlingame.scenes
{
	import com.starlingame.controllers.ApplicationController;
	import com.starlingame.utils.*;
	
	import starling.core.Starling;
	import starling.display.Button;
	import starling.display.MovieClip;
	import starling.display.Quad;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.text.TextField;
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;
	import starling.utils.Color;
	
	public class PlayScene extends Sprite
	{
		public function PlayScene()
		{
			super();
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event):void{
			
			var quad:Quad = new Quad(Starling.current.viewPort.width, Starling.current.viewPort.height, Color.AQUA);
			addChild(quad);
			
			var texture1:Texture = ApplicationController.assets.getTexture("BTN");
			var texture2:Texture = ApplicationController.assets.getTexture("BTN_OVER");
			var button:Button = new Button(texture1, "Back2", texture2);
			
			button.x = 20;
			button.y = 20;
			button.fontBold = true;
			button.fontSize = 16;
			button.addEventListener(Event.TRIGGERED, playGame);
			addChild(button);
			
			var ta:TextureAtlas = ApplicationController.assets.getTextureAtlas("jughead");
			var mc:MovieClip = new MovieClip(ta.getTextures("jughead_walking"), 19);
			mc.x = GU.getMidX();
			mc.y = GU.getMidY();
			mc.name = "jughead";
			addChild(mc);
			
	
			Starling.juggler.add(mc);
			
		}
		
		override public function dispose():void{
			this.getChildByName("jughead").dispose();
			super.dispose();
		}
		
		private function playGame(e:Event):void{
			GU.transition(this.parent, this,new MenuScene(), TransitionType.SLIDE_RIGHT);
		}
		
		
	}
}