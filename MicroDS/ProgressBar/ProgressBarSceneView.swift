// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class ProgressBarSceneView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 200, height: 4)
        public static let backgroundColor = UIColor.white
    }

    public var borderedBar: UIView!
    public var bar: UIView!

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
            createBorderedBar()
            createBar()
        }
    }

    private func createBorderedBar() {
        borderedBar = UIView(frame: CGRect(x: 202, y: 2, width: 204, height: 8))
        borderedBar.backgroundColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 0)
        borderedBar.layer.anchorPoint = CGPoint(x: 1, y: 0.5)
        borderedBar.layer.shadowOffset = CGSize(width: 0, height: 0)
        borderedBar.layer.borderWidth = 2
        borderedBar.layer.borderColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1).cgColor
        borderedBar.layer.cornerRadius = 4
        borderedBar.layer.name = "borderedBar"
        borderedBar.layer.shadowColor = UIColor.clear.cgColor
        borderedBar.layer.shadowOpacity = 1
        borderedBar.layer.position = CGPoint(x: 202, y: 2)
        borderedBar.layer.bounds = CGRect(x: 0, y: 0, width: 204, height: 8)
        borderedBar.layer.masksToBounds = true

    }

    private func createBar() {
        bar = UIView(frame: CGRect(x: 2, y: 4, width: 204, height: 6))
        bar.backgroundColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1)
        bar.layer.anchorPoint = CGPoint(x: 1, y: 0.5)
        bar.alpha = 0.5
        bar.layer.shadowOffset = CGSize(width: 0, height: 0)
        bar.layer.borderColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1).cgColor
        bar.layer.name = "bar"
        bar.layer.shadowColor = UIColor.clear.cgColor
        bar.layer.shadowOpacity = 1
        bar.layer.position = CGPoint(x: 2, y: 4)
        bar.layer.bounds = CGRect(x: 0, y: 0, width: 204, height: 6)
        bar.layer.masksToBounds = false

    }

    private func addSubviews() {
        borderedBar.addSubview(bar)
        addSubview(borderedBar)
    }
}
