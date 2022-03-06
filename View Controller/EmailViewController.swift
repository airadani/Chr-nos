//
//  EmailViewController.swift
//  Chronus
//
//  Created by Aryaa Shah on 2/7/22.
//

import UIKit
import MessageUI
class EmailViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    

    @IBOutlet weak var emailButton: SAButton!
    
    @IBAction func emailButtonTapped(_ sender: SAButton) {
        showMailComposer()
    }
    func showMailComposer() {
        guard MFMailComposeViewController.canSendMail() else {
            return
        }
        let composer = MFMailComposeViewController()
        composer.mailComposeDelegate = self
        composer.setToRecipients(["aashnashah2016@gmail.com"])
        composer.setMessageBody("Hello!", isHTML: false)
        present(composer, animated: true)
    }


}
extension ViewController: MFMailComposeViewControllerDelegate {
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        if let _ = error {
            controller.dismiss(animated: true)
        }
        switch result {
        case .cancelled:
            print("Cancelled")
        case .failed:
            print("Failed to send")
        case .saved:
            print("Saved")
        case .sent:
            print("Email Sent")
        }
        controller.dismiss(animated: true)
    }
}
