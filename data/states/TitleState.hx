var introSkip:Bool = false;
var logo:FlxSprite;
var fall:FlxSprite;
var bg:FlxSprite;
var bf:FlxSprite;
var gf:FlxSprite;

function postCreate(){
  remove(titleText);
  bg = new FlxSprite(0,0);
  bg.frames = Paths.getSparrowAtlas('menus/titlescreen/bgBounceTitle');
  bg.antialiasing = true;

  bg.animation.addByPrefix('bounce left', 'bounceLeft instance', 24);
  bg.animation.addByPrefix('bounce right', 'bounceRight instance', 24);
  



  logo = new FlxSprite(190,0);
  logo.frames = Paths.getSparrowAtlas('menus/titlescreen/logo');
  logo.antialiasing = true;

  logo.animation.addByPrefix('logo', 'logo bumpin instance', 24);
  
  //logo.scale.set(0.7,0.7);
  //FlxTween.angle(logo, -10, 10, 5,{ type: FlxTween.PINGPONG, ease: FlxEase.sineInOut});

  oswald = new FlxSprite(30,90);
  oswald.frames = Paths.getSparrowAtlas('menus/titlescreen/osBounceTitle');
  oswald.antialiasing = true;

  oswald.animation.addByPrefix('os', 'Oswald_Bop F instance', 24);
  
  //oswald.scale.set(0.7,0.7);

  logo.animation.play('logo');
  oswald.animation.play('os');
}


function postUpdate() {
  if (!introSkip &&(curBeat >= 16 || FlxG.keys.justPressed.ENTER)) {
      add(bg);
      add(oswald);
      add(logo);
      add(titleText);
      introSkip = true;
      }

  }

  function  beatHit(curBeat){

    danceLeft = !danceLeft;
  
    if (danceLeft){
          bg.animation.play('bounce right');
    }
    else
          bg.animation.play('bounce left');
  }