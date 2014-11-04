package com.starlingame.utils
{
	/*
	application/octet-stream
	application/x-font
	application/x-font-truetype
	application/x-shockwave-flash
	audio/mpeg
	image/gif
	image/jpeg
	image/png
	image/svg
	image/svg-xml
	*/
	
	public class Assets
	{
		
		
		[Embed(source ="../assets/images/btn.png", mimeType="image/png")]
		public static const BTN:Class;
		
		[Embed(source ="../assets/images/btn-over.png", mimeType="image/png")]
		public static const BTN_OVER:Class
		
		[Embed(source="../assets/sprites/jughead.xml", mimeType="application/octet-stream")]
		public static const JUGHEAD_XML:Class;
		
		[Embed(source ="../assets/sprites/jughead.png")]
		public static const jughead:Class;
		
		
		
		public function Assets()
		{
			
		}
	}
}