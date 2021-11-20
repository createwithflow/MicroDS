// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import Foundation
import UIKit

class ToggleButton: UIButton {
    weak var delegate: ToggleButtonDelegate?
    var current: Timeline?

    public var forward: Timeline? {
        return nil
    }

    public var reverse: Timeline? {
        return nil
    }

    public func createView() -> UIView {
        return UIView(frame: CGRect.null)
    }

    public private(set) var view: UIView!


    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    private func setup() {
        setupView()
        addTarget(self, action: #selector(toggle), for: .touchUpInside)
        current = forward
    }

    private func setupView() {
        view = createView()
        view.isUserInteractionEnabled = false
        addSubview(view)
    }

    @objc
    func toggle() {
        guard let _ = current else {
            return
        }
        current?.pause()
        let newTime = current!.duration - current!.time
        toggleTimeline()
        current?.reset() { timeline in
            timeline.offset(to: newTime)
            timeline.play()
        }
        
        super.isSelected = !isSelected
        delegate?.didToggle(sender: self)
    }

    private func toggleTimeline() {
        current = isSelected ? reverse : forward
    }

    override var isSelected: Bool {
        get {
            return super.isSelected
        }

        set {
            if newValue {
                _ = reverse
            } else {
                _ = forward
            }
            super.isSelected = newValue
        }
    }
}

protocol ToggleButtonDelegate: AnyObject {
    func didToggle(sender: ToggleButton)
}
