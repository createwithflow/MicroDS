// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
class MicroDSActivityIndicatorView: ActivityIndicatorView {
    private lazy var spinner: SpinnerView = {
        let startView = SpinnerView(frame: .zero)
        startView.scale(to: frame.size)
        //The background color for this custom activity indicator should always be solid
        //Otherwise, the native ActivityIndicatorView animation will be visible
        startView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        return startView
    }()

    override func createTimeline() -> Timeline {
        return SpinnerTimeline(view: spinner, duration: 1, repeatCount: .greatestFiniteMagnitude)
    }
    
    override func createView() -> UIView {
        return spinner
    }
}
