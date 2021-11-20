// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class MicroDSMenuButtonSceneView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 44, height: 44)
        public static let backgroundColor = UIColor.white
    }

    public var backgroundLayer: UIView!
    public var mid: ShapeView!
    public var bottom: ShapeView!
    public var top: ShapeView!

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
            createMid()
            createBottom()
            createTop()
        }
    }

    private func createBackgroundLayer() {
        backgroundLayer = UIView(frame: CGRect(x: 22, y: 22, width: 44, height: 44))
        backgroundLayer.backgroundColor = UIColor.white
        backgroundLayer.layer.shadowOffset = CGSize(width: 0, height: 0)
        backgroundLayer.layer.shadowRadius = 0
        backgroundLayer.layer.borderWidth = 5
        backgroundLayer.layer.name = "backgroundLayer"
        backgroundLayer.layer.shadowColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1).cgColor
        backgroundLayer.layer.shadowOpacity = 1
        backgroundLayer.layer.position = CGPoint(x: 22, y: 22)
        backgroundLayer.layer.bounds = CGRect(x: 0, y: 0, width: 44, height: 44)
        backgroundLayer.layer.masksToBounds = false

    }

    private func createMid() {
        mid = ShapeView(frame: CGRect(x: 22, y: 22, width: 30, height: 5))
        mid.backgroundColor = UIColor.clear
        mid.layer.shadowOffset = CGSize(width: 0, height: 0)
        mid.layer.name = "mid"
        mid.layer.shadowColor = UIColor.clear.cgColor
        mid.layer.shadowOpacity = 1
        mid.layer.position = CGPoint(x: 22, y: 22)
        mid.layer.bounds = CGRect(x: 0, y: 0, width: 30, height: 5)
        mid.layer.masksToBounds = false
        mid.shapeLayer.name = "mid.shapeLayer"
        mid.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        mid.shapeLayer.strokeColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1).cgColor
        mid.shapeLayer.fillColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1).cgColor
        mid.shapeLayer.strokeStart = 0.1
        mid.shapeLayer.strokeEnd = 0.9
        mid.shapeLayer.lineDashPattern = []
        mid.shapeLayer.lineDashPhase = 0
        mid.shapeLayer.lineWidth = 5
        mid.shapeLayer.path = CGPathCreateWithSVGString("M0,2.5l30,0")!


    }

    private func createBottom() {
        bottom = ShapeView(frame: CGRect(x: 22, y: 31, width: 30, height: 5))
        bottom.backgroundColor = UIColor.clear
        bottom.layer.shadowOffset = CGSize(width: 0, height: 0)
        bottom.layer.name = "bottom"
        bottom.layer.shadowColor = UIColor.clear.cgColor
        bottom.layer.shadowOpacity = 1
        bottom.layer.position = CGPoint(x: 22, y: 31)
        bottom.layer.bounds = CGRect(x: 0, y: 0, width: 30, height: 5)
        bottom.layer.masksToBounds = false
        bottom.shapeLayer.name = "bottom.shapeLayer"
        bottom.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        bottom.shapeLayer.strokeColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1).cgColor
        bottom.shapeLayer.fillColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1).cgColor
        bottom.shapeLayer.strokeStart = 0.1
        bottom.shapeLayer.strokeEnd = 0.9
        bottom.shapeLayer.lineDashPattern = []
        bottom.shapeLayer.lineDashPhase = 0
        bottom.shapeLayer.lineWidth = 5
        bottom.shapeLayer.path = CGPathCreateWithSVGString("M0,2.5l30,0")!


    }

    private func createTop() {
        top = ShapeView(frame: CGRect(x: 22, y: 13, width: 30, height: 5))
        top.backgroundColor = UIColor.clear
        top.layer.shadowOffset = CGSize(width: 0, height: 0)
        top.layer.name = "top"
        top.layer.shadowColor = UIColor.clear.cgColor
        top.layer.shadowOpacity = 1
        top.layer.position = CGPoint(x: 22, y: 13)
        top.layer.bounds = CGRect(x: 0, y: 0, width: 30, height: 5)
        top.layer.masksToBounds = false
        top.shapeLayer.name = "top.shapeLayer"
        top.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        top.shapeLayer.strokeColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1).cgColor
        top.shapeLayer.fillColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1).cgColor
        top.shapeLayer.strokeStart = 0.1
        top.shapeLayer.strokeEnd = 0.9
        top.shapeLayer.lineDashPattern = []
        top.shapeLayer.lineDashPhase = 0
        top.shapeLayer.lineWidth = 5
        top.shapeLayer.path = CGPathCreateWithSVGString("M0,2.5l30,0")!


    }

    private func addSubviews() {
        addSubview(backgroundLayer)
        addSubview(mid)
        addSubview(bottom)
        addSubview(top)
    }
}
