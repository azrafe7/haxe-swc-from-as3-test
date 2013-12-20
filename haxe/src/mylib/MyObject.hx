package mylib;


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
	
	public function update():Void 
	{
		trace("update(): width = " + _width);
	}
	
	private var _width:Int = 0;
}