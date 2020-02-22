package;


import haxe.io.Bytes;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

		}

		if (rootPath == null) {

			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif console
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		
		#end

		var data, manifest, library, bundle;

		#if kha

		null
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("null", library);

		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("null");

		#else

		data = '{"name":null,"assets":"aoy4:pathy16:assets%2Fisi.pngy4:sizei827y4:typey5:IMAGEy2:idR1y7:preloadtgoR2i15880R3y5:SOUNDR5y19:assets%2Fdamage.wavy9:pathGroupaR8hR6tgoR0y15:assets%2Fob.pngR2i931R3R4R5R10R6tgoR0y23:assets%2Fheart.png.backR2i570R3y6:BINARYR5R11R6tgoR2i18287R3R7R5y16:assets%2Fisi.oggR9aR13hR6tgoR0y18:assets%2Fjizou.pngR2i1588R3R4R5R14R6tgoR2i26933R3R7R5y15:assets%2Fob.oggR9aR15hR6tgoR2i37813R3R7R5y18:assets%2Fheart.oggR9aR16hR6tgoR0y15:assets%2FBG.jpgR2i8727R3R4R5R17R6tgoR0y18:assets%2Fheart.pngR2i1156R3R4R5R18R6tgoR0y19:assets%2Fheart2.pngR2i472R3R4R5R19R6tgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

		#end

	}


}


#if kha

null

#else

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_isi_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_damage_wav extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_ob_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_heart_png_back extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_isi_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_jizou_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_ob_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_heart_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_bg_jpg extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_heart_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_heart2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:image("Assets/isi.png") @:noCompletion #if display private #end class __ASSET__assets_isi_png extends lime.graphics.Image {}
@:keep @:file("Assets/damage.wav") @:noCompletion #if display private #end class __ASSET__assets_damage_wav extends haxe.io.Bytes {}
@:keep @:image("Assets/ob.png") @:noCompletion #if display private #end class __ASSET__assets_ob_png extends lime.graphics.Image {}
@:keep @:file("Assets/heart.png.back") @:noCompletion #if display private #end class __ASSET__assets_heart_png_back extends haxe.io.Bytes {}
@:keep @:file("Assets/isi.ogg") @:noCompletion #if display private #end class __ASSET__assets_isi_ogg extends haxe.io.Bytes {}
@:keep @:image("Assets/jizou.png") @:noCompletion #if display private #end class __ASSET__assets_jizou_png extends lime.graphics.Image {}
@:keep @:file("Assets/ob.ogg") @:noCompletion #if display private #end class __ASSET__assets_ob_ogg extends haxe.io.Bytes {}
@:keep @:file("Assets/heart.ogg") @:noCompletion #if display private #end class __ASSET__assets_heart_ogg extends haxe.io.Bytes {}
@:keep @:image("Assets/BG.jpg") @:noCompletion #if display private #end class __ASSET__assets_bg_jpg extends lime.graphics.Image {}
@:keep @:image("Assets/heart.png") @:noCompletion #if display private #end class __ASSET__assets_heart_png extends lime.graphics.Image {}
@:keep @:image("Assets/heart2.png") @:noCompletion #if display private #end class __ASSET__assets_heart2_png extends lime.graphics.Image {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else



#end

#if (openfl && !flash)

#if html5

#else

#end

#end
#end

#end
