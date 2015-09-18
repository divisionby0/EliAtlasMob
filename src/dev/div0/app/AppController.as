package dev.div0.app
{
	import dev.div0.app.intro.events.IntroViewEvent;
	import dev.div0.app.main.events.MainViewEvent;
	import dev.div0.app.model.IModel;
	import dev.div0.app.pm.AppViewPM;
	import dev.div0.iocContainer.dispatcher.GlobalDispatcher;
	
	import flash.events.Event;

	public class AppController
	{
		public var model:IModel;
		
		public var appPM:AppViewPM;
		
		public function onPostConstruct():void
		{
			appPM.currentState = AppViewPM.INTRO;
			GlobalDispatcher.getInstance().addEventListener(IntroViewEvent.GO_TO_MAIN_REQUEST, goToMainRequestHandler);
			GlobalDispatcher.getInstance().addEventListener(MainViewEvent.GO_TO_INTRO_CLICKED, goToIntroRequestHandler);
			GlobalDispatcher.getInstance().addEventListener(MainViewEvent.SAVE_DATA_REQUEST, saveDataRequestHandler);
		}
		
		private function saveDataRequestHandler(event:Event):void
		{
			model.saveDataRequest();
		}
		
		private function goToIntroRequestHandler(event:Event):void
		{
			trace("go to intro request");
			appPM.currentState = AppViewPM.INTRO;
		}
		
		private function goToMainRequestHandler(event:Event):void
		{
			appPM.currentState = AppViewPM.MAIN;
		}
	}
}