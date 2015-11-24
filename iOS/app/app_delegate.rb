class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    jsCodeLocation = NSURL.URLWithString("http://Josephs-MacBook-Pro.local:8081/App/index.ios.bundle?platform=ios")

    rootView = RCTRootView.alloc.initWithBundleURL(jsCodeLocation, moduleName:"SampleMotionApp", initialProperties:nil, launchOptions:launchOptions)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    rootViewController = UIViewController.alloc.init
    rootViewController.view = rootView
    @window.rootViewController = rootViewController
    @window.makeKeyAndVisible

    true
  end
end
