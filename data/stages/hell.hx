function postCreate(){
    boyfriend.setPosition(1400, 200);
    dad.setPosition(800, 200);
}

function create(){
    defaultCamZoom = 0.8;
    remove(boyfriend);
    remove(dad);
    remove(gf);

    bg1 = new FlxSprite(0, 0).loadGraphic(Paths.image("stages/hell/SomewhereBG_N"));
    bg1.antialiasing = true;
    bg1.visible = false;

    bg2 = new FlxSprite(0, 0).loadGraphic(Paths.image("stages/hell/SomewhereBG_C"));
    bg2.antialiasing = true;
    bg2.visible = false;

    hand = new FlxSprite(600, 100);
	hand.frames = Paths.getSparrowAtlas("stages/hell/Handsies");
	hand.animation.addByPrefix("idle", "Handies", 24, false);
	hand.scrollFactor.set(1, 1);
	

    add(bg2);
    add(bg1);
    add(boyfriend);
    add(dad);
    add(hand);
    dad.visible = false;
    boyfriend.alpha = 0;
    camHUD.alpha = 0;
}

function stepHit(curStep:Int){
    switch (curStep){
        case 0:
            FlxTween.tween(boyfriend, {alpha: 1 }, 0.4,{ease: FlxEase.sineInOut});
            FlxTween.tween(camHUD, {alpha: 1 }, 0.4,{ease: FlxEase.sineInOut});
        case 30:
            dad.visible = true;
            bg1.visible = true;
        case 837:
            bg1.destroy();
            bg2.visible = true;
        case 989:
            hand.animation.play("idle");
            
        case 1000:
            remove(hand);
            dad.visible = false;
            bg2.visible = false;
            boyfriend.visible = false;
            //bg1.visible = false;
            camHUD.visible = false;
        case 1031:
            dad.visible = true;
            bg2.visible = true;
            boyfriend.visible = true;
            //bg1.visible = false;
    }
}

function shake(time:Int){
    FlxG.camera.shake(0.05, time, null, true, null);
}