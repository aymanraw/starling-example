package com.starlingame.utils
{
	import flash.geom.Rectangle;
	
	import starling.animation.Tween;
	import starling.core.Starling;
	import starling.display.DisplayObjectContainer;
	import starling.display.Sprite;

	public class GU{
		
		public static function getMidX(rect:Rectangle = null):Number{
			if (!rect) rect = Starling.current.viewPort;
			return rect.width/2;
		}
		public static function getMidY(rect:Rectangle = null):Number{
			if (!rect) rect = Starling.current.viewPort;
			return rect.height/2;
		}
		
		public static function transition(parent:DisplayObjectContainer, 
										  scene1:Sprite = null, scene2:Sprite = null, 
										  type:String = TransitionType.FADE ):void{
			
			var width:Number = Starling.current.viewPort.width;
			var height:Number = Starling.current.viewPort.height;
			
			if(scene1){
				var tween:Tween = new Tween(scene1, 0.5);
				parent.addChild(scene1);
				tween.onComplete = function():void{
					parent.removeChild(scene1, true);
				}
				
				switch (type) {
					case TransitionType.SLIDE_LEFT:
						tween.moveTo(-scene1.width, scene1.y);
						break;
					
					case TransitionType.SLIDE_RIGHT:
						tween.moveTo(width, scene1.y);
						break;
					
					case TransitionType.SLIDE_UP:
						tween.moveTo(scene1.x, -scene1.height);
						break;
					
					case TransitionType.SLIDE_BOTTOM:
						tween.moveTo(scene1.x, height);
						break;
					
					default:
						tween.fadeTo(0);
					break;
				}
				Starling.juggler.add(tween);
			}
			
			if (scene2) {
				var tween2:Tween = new Tween(scene2, 0.5);
				parent.addChild(scene2);
				
				switch (type) {
					case TransitionType.SLIDE_LEFT:
						scene2.x = width;
						tween2.moveTo(0, scene2.y);
						break;
					
					case TransitionType.SLIDE_RIGHT:
						scene2.x = -scene2.width;
						tween2.moveTo(0, scene2.y);
						break;
					
					case TransitionType.SLIDE_UP:
						scene2.y = height;
						tween2.moveTo(scene2.x, 0);
						break;
					
					case TransitionType.SLIDE_BOTTOM:
						scene2.y = -height;
						tween2.moveTo(scene2.x, 0);
						break;
					
					default:
						scene2.alpha = 0;
						tween2.fadeTo(1);
						break;
				}
				Starling.juggler.add(tween2);
			}
		}
	}
	
	
}

