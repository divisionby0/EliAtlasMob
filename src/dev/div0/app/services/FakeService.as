package dev.div0.app.services
{
	import dev.div0.app.services.events.FakeServiceEvent;
	
	import flash.events.EventDispatcher;

	public class FakeService extends EventDispatcher
	{
		public function goSomeAction(data:Object):void	
		{
			var fakeServiceEvent:FakeServiceEvent = new FakeServiceEvent(FakeServiceEvent.SERVICE_ACTIONS_COMPLETE);
			fakeServiceEvent.data="actions complete";
			dispatchEvent(fakeServiceEvent);
		}
	}
}