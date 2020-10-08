import UIKit

@UIApplicationMain
final class App: NSObject, UIApplicationDelegate {
    func applicationDidFinishLaunching(_: UIApplication) {
        UISegmentedControl.appearance().selectedSegmentTintColor = .systemPink
    }
}
