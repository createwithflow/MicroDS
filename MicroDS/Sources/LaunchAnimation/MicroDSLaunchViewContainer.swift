// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
class MicroDSLaunchViewContainer: UIView {

    private lazy var containedView: MicroDSLaunchView = {
        let startView = MicroDSLaunchView(frame: .zero)
        startView.scale(to: frame.size)
        return startView
    }()

    var timeline: Timeline?

    override func layoutSubviews() {
        setupView()
    }

    private func setupView() {
        addSubview(containedView)
        timeline = MicroDSLaunchTimeline(view: containedView, duration: 1.3)
    }
}
