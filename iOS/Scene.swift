import SwiftUI

final class Scene: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo: UISceneSession, options: UIScene.ConnectionOptions) {
        window = .init(windowScene: scene as! UIWindowScene)
        window!.rootViewController = UIHostingController(rootView: Tabs())
        window!.makeKeyAndVisible()
    }
}
