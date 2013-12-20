haxe-swc-from-as3-test
======================

Testing generation and usage of Haxe3 SWC (properties, overriding, hiding, etc.). 
For a quick overview of the issue [http://pastebin.com/bFHb8MqQ](http://pastebin.com/bFHb8MqQ).

Launching `run.bat` will:

 - Clear output folders
 - Build Haxe version
 - Run Haxe version
 - Build SWC
 - Build AS3 version with SWC
 - Run AS3 version

All should work correctly except the last step (`VerifyError: Error #1053: Illegal override of width in mylib.MyObject.`).

I'm trying to find a workaround for that (actually I've found out it's possible to use @:isVar and get rid of @:getter/setter, but
then the get_??? and set_??? will not be hidden).
 
**Note:** `mxmlc` and `haxe` must be in the path. Only tested on Win (7).