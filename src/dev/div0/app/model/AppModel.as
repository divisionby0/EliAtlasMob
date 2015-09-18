package dev.div0.app.model
{
	import dev.div0.app.pm.AppViewPM;
	import dev.div0.app.services.FakeService;
	import dev.div0.app.services.events.FakeServiceEvent;
	
	import flash.events.Event;
	
	import spark.components.Alert;

	public class AppModel implements IModel
	{
		private var _service:FakeService;
		
		public function get service():FakeService
		{
			return _service;
		}
		public function set service(value:FakeService):void
		{
			_service = value;
			_service.addEventListener(FakeServiceEvent.SERVICE_ACTIONS_COMPLETE, serviceActionsCompleteHandler);
		}
		
		private function serviceActionsCompleteHandler(event:FakeServiceEvent):void
		{
			Alert.show("save data complete");
		}
		public function saveDataRequest():void
		{
			service.goSomeAction(null);
		}	
	}
}