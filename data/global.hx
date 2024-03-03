import funkin.backend.utils.NativeAPI;
import lime.graphics.Image;

function new(){
    if (FlxG.save.data.Language == null) FlxG.save.data.Language == ;
}

window.title = "FNF VS OSWALD";
window.setIcon(Image.fromBytes(Assets.getBytes(Paths.image('icon'))));
function update(elapsed:Float)
    if (FlxG.keys.justPressed.F5) FlxG.resetState();