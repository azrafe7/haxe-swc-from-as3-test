package mylib;
import flash.display.Graphics;


class MyObject extends MyRect
{

	public function new() 
	{
		super();
	}
	
	#if swc @:getter(width) #end
	override private function get_width() { return _width; }

	#if swc @:setter(width) #end
	override private function set_width(value:Int):Int { 
		if (_width != value) {
			_width = value;
			update();
		}
		return value;
	}
	
	public function setText(s:String):Void 
	{
		
	}
	
	public function update():Void 
	{
		trace("update(): width = " + _width);
	}
	
	static public function drawRect(g:Graphics, x:Float, y:Float, width:Float, height:Float):Void 
	{
		g.lineStyle(1, 0xff0000);
		g.drawRect(x, y, width, height);
	}
	
	private var _width:Int = 0;
}