package 
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import mylib.MyObject;
	
	public class Main extends Sprite 
	{
		public static var myObj:MyObject;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			main();
		}
		
		public static function main():void 
		{
			var mc:MovieClip = new MovieClip();
			haxe.initSwc(mc);
			
			trace("main()");
			
			myObj = new MyObject();
			myObj.width = 40;
			
			if (myObj.width == 40) trace("OK");
			else throw "FAIL";
		}
		
	}
	
}