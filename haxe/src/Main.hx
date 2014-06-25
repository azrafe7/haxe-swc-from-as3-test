package ;
import mylib.MyObject;
import openfl.display.Sprite;
import openfl.events.KeyboardEvent;
import openfl.system.System;


class Main extends Sprite
{
	public static var myObj:MyObject;
	
	public function new():Void 
	{
		super();
		
		trace("main()");
		
		myObj = new MyObject();
		myObj.width = 40;
		
		if (myObj.width == 40) trace("OK");
		else throw "FAIL";
		
		MyObject.drawRect(graphics, 5, 100, 100, 70);
		
		stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
	}
	
	public function onKeyDown(e:KeyboardEvent):Void 
	{
		if (e.keyCode == 27) {
			System.exit(0);
		}
	}
}