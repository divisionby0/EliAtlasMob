package dev.div0.app.main.pm
{
	import dev.div0.app.main.events.MainViewEvent;
	import dev.div0.iocContainer.dispatcher.GlobalDispatcher;

	public class MainViewPM
	{
		public function goToIntroButtonClick():void
		{
			GlobalDispatcher.getInstance().dispatchEvent(new MainViewEvent(MainViewEvent.GO_TO_INTRO_CLICKED));
		}
		public function saveDataButtonClick():void
		{
			GlobalDispatcher.getInstance().dispatchEvent(new MainViewEvent(MainViewEvent.SAVE_DATA_REQUEST));
		}
	}
}