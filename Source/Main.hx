package;
import openfl.utils.Timer;
import openfl.display.Sprite;
import openfl.text.Font;
import openfl.text.TextField;
import openfl.text.TextFormat;
import openfl.events.Event;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;
import openfl.Assets;
import openfl.media.Sound;
import openfl.media.SoundChannel;
//import Random;

class Main extends Sprite
{
	private var bkg:Sprite = new Sprite();
  private var _text:TextField;
  private var lifetext:TextField;
	private var textscore:TextField;
	private var timertext:TextField;
	private var gameovertext:TextField;
  private var _circle:Sprite;
	private var timer =new Timer(100);
	private var BG = new Bitmap(Assets.getBitmapData("assets/BG.jpg"));
	private var heartbitmap = new Bitmap(Assets.getBitmapData("assets/heart.png"));
	private var isibitmap1 = new Bitmap(Assets.getBitmapData("assets/isi.png"));
	private var isibitmap2 = new Bitmap(Assets.getBitmapData("assets/isi.png"));
	private var isibitmap3 = new Bitmap(Assets.getBitmapData("assets/isi.png"));
	private var isibitmap4 = new Bitmap(Assets.getBitmapData("assets/isi.png"));
	private var isibitmap5 = new Bitmap(Assets.getBitmapData("assets/isi.png"));
	private var isibitmap6 = new Bitmap(Assets.getBitmapData("assets/isi.png"));
	private var isibitmap7 = new Bitmap(Assets.getBitmapData("assets/isi.png"));
	private var isibitmap8 = new Bitmap(Assets.getBitmapData("assets/isi.png"));
	private var bitmap1 = new Bitmap(Assets.getBitmapData("assets/ob.png"));
	private var bitmap2 = new Bitmap(Assets.getBitmapData("assets/ob.png"));
	private var bitmap3 = new Bitmap(Assets.getBitmapData("assets/ob.png"));
	private var bitmap4 = new Bitmap(Assets.getBitmapData("assets/ob.png"));
	private var bitmap5 = new Bitmap(Assets.getBitmapData("assets/ob.png"));
	private var bitmap6 = new Bitmap(Assets.getBitmapData("assets/ob.png"));
	private var chara = new Bitmap(Assets.getBitmapData("assets/jizou.png"));
	private var chara2 = new Bitmap(Assets.getBitmapData("assets/jizou.png"));
	private var timer2:Int;
	private var time3:Float;
	private var score:Int;
	private var life:Int;
	private var isiSound:Sound;
	private var heartSound:Sound;
	private var obSound:Sound;

  public function new()
  {
    super();
		trace("aaaaa");
		life=3;
		score=0;
		timer2=100;
    _text = new TextField();
    lifetext = new TextField();
    timertext = new TextField();
    gameovertext = new TextField();
    _text.defaultTextFormat = new TextFormat ("Times", 30, 0x202020);
    lifetext.defaultTextFormat = new TextFormat ("Times", 30, 0x202020);
    timertext.defaultTextFormat = new TextFormat ("Times", 30, 0x202020);
    gameovertext.defaultTextFormat = new TextFormat ("Times", 60, 0x202020);
		isiSound = Assets.getSound("assets/isi.ogg");
		heartSound = Assets.getSound("assets/heart.ogg");
		obSound = Assets.getSound("assets/ob.ogg");
		//var channel:SoundChannel = bgm_play(0,9999);
		
		bkg.graphics.beginFill(0xffffff,1);
		bkg.graphics.drawRect(0,0,768,1280);
		bkg.graphics.endFill();
//    textField.defaultTextFormat = new TextFormat ("Katamotz Ikasi", 30, 0x202020);
    _text.x = 50;
    _text.y = 50;
    _text.width = 350;
		_text.textColor=0x00ffff;
		lifetext.x= 50;
		lifetext.y=100;
		lifetext.width=350;
		lifetext.textColor=0xff0000	;
		timertext.x= 50;
		timertext.y=150;
		timertext.width=350;
		timertext.textColor=0x000000;
		gameovertext.x= 150;
		gameovertext.y=150;
		gameovertext.width=350;
		chara2.x=100;
		chara2.y=100;
		//gameovertext.textColor=0x00FFFF;
		//_text.text=Std.int(y);
//  _text.text = "Hello, Haxe and OpenFL!";
/*		textField.x=330;
		textField.y=330;
		textField.width=930;
		textField.text= "sssssssssssssss";
		*/
		addChild(bkg);
		addChild(BG);
    addChild (heartbitmap);
    addChild (isibitmap1);
    addChild (isibitmap2);
    addChild (isibitmap3);
    addChild (isibitmap4);
    addChild (isibitmap5);
    addChild (isibitmap6);
    addChild (isibitmap7);
    addChild (isibitmap8);
    addChild (bitmap1);
    addChild (bitmap2);
    addChild (bitmap3);
    addChild (bitmap4);
    addChild (bitmap5);
    addChild (bitmap6);
    addChild (chara);
		addChild(chara2);
		addChild(_text);
		addChild(lifetext);
		addChild(timertext);

		isibitmap1.y=200;
		isibitmap1.x=200;
		isibitmap2.y=150;
		isibitmap2.x=150;
		isibitmap3.y=300;
		isibitmap3.x=300;
		isibitmap4.y=250;
		isibitmap4.x=250;
		isibitmap5.y=300;
		isibitmap5.x=300;
		isibitmap6.y=450;
		isibitmap6.x=450;
		isibitmap7.y=500;
		isibitmap7.x=500;
		isibitmap8.y=550;
		isibitmap8.x=550;
		heartbitmap.y=50;
		heartbitmap.x=50;
		bitmap1.y=100;
		bitmap2.y=200;
		bitmap3.y=200;
		bitmap4.y=100;
		bitmap5.y=200;
		bitmap6.y=200;
		bitmap1.x=100;
		bitmap2.x=200;
		bitmap3.x=300;
		bitmap4.x=400;
		bitmap5.x=500;
		bitmap6.x=600;

    this.addEventListener(Event.ENTER_FRAME, loop);
  }

