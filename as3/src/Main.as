package 
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.system.System;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
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
			stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
			
			// entry point
			main();
		}
		
		public function main():void 
		{
			var mc:MovieClip = new MovieClip();
			haxe.initSwc(mc);
			
			MyObject.drawRect(graphics, 5, 100, 100, 70);
			var textField:TextField = new TextField();
			textField.autoSize = TextFieldAutoSize.LEFT;
			addChild(textField);
			var fmt:TextFormat = new TextFormat("_sans");
			textField.setTextFormat(fmt);
			textField.defaultTextFormat = fmt;
			
			textField.appendText("main()\n");
			
			myObj = new MyObject();
			myObj.width = 40;
			textField.appendText("update(): width = " + myObj.width + "\n");
			
			if (myObj.width == 40) textField.appendText("OK");
			else textField.appendText("FAIL");
		}
		
		public function onKeyDown(e:KeyboardEvent):void 
		{
			trace("here");
			if (e.keyCode == 27) {
				System.exit(0);
			}
		}
	}
	
}