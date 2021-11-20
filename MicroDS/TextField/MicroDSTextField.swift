// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

class MicroDSTextField: TextField {
    private lazy var microDstextFieldScene: MicroDSTextFieldSceneView = {
        let startView = MicroDSTextFieldSceneView(frame: bounds)
        startView.scale(to: bounds.size)
        //Since we may use scaling, the startView must not clip to bounds
        startView.clipsToBounds = false
        //Let the textField do the clipping
        clipsToBounds = false
        //Since we are scaling, set the background color of the slider, and clear the backgroundColor of the startView
        backgroundColor = startView.backgroundColor
        startView.backgroundColor = .clear
        return startView
    }()

    override func createForward() -> Timeline {
        return MicroDSTextFieldTimeline(view: microDstextFieldScene, duration: 0.25)
    }

    override func createReverse() -> Timeline {
        return MicroDSTextFieldTimeline(view: microDstextFieldScene, duration: 0.25).reversed
    }

    override func createView() -> UIView {
        return microDstextFieldScene
    }
}
