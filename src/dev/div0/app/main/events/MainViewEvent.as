package dev.div0.app.main.events
{
	import flash.events.Event;
	
	public class MainViewEvent extends Event
	{
		public static const GO_INTRO_REQUEST:String = "goToIntroRequest";
		public static const SAVE_DATA_REQUEST:String = "saveDataRequest";
		
		public function MainViewEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}