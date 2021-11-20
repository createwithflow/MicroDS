// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class MicroDSLaunchView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 375, height: 667)
        public static let backgroundColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1)
    }

    public var group: UIView!
    public var left: ShapeView!
    public var right: ShapeView!
    public var top: ShapeView!
    public var bottom: ShapeView!
    public var label: TextView!

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
            createGroup()
            createLeft()
            createRight()
            createTop()
            createBottom()
            createLabel()
        }
    }

    private func createGroup() {
        group = UIView(frame: CGRect(x: 187.5, y: 333.5, width: 190, height: 60))
        group.backgroundColor = UIColor.clear
        group.layer.shadowOffset = CGSize(width: 0, height: 0)
        group.layer.borderColor = UIColor.white.cgColor
        group.layer.name = "group"
        group.layer.shadowColor = UIColor.clear.cgColor
        group.layer.shadowOpacity = 1
        group.layer.position = CGPoint(x: 187.5, y: 333.5)
        group.layer.bounds = CGRect(x: 0, y: 0, width: 190, height: 60)
        group.layer.masksToBounds = false

    }

    private func createLeft() {
        left = ShapeView(frame: CGRect(x: 2, y: 60, width: 4, height: 420))
        left.backgroundColor = UIColor.clear
        left.layer.anchorPoint = CGPoint(x: 0.5, y: 1)
        left.layer.shadowOffset = CGSize(width: 0, height: 0)
        left.layer.name = "left"
        left.layer.shadowColor = UIColor.clear.cgColor
        left.layer.shadowOpacity = 1
        left.layer.position = CGPoint(x: 2, y: 60)
        left.layer.bounds = CGRect(x: 0, y: 0, width: 4, height: 420)
        left.layer.masksToBounds = false
        left.shapeLayer.name = "left.shapeLayer"
        left.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        left.shapeLayer.strokeColor = UIColor.white.cgColor
        left.shapeLayer.fillColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1).cgColor
        left.shapeLayer.strokeEnd = 0
        left.shapeLayer.lineDashPattern = []
        left.shapeLayer.lineDashPhase = 0
        left.shapeLayer.lineWidth = 4
        left.shapeLayer.path = CGPathCreateWithSVGString("M2,0l0,420")!


    }

    private func createRight() {
        right = ShapeView(frame: CGRect(x: 188, y: 0, width: 4, height: 420))
        right.backgroundColor = UIColor.clear
        right.layer.anchorPoint = CGPoint(x: 0.5, y: 0)
        right.layer.shadowOffset = CGSize(width: 0, height: 0)
        right.layer.name = "right"
        right.layer.shadowColor = UIColor.clear.cgColor
        right.layer.shadowOpacity = 1
        right.layer.position = CGPoint(x: 188, y: 0)
        right.layer.bounds = CGRect(x: 0, y: 0, width: 4, height: 420)
        right.layer.masksToBounds = false
        right.shapeLayer.name = "right.shapeLayer"
        right.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        right.shapeLayer.strokeColor = UIColor.white.cgColor
        right.shapeLayer.fillColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1).cgColor
        right.shapeLayer.strokeEnd = 0
        right.shapeLayer.lineDashPattern = []
        right.shapeLayer.lineDashPhase = 0
        right.shapeLayer.lineWidth = 4
        right.shapeLayer.path = CGPathCreateWithSVGString("M2,420l0,-420")!


    }

    private func createTop() {
        top = ShapeView(frame: CGRect(x: 190, y: 2, width: 600, height: 4))
        top.backgroundColor = UIColor.clear
        top.layer.anchorPoint = CGPoint(x: 1, y: 0.5)
        top.layer.shadowOffset = CGSize(width: 0, height: 0)
        top.layer.name = "top"
        top.layer.shadowColor = UIColor.clear.cgColor
        top.layer.shadowOpacity = 1
        top.layer.position = CGPoint(x: 190, y: 2)
        top.layer.bounds = CGRect(x: 0, y: 0, width: 600, height: 4)
        top.layer.masksToBounds = false
        top.shapeLayer.name = "top.shapeLayer"
        top.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        top.shapeLayer.strokeColor = UIColor.white.cgColor
        top.shapeLayer.fillColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1).cgColor
        top.shapeLayer.strokeEnd = 0
        top.shapeLayer.lineDashPattern = []
        top.shapeLayer.lineDashPhase = 0
        top.shapeLayer.lineWidth = 4
        top.shapeLayer.path = CGPathCreateWithSVGString("M0,2l600,0")!


    }

    private func createBottom() {
        bottom = ShapeView(frame: CGRect(x: 0, y: 58, width: 600, height: 4))
        bottom.backgroundColor = UIColor.clear
        bottom.layer.anchorPoint = CGPoint(x: 0, y: 0.5)
        bottom.layer.shadowOffset = CGSize(width: 0, height: 0)
        bottom.layer.name = "bottom"
        bottom.layer.shadowColor = UIColor.clear.cgColor
        bottom.layer.shadowOpacity = 1
        bottom.layer.position = CGPoint(x: 0, y: 58)
        bottom.layer.bounds = CGRect(x: 0, y: 0, width: 600, height: 4)
        bottom.layer.masksToBounds = false
        bottom.shapeLayer.name = "bottom.shapeLayer"
        bottom.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        bottom.shapeLayer.strokeColor = UIColor.white.cgColor
        bottom.shapeLayer.fillColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1).cgColor
        bottom.shapeLayer.strokeEnd = 0
        bottom.shapeLayer.lineDashPattern = []
        bottom.shapeLayer.lineDashPhase = 0
        bottom.shapeLayer.lineWidth = 4
        bottom.shapeLayer.path = CGPathCreateWithSVGString("M600,2l-600,0")!


    }

    private func createLabel() {
        label = TextView(frame: CGRect(x: 95.5, y: 30.5, width: 163.72, height: 42.33))
        label.backgroundColor = UIColor.clear
        label.alpha = 0
        label.layer.shadowOffset = CGSize(width: 0, height: 0)
        label.layer.name = "label"
        label.layer.shadowColor = UIColor.clear.cgColor
        label.layer.shadowOpacity = 1
        label.layer.position = CGPoint(x: 95.5, y: 30.5)
        label.layer.bounds = CGRect(x: 0, y: 0, width: 163.72, height: 42.33)
        label.layer.masksToBounds = false
        label.textLayer.name = "label.textLayer"
        label.textLayer.string = "MicroDS"
        label.textLayer.font = "Rubik-SemiBold" as NSString
        label.textLayer.fontSize = 36
        label.textLayer.foregroundColor = UIColor.white.cgColor
        label.textLayer.alignmentMode = .center
        label.textLayer.truncationMode = .none
        label.textLayer.isWrapped = true

    }

    private func addSubviews() {
        group.addSubview(left)
        group.addSubview(right)
        group.addSubview(top)
        group.addSubview(bottom)
        group.addSubview(label)
        addSubview(group)
    }
}
