package dev.div0.app.intro.events
{
	import flash.events.Event;
	
	public class IntroViewEvent extends Event
	{
		public static const GO_TO_MAIN_REQUEST:String = "goToMainRequest";
		
		public function IntroViewEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}