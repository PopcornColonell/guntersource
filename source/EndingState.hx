package;
import flixel.*;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;

/**
 * ...
 * @author bbpanzu
 */
class EndingState extends FlxState
{

	var _goodEnding:Bool = false;
	
	public function new(goodEnding:Bool = true) 
	{
		super();
		_goodEnding = goodEnding;
		
	}
	
	override public function create():Void 
	{
		trace(PlayState.storyWeek);
		super.create();	
		var end:FlxSprite = new FlxSprite(0, 0);	
		if (PlayState.storyWeek == 0)
			{
			FlxG.camera.fade(FlxColor.BLACK, 0.8, true);
					
			end.frames = Paths.getSparrowAtlas('Endcard final');
			end.antialiasing = true;
			end.screenCenter();
			end.animation.addByPrefix('End', 'Endcard', 24, true);
			add(end);
			end.animation.play('End');
			}
		else
			endIt();
	}
	
	override public function update(elapsed:Float):Void 
	{
		super.update(elapsed);
		
		if (FlxG.keys.pressed.ENTER){
			endIt();
			FlxG.sound.playMusic(Paths.music('freakyMenu'));
		}
		
	}
	
	
	public function endIt(e:FlxTimer=null){
		trace("ENDING");
		FlxG.switchState(new StoryMenuState());
	}
	
}