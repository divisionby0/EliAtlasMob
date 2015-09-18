package dev.div0.app.services.events
{
	import flash.events.Event;
	
	public class FakeServiceEvent extends Event
	{
		public static const SERVICE_ACTIONS_COMPLETE:String = "serviceActionsComplete";
		
		public var data:Object;
		
		public function FakeServiceEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event{
			var cloneEvent:FakeServiceEvent = new FakeServiceEvent(type,bubbles,cancelable);
			cloneEvent.data = data;
			return cloneEvent;
		}
	}
}