//
//  Extensions.swift
//  m13_2
//
//  Created by Сергей Залукаев on 19.04.2022.
//

import UIKit

extension UIViewController {
    
    func setupButton (_ vc: UIViewController? = nil) {
        let nextButton = UIButton()
        nextButton.setTitleColor(.black, for: .normal)
        view.backgroundColor = .white
        if vc != nil {
            nextButton.setTitle("Next Scene", for: .normal)
        }
        else {
            nextButton.setTitle("Alert", for: .normal)
        }
        
        nextButton.addAction(UIAction(handler: {[weak self] _ in
            if let a = vc {
                vc?.view.backgroundColor = .white
                self?.navigationController?.pushViewController(a, animated: true)}
            else {
                let alert = self?.showAlert()
                self?.present(alert!, animated: true)
            }
        }), for: .touchUpInside)
        view.addSubview(nextButton)
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
    }
    
    private func showAlert() -> UIViewController {
        let alert = UIAlertController(title: "ALERT",
                                      message: "This is the last screen!",
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        return alert
    }  
}

