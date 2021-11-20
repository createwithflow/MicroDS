// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class SpinnerView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 37, height: 37)
        public static let backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
    }

    public var sceneContainer: UIView!
    public var group: UIView!
    public var rotating: ShapeView!
    public var l2: ShapeView!
    public var l1: ShapeView!
    public var l0: ShapeView!

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
        createViews()
        addSubviews()
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
        createSceneContainer()
        createGroup()
        createRotating()
        createL2()
        createL1()
        createL0()
      }
    }

    private func createSceneContainer() {
      sceneContainer = UIView(frame: CGRect(origin: CGPoint(), size: Defaults.size))
      sceneContainer.backgroundColor = Defaults.backgroundColor
      sceneContainer.clipsToBounds = false
    }

    private func createGroup() {
        group = UIView(frame: CGRect(x: 18.5, y: 18.5, width: 30, height: 5))
        group.backgroundColor = UIColor.clear
        group.alpha = 0.33
        group.layer.shadowOffset = CGSize(width: 0, height: 0)
        group.layer.name = "group"
        group.layer.shadowColor = UIColor.clear.cgColor
        group.layer.shadowOpacity = 1
        group.layer.position = CGPoint(x: 18.5, y: 18.5)
        group.layer.bounds = CGRect(x: 0, y: 0, width: 30, height: 5)
        group.layer.masksToBounds = false

    }

    private func createRotating() {
        rotating = ShapeView(frame: CGRect(x: 18.5, y: 18.5, width: 30, height: 5))
        rotating.backgroundColor = UIColor.clear
        rotating.layer.shadowOffset = CGSize(width: 0, height: 0)
        rotating.layer.name = "rotating"
        rotating.layer.shadowColor = UIColor.clear.cgColor
        rotating.layer.shadowOpacity = 1
        rotating.layer.position = CGPoint(x: 18.5, y: 18.5)
        rotating.layer.bounds = CGRect(x: 0, y: 0, width: 30, height: 5)
        rotating.layer.masksToBounds = false
        rotating.shapeLayer.name = "rotating.shapeLayer"
        rotating.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        rotating.shapeLayer.strokeColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1).cgColor
        rotating.shapeLayer.fillColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1).cgColor
        rotating.shapeLayer.lineDashPattern = []
        rotating.shapeLayer.lineDashPhase = 0
        rotating.shapeLayer.lineWidth = 5
        rotating.shapeLayer.path = CGPathCreateWithSVGString("M0,2.5l30,0")!


    }

    private func createL2() {
        l2 = ShapeView(frame: CGRect(x: 15, y: 2.5, width: 30, height: 5))
        l2.backgroundColor = UIColor.clear
        l2.alpha = 0
        l2.layer.shadowOffset = CGSize(width: 0, height: 0)
        l2.layer.name = "l2"
        l2.layer.shadowColor = UIColor.clear.cgColor
        l2.layer.shadowOpacity = 1
        l2.layer.position = CGPoint(x: 15, y: 2.5)
        l2.layer.bounds = CGRect(x: 0, y: 0, width: 30, height: 5)
        l2.layer.masksToBounds = false
        l2.shapeLayer.name = "l2.shapeLayer"
        l2.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        l2.shapeLayer.strokeColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1).cgColor
        l2.shapeLayer.fillColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1).cgColor
        l2.shapeLayer.lineDashPattern = []
        l2.shapeLayer.lineDashPhase = 0
        l2.shapeLayer.lineWidth = 5
        l2.shapeLayer.path = CGPathCreateWithSVGString("M0,2.5l30,0")!


    }

    private func createL1() {
        l1 = ShapeView(frame: CGRect(x: 15, y: 2.5, width: 30, height: 5))
        l1.backgroundColor = UIColor.clear
        l1.alpha = 0
        l1.transform = CGAffineTransform(rotationAngle: 0.666667 * CGFloat.pi)
        l1.layer.shadowOffset = CGSize(width: 0, height: 0)
        l1.layer.name = "l1"
        l1.layer.shadowColor = UIColor.clear.cgColor
        l1.layer.shadowOpacity = 1
        l1.layer.position = CGPoint(x: 15, y: 2.5)
        l1.layer.bounds = CGRect(x: 0, y: 0, width: 30, height: 5)
        l1.layer.masksToBounds = false
        l1.shapeLayer.name = "l1.shapeLayer"
        l1.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        l1.shapeLayer.strokeColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1).cgColor
        l1.shapeLayer.fillColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1).cgColor
        l1.shapeLayer.lineDashPattern = []
        l1.shapeLayer.lineDashPhase = 0
        l1.shapeLayer.lineWidth = 5
        l1.shapeLayer.path = CGPathCreateWithSVGString("M0,2.5l30,0")!


    }

    private func createL0() {
        l0 = ShapeView(frame: CGRect(x: 15, y: 2.5, width: 30, height: 5))
        l0.backgroundColor = UIColor.clear
        l0.alpha = 0
        l0.transform = CGAffineTransform(rotationAngle: 0.333333 * CGFloat.pi)
        l0.layer.shadowOffset = CGSize(width: 0, height: 0)
        l0.layer.name = "l0"
        l0.layer.shadowColor = UIColor.clear.cgColor
        l0.layer.shadowOpacity = 1
        l0.layer.position = CGPoint(x: 15, y: 2.5)
        l0.layer.bounds = CGRect(x: 0, y: 0, width: 30, height: 5)
        l0.layer.masksToBounds = false
        l0.shapeLayer.name = "l0.shapeLayer"
        l0.shapeLayer.fillRule = CAShapeLayerFillRule.evenOdd
        l0.shapeLayer.strokeColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1).cgColor
        l0.shapeLayer.fillColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1).cgColor
        l0.shapeLayer.lineDashPattern = []
        l0.shapeLayer.lineDashPhase = 0
        l0.shapeLayer.lineWidth = 5
        l0.shapeLayer.path = CGPathCreateWithSVGString("M0,2.5l30,0")!


    }

    private func addSubviews() {
        group.addSubview(l2)
        group.addSubview(l1)
        group.addSubview(l0)
      sceneContainer.addSubview(group)
      sceneContainer.addSubview(rotating)
      addSubview(sceneContainer)
    }
}
