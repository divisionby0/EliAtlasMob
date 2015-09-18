package
{
	import dev.div0.app.AppController;
	import dev.div0.app.intro.pm.IntroViewPM;
	import dev.div0.app.main.pm.MainViewPM;
	import dev.div0.app.model.AppModel;
	import dev.div0.app.pm.AppViewPM;
	import dev.div0.app.services.FakeService;

	public class AppBeansImports
	{
		private var appController:AppController;
		private var appMdel:AppModel;
		private var appPM:AppViewPM;
		private var fakeService:FakeService;
		
		private var introViewPM:IntroViewPM;
		private var mainViewPM:MainViewPM;
	}
}