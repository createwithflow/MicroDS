// Made With Flow.
//
// DO NOT MODIFY, your changes will be lost when this file is regenerated.
//

import UIKit

public class MicroDSLaunchViewController: UIViewController {
    @IBOutlet var microDslaunchView: MicroDSLaunchViewContainer!

    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        microDslaunchView.timeline?.play()
        view.backgroundColor = microDslaunchView.backgroundColor
        guard let duration = microDslaunchView.timeline?.duration else {
            return
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
            self.showStartViewController()
        }
    }

    private func showStartViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let startViewController = storyboard.instantiateViewController(withIdentifier: "MainViewController")
        startViewController.modalPresentationStyle = .custom
        startViewController.modalTransitionStyle = .crossDissolve
        present(startViewController, animated: true, completion: nil)
    }
}
