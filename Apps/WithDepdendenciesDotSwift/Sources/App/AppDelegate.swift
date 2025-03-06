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
        let label = UILabel(frame: .init(x: 100, y: 100, width: 100, height: 100))
        label.text = Flag.castAndGetAppID() ?? "none"
        label.textColor = .white
        viewController.view.addSubview(label)
        
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        print("DB: \(String(describing: Flag.castAndGetAppID()))")
//        print("DB 2: \(String(describing: SecurityClient.appID))")
        
        return true
    }
}
