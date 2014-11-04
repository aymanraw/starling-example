package
{
	import com.starlingame.*;
	
	import flash.display.Sprite;
	import flash.geom.Rectangle;
	
	import starling.core.Starling;
	import starling.events.Event;
	import starling.utils.AssetManager;
	import com.starlingame.controllers.ApplicationController;

	[SWF(width="600", height="400", frameRate="24", backgroundColor="0x000000")]
	public class StarlingApp extends Sprite
	{
		public var _starling:Starling;
		
		public function StarlingApp()
		{
			_starling = new Starling(ApplicationController, stage);
			_starling.addEventListener(Event.CONTEXT3D_CREATE, starlingCreated);
			_starling.start();
			
		}
		
		private function starlingCreated(e:Event):void
		{
			
			
		}

		
		
	}
}