package ;
import mylib.MyObject;


class Main 
{
	public static var myObj:MyObject;
	
	static function main() 
	{
		trace("main()");
		
		myObj = new MyObject();
		myObj.width = 40;
		
		if (myObj.width == 40) trace("OK");
		else throw "FAIL";
	}
	
}