import UIKit

class MainVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Main View"
        view.backgroundColor = .white
        tabBarItem = UITabBarItem(title: "View 1", image: UIImage(systemName: "bookmark.fill"), tag: 0)
        setupButton()
        // Do any additional setup after loading the view.
    }
}