  private function loop(e:Event)
  { chara.y=mouseY;
    _text.text = "Score " + score;
    lifetext.text  = "Life " + life;
		time3 = (timer2/100);
		timertext.text= "Time " + time3;
		gameovertext.text="GAME OVER";
		timer2 = timer2+1;
		chara.x=mouseX;
		isibitmap1.y+=10;
		isibitmap2.y+=5;
		isibitmap3.y+=10;
		isibitmap4.y+=5;
		isibitmap5.y+=10;
		isibitmap6.y+=5;
		isibitmap7.y+=10;
		isibitmap8.y+=5;
		heartbitmap.y+=15;
    bitmap1.y += 10;
    bitmap2.y += 10;
    bitmap3.y += 10;
    bitmap4.y += 10;
    bitmap5.y += 10;
    bitmap6.y += 10;
	  if (isibitmap1.hitTestPoint(chara.x,chara.y,true)){
			isibitmap1.y = 0;
			isibitmap1.x =(Math.random()*768);
			life = life - 1;
			isiSound.play(0);
	}
	  if (isibitmap2.hitTestPoint(chara.x,chara.y,true)){
			isibitmap2.y = 0;
			isibitmap2.x =(Math.random()*768);
			life = life - 1;
			isiSound.play(0);
	}
	  if (isibitmap3.hitTestPoint(chara.x,chara.y,true)){
			isibitmap3.y = 0;
			isibitmap3.x =(Math.random()*768);
			life = life - 1;
			isiSound.play(0);
	}
	  if (isibitmap4.hitTestPoint(chara.x,chara.y,true)){
			isibitmap4.y = 0;
			isibitmap4.x =(Math.random()*768);
			life = life - 1;
			isiSound.play(0);
	}
	  if (isibitmap5.hitTestPoint(chara.x,chara.y,true)){
			isibitmap5.y = 0;
			isibitmap5.x =(Math.random()*768);
			life = life - 1;
			isiSound.play(0);
	}
	  if (isibitmap6.hitTestPoint(chara.x,chara.y,true)){
			isibitmap6.y = 0;
			isibitmap6.x =(Math.random()*768);
			life = life - 1;
			isiSound.play(0);
	}
	  if (isibitmap7.hitTestPoint(chara.x,chara.y,true)){
			isibitmap7.y = 0;
			isibitmap7.x =(Math.random()*768);
			life = life - 1;
			isiSound.play(0);
	}
	  if (isibitmap8.hitTestPoint(chara.x,chara.y,true)){
			isibitmap8.y = 0;
			isibitmap8.x =(Math.random()*768);
			life = life - 1;
			isiSound.play(0);
	}
	  if (heartbitmap.hitTestPoint(chara.x,chara.y,false)){
			heartbitmap.y = 0;
			heartbitmap.x =(Math.random()*768);
			life = life + 1;
			heartSound.play(0);
	}
	  if (bitmap1.hitTestPoint(chara.x,chara.y,true)){
			bitmap1.y = 0;
			bitmap1.x =(Math.random()*768);
			score = score + 1;
			obSound.play(0);
	}
	  if (bitmap2.hitTestPoint(chara.x,chara.y,true)){
			bitmap2.y = 0;
			bitmap2.x =(Math.random()*768);
			score = score + 1;
			obSound.play(0);
		}
	  if (bitmap3.hitTestPoint(chara.x,chara.y,true)){
			bitmap3.y = 0;
			bitmap3.x =(Math.random()*768);
			score = score + 1;
			obSound.play(0);
		}
	  if (bitmap4.hitTestPoint(chara.x,chara.y,true)){
			bitmap4.y = 0;
			bitmap4.x =(Math.random()*768);
			score = score + 1;
			obSound.play(0);
		}
	  if (bitmap5.hitTestPoint(chara.x,chara.y,true)){
			bitmap5.y = 0;
			bitmap5.x =(Math.random()*768);
			score = score + 1;
			obSound.play(0);
		}
	  if (bitmap6.hitTestPoint(chara.x,chara.y,true)){
			bitmap6.y = 0;
			bitmap6.x =(Math.random()*768);
			score = score + 1;
			obSound.play(0);
		}
		if (isibitmap1.y >= 1280){
			isibitmap1.y = 0;
			isibitmap1.x =(Math.random()*768);
		}
		if (isibitmap2.y >= 1280){
			isibitmap2.y = 0;
			isibitmap2.x =(Math.random()*768);
		}
		if (isibitmap3.y >= 1280){
			isibitmap3.y = 0;
			isibitmap3.x =(Math.random()*768);
		}
		if (isibitmap4.y >= 1280){
			isibitmap4.y = 0;
			isibitmap4.x =(Math.random()*768);
		}
		if (isibitmap5.y >= 1280){
			isibitmap5.y = 0;
			isibitmap5.x =(Math.random()*768);
		}
		if (isibitmap6.y >= 1280){
			isibitmap6.y = 0;
			isibitmap6.x =(Math.random()*768);
		}
		if (isibitmap7.y >= 1280){
			isibitmap7.y = 0;
			isibitmap7.x =(Math.random()*768);
		}
		if (isibitmap8.y >= 1280){
			isibitmap8.y = 0;
			isibitmap8.x =(Math.random()*768);
		}
		if (heartbitmap.y >= 1280){
			heartbitmap.y = 0;
			heartbitmap.x =(Math.random()*768);
		}
		if (bitmap1.y >= 1280){
			bitmap1.y = 0;
			bitmap1.x =(Math.random()*768);
		}
		if (bitmap2.y >= 1280){
			bitmap2.y = 0;
			bitmap2.x =(Math.random()*768);
		}
		if (bitmap3.y >= 1280){
			bitmap3.y = 0;
			bitmap3.x =(Math.random()*768);
		}
		if (bitmap4.y >= 1280){
			bitmap4.y = 0;
			bitmap4.x =(Math.random()*768);
		}
		if (bitmap5.y >= 1280){
			bitmap5.y = 0;
			bitmap5.x =(Math.random()*768);
		}
		if (bitmap6.y >= 1280){
			bitmap6.y = 0;
			bitmap6.x =(Math.random()*768);
		}
		if (life==0){
						trace("hello");
    removeChild (heartbitmap);
    removeChild (isibitmap1);
    removeChild (isibitmap2);
    removeChild (isibitmap3);
    removeChild (isibitmap4);
    removeChild (isibitmap5);
    removeChild (isibitmap6);
    removeChild (isibitmap7);
    removeChild (isibitmap8);
    removeChild (bitmap1);
    removeChild (bitmap2);
    removeChild (bitmap3);
    removeChild (bitmap4);
    removeChild (bitmap5);
    removeChild (bitmap6);
		addChild(chara2);
		chara2.scaleY = score;
		chara2.scaleX = score;
	//	removeChild(_text);
//	removeChild(lifetext);
    removeChild (chara);
    removeChild (BG);
		removeChild(timertext);
						addChild(gameovertext);
						
		}
		if (time3==30.00){
    removeChild (heartbitmap);
    removeChild (isibitmap1);
    removeChild (isibitmap2);
    removeChild (isibitmap3);
    removeChild (isibitmap4);
    removeChild (isibitmap5);
    removeChild (isibitmap6);
    removeChild (isibitmap7);
    removeChild (isibitmap8);
    removeChild (bitmap1);
    removeChild (bitmap2);
    removeChild (bitmap3);
    removeChild (bitmap4);
    removeChild (bitmap5);
    removeChild (bitmap6);
    removeChild (BG);
		chara2.scaleY = score;
		chara2.scaleX = score;
    removeChild (chara);
		addChild(chara2);
//		removeChild(_text);
//removeChild(lifetext);
		removeChild(timertext);
						addChild(gameovertext);
		}
}
}
