//
//  Constants.swift
//  m12
//
//  Created by Сергей Залукаев on 31.03.2022.
//

import UIKit

enum Constants {
    enum Colors {
        static var gold: UIColor?{
            UIColor(named: "Gold")
        }
        static var gray01: UIColor?{
            UIColor(named: "Gray01")
        }
        static var gray02: UIColor?{
            UIColor(named: "Gray02")
        }
    }
    enum Fonts {
        static var ui30Medium: UIFont? {
            UIFont(name: "Inter-Medium", size: 24)
        }
        static var ui30Regular: UIFont? {
            UIFont(name: "Inter-Regular", size: 30)
        }
        static var ui14SemiBold: UIFont? {
            UIFont(name: "Inter-SemiBold", size: 14)
        }
        static var systemText: UIFont {
            UIFont.systemFont(ofSize: 26, weight: .bold)
        }
    }
    enum Images {
        static let star = UIImage(named: "Star")
    }
    
    enum Text {
        static let cat = Bundle.main.localizedString(forKey: "Cat", value: "", table: "Localizable")
        static let dog = Bundle.main.localizedString(forKey: "Label.Dog", value: "", table: "Localizable")
        static let bird = Bundle.main.localizedString(forKey: "Main.Label.Bird", value: "", table: "Localizable")
        static let lakeCarp = Bundle.main.localizedString(forKey: "Lace carp", value: "", table: "Localizable")
    }
}
