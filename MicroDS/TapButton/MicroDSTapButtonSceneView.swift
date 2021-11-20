// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class MicroDSTapButtonSceneView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 200, height: 60)
        public static let backgroundColor = UIColor.white
    }

    public var backgroundLayer: UIView!
    public var scene: TextView!

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
            createBackgroundLayer()
            createScene()
        }
    }

    private func createBackgroundLayer() {
        backgroundLayer = UIView(frame: CGRect(x: 100, y: 30, width: 200, height: 60))
        backgroundLayer.backgroundColor = UIColor.white
        backgroundLayer.layer.shadowOffset = CGSize(width: 0, height: 3)
        backgroundLayer.layer.borderWidth = 4
        backgroundLayer.layer.cornerRadius = 30
        backgroundLayer.layer.name = "backgroundLayer"
        backgroundLayer.layer.shadowColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1).cgColor
        backgroundLayer.layer.shadowOpacity = 1
        backgroundLayer.layer.position = CGPoint(x: 100, y: 30)
        backgroundLayer.layer.bounds = CGRect(x: 0, y: 0, width: 200, height: 60)
        backgroundLayer.layer.masksToBounds = false

    }

    private func createScene() {
        scene = TextView(frame: CGRect(x: 100, y: 30, width: 200, height: 19))
        scene.backgroundColor = UIColor.clear
        scene.layer.shadowOffset = CGSize(width: 0, height: 0)
        scene.layer.name = "scene"
        scene.layer.shadowColor = UIColor.clear.cgColor
        scene.layer.shadowOpacity = 1
        scene.layer.position = CGPoint(x: 100, y: 30)
        scene.layer.bounds = CGRect(x: 0, y: 0, width: 200, height: 19)
        scene.layer.masksToBounds = false
        scene.textLayer.name = "scene.textLayer"
        scene.textLayer.string = "PRESS"
        scene.textLayer.font = "Rubik-Bold" as NSString
        scene.textLayer.fontSize = 18
        scene.textLayer.foregroundColor = UIColor.black.cgColor
        scene.textLayer.alignmentMode = .center
        scene.textLayer.truncationMode = .none
        scene.textLayer.isWrapped = true

    }

    private func addSubviews() {
        addSubview(backgroundLayer)
        addSubview(scene)
    }
}
