// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

class MicroDSRefreshControl: RefreshControl {
        private lazy var microDsrefreshScene: MicroDSRefreshSceneView = {
        return MicroDSRefreshSceneView(frame: CGRect(origin: .zero, size: MicroDSRefreshSceneView.Defaults.size))
    }()

    override func createView() -> UIView {
        return microDsrefreshScene
    }

    override func createTimeline() -> Timeline {
        return MicroDSRefreshTimeline(view: microDsrefreshScene, duration: 1.59, repeatCount: .greatestFiniteMagnitude)
    }
}
