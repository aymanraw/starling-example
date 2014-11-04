package com.starlingame.controllers
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
	import com.starlingame.scenes.MenuScene;
	
	public class ApplicationController extends Sprite
	{
		public static var assets:AssetManager;
		
		public function ApplicationController()
		{
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event):void{
			assets = new AssetManager();
			assets.enqueue(Assets);
			assets.verbose = true;
			assets.loadQueue(function(ratio:Number):void{
				trace("Loading assets.. " + ratio);
				if(ratio == 1){
					trace("All Loaded");
					allLoaded();
				}
			});
		}
		
		private function allLoaded():void{
			GU.transition(this, null,new MenuScene(), TransitionType.FADE);
		}
		
	}
}