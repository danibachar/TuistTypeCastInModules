import Flag
import Bootstrap
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = UIViewController(nibName: nil, bundle: nil)
        viewController.view.backgroundColor = .blue
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        
        print("DB: \(String(describing: Flag.castAndGetAppID()))")
        
        return true
    }
}

extension SecurityClient: MyConfiguration {
    public static var appID: String { "my_app_id" }
}
