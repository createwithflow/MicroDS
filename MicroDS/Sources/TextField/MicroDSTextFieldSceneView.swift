// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
public class MicroDSTextFieldSceneView: UIView {
    public struct Defaults {
        public static let size = CGSize(width: 240, height: 34)
        public static let backgroundColor = UIColor.white
    }

    public var borderedField: UIView!
    public var placeholderLabel: TextView!

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
            createBorderedField()
            createPlaceholderLabel()
        }
    }

    private func createBorderedField() {
        borderedField = UIView(frame: CGRect(x: 120, y: 17, width: 240, height: 34))
        borderedField.backgroundColor = UIColor.clear
        borderedField.alpha = 0.5
        borderedField.layer.shadowOffset = CGSize(width: 0, height: 0)
        borderedField.layer.borderWidth = 4
        borderedField.layer.borderColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1).cgColor
        borderedField.layer.name = "borderedField"
        borderedField.layer.shadowColor = UIColor.clear.cgColor
        borderedField.layer.shadowOpacity = 1
        borderedField.layer.position = CGPoint(x: 120, y: 17)
        borderedField.layer.bounds = CGRect(x: 0, y: 0, width: 240, height: 34)
        borderedField.layer.masksToBounds = true

    }

    private func createPlaceholderLabel() {
        placeholderLabel = TextView(frame: CGRect(x: 8, y: 17, width: 60, height: 19))
        placeholderLabel.backgroundColor = UIColor.clear
        placeholderLabel.layer.anchorPoint = CGPoint(x: 0, y: 0.5)
        placeholderLabel.alpha = 0.5
        placeholderLabel.layer.shadowOffset = CGSize(width: 0, height: 0)
        placeholderLabel.layer.name = "placeholderLabel"
        placeholderLabel.layer.shadowColor = UIColor.clear.cgColor
        placeholderLabel.layer.shadowOpacity = 1
        placeholderLabel.layer.position = CGPoint(x: 8, y: 17)
        placeholderLabel.layer.bounds = CGRect(x: 0, y: 0, width: 60, height: 19)
        placeholderLabel.layer.masksToBounds = false
        placeholderLabel.textLayer.name = "placeholderLabel.textLayer"
        placeholderLabel.textLayer.string = "Name"
        placeholderLabel.textLayer.font = "Rubik-SemiBold" as NSString
        placeholderLabel.textLayer.fontSize = 16
        placeholderLabel.textLayer.foregroundColor = UIColor(red: 0.114, green: 0.114, blue: 0.086, alpha: 1).cgColor
        placeholderLabel.textLayer.alignmentMode = .natural
        placeholderLabel.textLayer.truncationMode = .none
        placeholderLabel.textLayer.isWrapped = true

    }

    private func addSubviews() {
        borderedField.addSubview(placeholderLabel)
        addSubview(borderedField)
    }
}
