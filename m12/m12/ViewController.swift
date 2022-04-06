//
//  ViewController.swift
//  m12
//
//  Created by Сергей Залукаев on 31.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - View
   //Инициализируем лейблы и задаем им свойства
    private lazy var label1: UILabel = {
        let label = UILabel()
        label.text = Constants.Text.cat
        label.textColor = Constants.Colors.gold
        label.font = Constants.Fonts.ui14SemiBold
        return label
    }()
    
    private lazy var label2: UILabel = {
        let label = UILabel()
        label.text = Constants.Text.dog
        label.textColor = Constants.Colors.gray01
        label.font = Constants.Fonts.ui30Regular
        return label
    }()
    
    private lazy var label3: UILabel = {
        let label = UILabel()
        label.text = Constants.Text.bird
        label.textColor = Constants.Colors.gray02
        label.font = Constants.Fonts.ui30Medium
        return label
    }()
    
    private lazy var label4: UILabel = {
        let label = UILabel()
        let text = Constants.Text.lakeCarp
        let attributedString: NSMutableAttributedString =
            NSMutableAttributedString (string: text)
        if let spaceIndex = text.firstIndex(of: " ") {
            attributedString.addAttribute(
                .foregroundColor,
                value: UIColor.systemYellow,
                range: NSRange(text.startIndex ..< spaceIndex, in: text))
            
            attributedString.addAttribute(
                .foregroundColor,
                value: UIColor.systemRed,
                range: NSRange(spaceIndex ..< text.endIndex, in: text))
        }
        label.attributedText = attributedString
        return label
    }()
    
    private lazy var imageStar: UIImageView = {
        let imageStar = UIImageView()
        imageStar.image = Constants.Images.star
        imageStar.tintColor = Constants.Colors.gold
        return imageStar
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 16
        stackView.addArrangedSubview(label1)
        stackView.addArrangedSubview(label2)
        stackView.addArrangedSubview(label3)
        stackView.addArrangedSubview(label4)
        stackView.addArrangedSubview(imageStar)
        return stackView
    }()
    
    //MARK: -Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }

    //MARK: -Private
    private func setupViews() {
        view.addSubview(stackView)
        view.backgroundColor = .systemCyan
    }
    private func setupConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        stackView.widthAnchor.constraint(equalToConstant: 250).isActive = true
    }
}

