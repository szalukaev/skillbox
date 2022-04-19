//
//  SceneDelegate.swift
//  m13_2
//
//  Created by Сергей Залукаев on 12.04.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    let mainViewController = MainVC()
//    Для каждого экрана нужно реализовать свой ViewController. Задание не будет засчитано, если будет дублироваться код создания элементов UI и добавления constraints. Для решения этой проблемы используйте Extension.

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        
        //Задаем рутовую вьюку как TabController
        window.rootViewController = createTabBarController()
        self.window = window
        //Делаем окно видимым и в фокусе
        window.makeKeyAndVisible()
    }
    
    func createTabBarController() -> UITabBarController {
        let tabBarController = UITabBarController()
        UITabBar.appearance().unselectedItemTintColor = UIColor.red
        tabBarController.viewControllers = [mainViewController,
                                            createNBOneViewController(),
                                            createNBTwoViewController()]
        return tabBarController
        
    }
    
    func createNBOneViewController() -> UINavigationController {
        let navigationOne = NBOneVCOne()
        navigationOne.title = "NB1 View 1"
        navigationOne.view.backgroundColor = .white
        navigationOne.tabBarItem = UITabBarItem(title: "NB1 View1", image: UIImage(systemName: "bookmark.fill"), tag: 0)
        return UINavigationController(rootViewController: navigationOne)
    }
    
    func createNBTwoViewController() -> UINavigationController {
        let navigationOne = NBTwoVCOne()
        navigationOne.title = "NB2 View 1"
        navigationOne.view.backgroundColor = .white
        navigationOne.tabBarItem = UITabBarItem(title: "NB2 View1", image: UIImage(systemName: "bookmark.fill"), tag: 0)
        return UINavigationController(rootViewController: navigationOne)
    }


    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

