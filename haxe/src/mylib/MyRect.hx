package mylib;
import flash.geom.Rectangle;


class MyRect
{
	
	public function new() 
	{
		rect = new Rectangle(0, 0, 20, 30);
	}
	
	#if swc @:extern #end
	public var width(get, set):Int;

	#if swc @:getter(width) #end
	private function get_width() { return Std.int(rect.width); }

	#if swc @:setter(width) #end
	private function set_width(value:Int):Int { throw "Cannot modify this property!"; return 0; }
	
	private var rect:Rectangle;
}