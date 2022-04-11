//
//  MainViewController.swift
//  m13
//
//  Created by Сергей Залукаев on 11.04.2022.
//

import UIKit



class mainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func mainAlert(_ sender: Any) {
        let alert = self.showAlert()
        self.present(alert, animated: true)
    }
    
private func showAlert() -> UIViewController {
    let alert = UIAlertController(title: "ALERT",
                                  message: "This is the last screen!",
                                  preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    return alert
}
}
