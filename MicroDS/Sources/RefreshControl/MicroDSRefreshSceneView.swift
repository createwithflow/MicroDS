// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class MicroDSRefreshSceneView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 36, height: 36)
        public static let backgroundColor = UIColor.white
    }

    public var l8: UIView!
    public var l7: UIView!
    public var l6: UIView!
    public var l5: UIView!
    public var l4: UIView!
    public var l3: UIView!
    public var l2: UIView!
    public var l1: UIView!
    public var l0: UIView!

    public override var intrinsicContentSize: CGSize {
        return Defaults.size
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    private func setup() {
        backgroundColor = Defaults.backgroundColor
        clipsToBounds = false
        createViews()
        addSubviews()
        layer.name = "sceneLayer"
        //scale(to: frame.size)
    }

    /// Scales `self` and its subviews to `size`.
    ///
    /// - Parameter size: The size `self` is scaled to.
    ///
    /// UIKit specifies: "In iOS 8.0 and later, the transform property does not affect Auto Layout. Auto layout
    /// calculates a view's alignment rectangle based on its untransformed frame."
    ///
    /// see: https://developer.apple.com/documentation/uikit/uiview/1622459-transform
    ///
    /// If there are any constraints in IB affecting the frame of `self`, this method will have consequences on
    /// layout / rendering. To properly scale an animation, you will have to position the view manually.
    public func scale(to size: CGSize) {
        let x = size.width / Defaults.size.width
        let y = size.height / Defaults.size.height
        transform = CGAffineTransform(scaleX: x, y: y)
    }

    private func createViews() {
        CATransaction.suppressAnimations {
            createL8()
            createL7()
            createL6()
            createL5()
            createL4()
            createL3()
            createL2()
            createL1()
            createL0()
        }
    }

    private func createL8() {
        l8 = UIView(frame: CGRect(x: 30, y: 30, width: 12, height: 12))
        l8.backgroundColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1)
        l8.alpha = 0
        l8.layer.shadowOffset = CGSize(width: 0, height: 0)
        l8.layer.name = "l8"
        l8.layer.shadowColor = UIColor.clear.cgColor
        l8.layer.shadowOpacity = 1
        l8.layer.position = CGPoint(x: 30, y: 30)
        l8.layer.bounds = CGRect(x: 0, y: 0, width: 12, height: 12)
        l8.layer.masksToBounds = false

    }

    private func createL7() {
        l7 = UIView(frame: CGRect(x: 18, y: 30, width: 12, height: 12))
        l7.backgroundColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1)
        l7.alpha = 0
        l7.layer.shadowOffset = CGSize(width: 0, height: 0)
        l7.layer.name = "l7"
        l7.layer.shadowColor = UIColor.clear.cgColor
        l7.layer.shadowOpacity = 1
        l7.layer.position = CGPoint(x: 18, y: 30)
        l7.layer.bounds = CGRect(x: 0, y: 0, width: 12, height: 12)
        l7.layer.masksToBounds = false

    }

    private func createL6() {
        l6 = UIView(frame: CGRect(x: 6, y: 30, width: 12, height: 12))
        l6.backgroundColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1)
        l6.alpha = 0
        l6.layer.shadowOffset = CGSize(width: 0, height: 0)
        l6.layer.name = "l6"
        l6.layer.shadowColor = UIColor.clear.cgColor
        l6.layer.shadowOpacity = 1
        l6.layer.position = CGPoint(x: 6, y: 30)
        l6.layer.bounds = CGRect(x: 0, y: 0, width: 12, height: 12)
        l6.layer.masksToBounds = false

    }

    private func createL5() {
        l5 = UIView(frame: CGRect(x: 30, y: 18, width: 12, height: 12))
        l5.backgroundColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1)
        l5.alpha = 0
        l5.layer.shadowOffset = CGSize(width: 0, height: 0)
        l5.layer.name = "l5"
        l5.layer.shadowColor = UIColor.clear.cgColor
        l5.layer.shadowOpacity = 1
        l5.layer.position = CGPoint(x: 30, y: 18)
        l5.layer.bounds = CGRect(x: 0, y: 0, width: 12, height: 12)
        l5.layer.masksToBounds = false

    }

    private func createL4() {
        l4 = UIView(frame: CGRect(x: 18, y: 18, width: 12, height: 12))
        l4.backgroundColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1)
        l4.alpha = 0
        l4.layer.shadowOffset = CGSize(width: 0, height: 0)
        l4.layer.name = "l4"
        l4.layer.shadowColor = UIColor.clear.cgColor
        l4.layer.shadowOpacity = 1
        l4.layer.position = CGPoint(x: 18, y: 18)
        l4.layer.bounds = CGRect(x: 0, y: 0, width: 12, height: 12)
        l4.layer.masksToBounds = false

    }

    private func createL3() {
        l3 = UIView(frame: CGRect(x: 6, y: 18, width: 12, height: 12))
        l3.backgroundColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1)
        l3.alpha = 0
        l3.layer.shadowOffset = CGSize(width: 0, height: 0)
        l3.layer.name = "l3"
        l3.layer.shadowColor = UIColor.clear.cgColor
        l3.layer.shadowOpacity = 1
        l3.layer.position = CGPoint(x: 6, y: 18)
        l3.layer.bounds = CGRect(x: 0, y: 0, width: 12, height: 12)
        l3.layer.masksToBounds = false

    }

    private func createL2() {
        l2 = UIView(frame: CGRect(x: 30, y: 6, width: 12, height: 12))
        l2.backgroundColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1)
        l2.alpha = 0
        l2.layer.shadowOffset = CGSize(width: 0, height: 0)
        l2.layer.name = "l2"
        l2.layer.shadowColor = UIColor.clear.cgColor
        l2.layer.shadowOpacity = 1
        l2.layer.position = CGPoint(x: 30, y: 6)
        l2.layer.bounds = CGRect(x: 0, y: 0, width: 12, height: 12)
        l2.layer.masksToBounds = false

    }

    private func createL1() {
        l1 = UIView(frame: CGRect(x: 18, y: 6, width: 12, height: 12))
        l1.backgroundColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1)
        l1.alpha = 0
        l1.layer.shadowOffset = CGSize(width: 0, height: 0)
        l1.layer.name = "l1"
        l1.layer.shadowColor = UIColor.clear.cgColor
        l1.layer.shadowOpacity = 1
        l1.layer.position = CGPoint(x: 18, y: 6)
        l1.layer.bounds = CGRect(x: 0, y: 0, width: 12, height: 12)
        l1.layer.masksToBounds = false

    }

    private func createL0() {
        l0 = UIView(frame: CGRect(x: 6, y: 6, width: 12, height: 12))
        l0.backgroundColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1)
        l0.alpha = 0
        l0.layer.shadowOffset = CGSize(width: 0, height: 0)
        l0.layer.name = "l0"
        l0.layer.shadowColor = UIColor.clear.cgColor
        l0.layer.shadowOpacity = 1
        l0.layer.position = CGPoint(x: 6, y: 6)
        l0.layer.bounds = CGRect(x: 0, y: 0, width: 12, height: 12)
        l0.layer.masksToBounds = false

    }

    private func addSubviews() {
        addSubview(l8)
        addSubview(l7)
        addSubview(l6)
        addSubview(l5)
        addSubview(l4)
        addSubview(l3)
        addSubview(l2)
        addSubview(l1)
        addSubview(l0)
    }
}
