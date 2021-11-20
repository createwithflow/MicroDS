// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

class MicroDSProgressView: ProgressView {
    
    private lazy var progressBar: ProgressBarSceneView = {
        let progressBar = ProgressBarSceneView(frame: .zero)
        progressBar.scale(to: frame.size)
        return progressBar
    }()

    override func createView() -> UIView {
        timeline = MicroDSProgressBarTimeline(view: progressBar, duration: 1)
        return progressBar
    }
}
