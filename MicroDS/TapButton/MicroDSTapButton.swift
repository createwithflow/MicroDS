// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

@IBDesignable
class MicroDSTapButton: TapButton {
    private lazy var microDstapButtonScene: MicroDSTapButtonSceneView = {
        let startView = MicroDSTapButtonSceneView(frame: .zero)
        startView.scale(to: frame.size)
        //Since we use scaling, the startView must not clip to bounds 
        startView.clipsToBounds = false
        //Let the button do the clipping
        clipsToBounds = false
        //Since we are scaling, set the background color of the button, and clear the backgroundColor of the startview
        backgroundColor = startView.backgroundColor
        startView.backgroundColor = .clear

        return startView
    }()

    override func createForward() -> Timeline {
        return MicroDSTapButtonTimeline(view: microDstapButtonScene, duration: 0.25)
    }

    override func createReverse() -> Timeline {
        return MicroDSTapButtonTimeline(view: microDstapButtonScene, duration: 0.25).reversed
    }

    override func createView() -> UIView {
        return microDstapButtonScene
    }
}
