package example {
	import org.swiftsuspenders.Injector;
	
	import shooter.Game;
	import shooter.Screen;

	public class MyGame extends Game {
		override protected function initialize():void {
			injector.map(ScreenThree);
			injector.map(ScreenSecond);
			injector.map(ScreenTop);
			injector.map(ParticleScreen);
			injector.map(TileMapScreen);
			injector.map(PathfindingScreen);
			injector.map(CameraFollowScreen);
			injector.map(DungeonScreen);
			injector.map(MazeScreen);

			enableKeyboardHandlers();
			enableTouchHandler();
		}

		override protected function startup():void {
//			push(ScreenThree);
//			push(ScreenSecond);
//			push(ScreenTop);
//			push(TileMapScreen);
//			push(PathfindingScreen);
//			replace(CameraFollowScreen);
//			replace(ParticleScreen);
//			replace(DungeonScreen);
			replace(MazeScreen);
		}
	}
}
