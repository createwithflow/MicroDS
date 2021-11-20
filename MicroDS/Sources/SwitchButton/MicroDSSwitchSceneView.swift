// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class MicroDSSwitchSceneView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 120, height: 60)
        public static let backgroundColor = UIColor.white
    }

    public var backgroundLayer: UIView!
    public var thumb: UIView!
    public var offLabel: TextView!
    public var onLabel: TextView!

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
            createThumb()
            createOffLabel()
            createOnLabel()
        }
    }

    private func createBackgroundLayer() {
        backgroundLayer = UIView(frame: CGRect(x: 60, y: 30, width: 120, height: 60))
        backgroundLayer.backgroundColor = UIColor.clear
        backgroundLayer.layer.shadowOffset = CGSize(width: 0, height: 0)
        backgroundLayer.layer.borderWidth = 5
        backgroundLayer.layer.cornerRadius = 30
        backgroundLayer.layer.name = "backgroundLayer"
        backgroundLayer.layer.shadowColor = UIColor.clear.cgColor
        backgroundLayer.layer.shadowOpacity = 1
        backgroundLayer.layer.position = CGPoint(x: 60, y: 30)
        backgroundLayer.layer.bounds = CGRect(x: 0, y: 0, width: 120, height: 60)
        backgroundLayer.layer.masksToBounds = false

    }

    private func createThumb() {
        thumb = UIView(frame: CGRect(x: 30, y: 30, width: 40, height: 40))
        thumb.backgroundColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1)
        thumb.layer.shadowOffset = CGSize(width: 0, height: 0)
        thumb.layer.cornerRadius = 20
        thumb.layer.name = "thumb"
        thumb.layer.shadowColor = UIColor.clear.cgColor
        thumb.layer.shadowOpacity = 1
        thumb.layer.position = CGPoint(x: 30, y: 30)
        thumb.layer.bounds = CGRect(x: 0, y: 0, width: 40, height: 40)
        thumb.layer.masksToBounds = true

    }

    private func createOffLabel() {
        offLabel = TextView(frame: CGRect(x: 20, y: 20, width: 40, height: 14.01))
        offLabel.backgroundColor = UIColor.clear
        offLabel.layer.shadowOffset = CGSize(width: 0, height: 0)
        offLabel.layer.name = "offLabel"
        offLabel.layer.shadowColor = UIColor.clear.cgColor
        offLabel.layer.shadowOpacity = 1
        offLabel.layer.position = CGPoint(x: 20, y: 20)
        offLabel.layer.bounds = CGRect(x: 0, y: 0, width: 40, height: 14.01)
        offLabel.layer.masksToBounds = false
        offLabel.textLayer.name = "offLabel.textLayer"
        offLabel.textLayer.string = "OFF"
        offLabel.textLayer.font = "Rubik-Bold" as NSString
        offLabel.textLayer.fontSize = 12
        offLabel.textLayer.foregroundColor = UIColor.white.cgColor
        offLabel.textLayer.alignmentMode = .center
        offLabel.textLayer.truncationMode = .none
        offLabel.textLayer.isWrapped = true

    }

    private func createOnLabel() {
        onLabel = TextView(frame: CGRect(x: 60, y: 20, width: 40, height: 14.01))
        onLabel.backgroundColor = UIColor.clear
        onLabel.layer.shadowOffset = CGSize(width: 0, height: 0)
        onLabel.layer.name = "onLabel"
        onLabel.layer.shadowColor = UIColor.clear.cgColor
        onLabel.layer.shadowOpacity = 1
        onLabel.layer.position = CGPoint(x: 60, y: 20)
        onLabel.layer.bounds = CGRect(x: 0, y: 0, width: 40, height: 14.01)
        onLabel.layer.masksToBounds = false
        onLabel.textLayer.name = "onLabel.textLayer"
        onLabel.textLayer.string = "ON"
        onLabel.textLayer.font = "Rubik-Bold" as NSString
        onLabel.textLayer.fontSize = 12
        onLabel.textLayer.foregroundColor = UIColor.white.cgColor
        onLabel.textLayer.alignmentMode = .center
        onLabel.textLayer.truncationMode = .none
        onLabel.textLayer.isWrapped = true

    }

    private func addSubviews() {
        thumb.addSubview(offLabel)
        thumb.addSubview(onLabel)
        addSubview(backgroundLayer)
        addSubview(thumb)
    }
}
