// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class SpinnerTimeline: Timeline {
    public convenience init(view: SpinnerView, duration: TimeInterval, autoreverses: Bool = false, repeatCount: Float = 0) {
        let animationsByLayer = SpinnerTimeline.animationsByLayer(view: view, duration: duration)
        self.init(view: view, animationsByLayer: animationsByLayer, sounds: [], duration: duration, autoreverses: autoreverses, repeatCount: repeatCount)
    }
    private static func animationsByLayer(view: SpinnerView, duration: TimeInterval) -> [CALayer: [CAKeyframeAnimation]] {
        // Keyframe Animations for rotating
        let transform_rotation_z_rotating: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "transform.rotation.z"
            keyframeAnimation.values = [0, 6.28319]
            keyframeAnimation.keyTimes = [0, 1] 
            keyframeAnimation.timingFunctions = [.linear]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for l2
        let opacity_l2: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "opacity"
            keyframeAnimation.values = [0, 0, 1, 1, 0]
            keyframeAnimation.keyTimes = [0, 0.49, 0.5, 0.99, 1] 
            keyframeAnimation.timingFunctions = [.linear, .linear, .linear, .linear]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for l1
        let opacity_l1: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "opacity"
            keyframeAnimation.values = [0, 0, 1, 1, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.32, 0.33, 0.82, 0.83, 1] 
            keyframeAnimation.timingFunctions = [.linear, .linear, .linear, .linear, .linear]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Keyframe Animations for l0
        let opacity_l0: CAKeyframeAnimation = {
            let keyframeAnimation = CAKeyframeAnimation()
            keyframeAnimation.keyPath = "opacity"
            keyframeAnimation.values = [0, 0, 1, 1, 0, 0]
            keyframeAnimation.keyTimes = [0, 0.16, 0.17, 0.66, 0.67, 1] 
            keyframeAnimation.timingFunctions = [.linear, .linear, .linear, .linear, .linear]
            keyframeAnimation.duration = duration
            
            return keyframeAnimation
        }()
         
        // Organize CAKeyframeAnimations by CALayer
        var animationsByLayer = [CALayer: [CAKeyframeAnimation]]()
        animationsByLayer[view.l0.layer] = [opacity_l0]
        animationsByLayer[view.rotating.layer] = [transform_rotation_z_rotating]
        animationsByLayer[view.l2.layer] = [opacity_l2]
        animationsByLayer[view.l1.layer] = [opacity_l1]

        return animationsByLayer 
    }
}
