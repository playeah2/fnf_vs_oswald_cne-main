function create() { 
    if (FlxG.save.data.Language == 0){
            game.startCutscene("dialogue/english/", function(){
                close();
            });
    
    };

    if (FlxG.save.data.Language == 1){
        game.startCutscene("dialogue/french/", function(){
            close();
        });
    }
}