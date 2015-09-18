package dev.div0.app.intro.pm
{
	import dev.div0.app.intro.events.IntroViewEvent;
	import dev.div0.iocContainer.dispatcher.GlobalDispatcher;

	public class IntroViewPM
	{
		public function goToMainButtonClick():void
		{
			GlobalDispatcher.getInstance().dispatchEvent(new IntroViewEvent(IntroViewEvent.GO_TO_MAIN_REQUEST));
		}
	}
}