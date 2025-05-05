//
//  CBaseViewController.swift
//  TymeXTest
//
//  Created by Nguyen Thanh Nhut on 2023/04/04.
//

import UIKit
import SafariServices

open class MQBaseTableViewController: UITableViewController {
    class func viewController() -> UIViewController? { return nil }
}

extension UIViewController: SFSafariViewControllerDelegate {
    public func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        controller.dismiss(animated: true, completion: nil)
    }
}

extension UIApplication {
    class func getTopMostViewController(controller: UIViewController? = UIWindow.key?.rootViewController) -> UIViewController? {
        if let navigationController = controller as? UINavigationController,
            let visibleVC = navigationController.visibleViewController {
            return getTopMostViewController(controller: visibleVC)
        }
        
        if let tabController = controller as? UITabBarController,
            let selectedVC = tabController.selectedViewController {
            return getTopMostViewController(controller: selectedVC)
        }
        
        if let presented = controller?.presentedViewController {
            return getTopMostViewController(controller: presented)
        }
        
        return controller
    }
    
    /// Try to dismiss all presented screen
    /// completion: handler action after dismissing is finished
    class func dismissAllPresentedViewControllers(animated: Bool = true, completion: @escaping () -> Void) {
        guard let presented = UIWindow.key?.rootViewController?.presentedViewController else {
            completion()
            return
        }
        
        presented.dismiss(animated: animated) {
            dismissAllPresentedViewControllers(animated: animated, completion: completion)
        }
    }
}


open class CBaseViewController: UIViewController {
    var orientationMask: UIInterfaceOrientationMask {
        return .portrait
    }
    var shouldUnlockOrientationMask: Bool {
        return false
    }
    
    override open var interfaceOrientation: UIInterfaceOrientation {
        return .portrait
    }
    
    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupOrientationMask()
    }
    
    open override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        updateLayout()
    }
    
    open func setupOrientationMask() {}
    open func setupViews() {}
    open func updateLayout() {}
}

open class CBaseCollectionViewFlowLayout: UICollectionViewFlowLayout {
    public override init() {
        super.init()
        configureLayout()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureLayout()
    }
    
    open func configureLayout() {}
}

extension UIView {
    @discardableResult
    public func addSubviews(_ subviews: UIView...) -> UIView {
        subviews.forEach { addSubview($0) }
        return self
    }
}

extension CALayer {
    public func addSublayers(_ sublayers: CALayer...) -> CALayer {
        sublayers.forEach { addSublayer($0) }
        return self
    }
}
