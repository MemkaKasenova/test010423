//
//  SceneDelegate.swift
//  test010423
//
//  Created by merim kasenova on 1/4/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
       
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        
        let startVC = StartViewController()
        
        let navController = UINavigationController(rootViewController: startVC)
        
        let item1 = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house"))
        navController.tabBarItem = item1
        
        let secondVC = SecondViewController()
        
        let item2 = UITabBarItem(title: "Favorite", image: UIImage(systemName: "suit.heart"), selectedImage: UIImage(systemName: "suit.heart"))
        secondVC.tabBarItem = item2
        
        
        
        let item3 = UITabBarItem(title: "Cart", image: UIImage(systemName: "cart.fill"), selectedImage: UIImage(systemName: "cart.fill"))
        secondVC.tabBarItem = item3
        
        let item4 = UITabBarItem(title: "My orders", image: UIImage(systemName: "tray.full"), selectedImage: UIImage(systemName: "tray.full"))
        secondVC.tabBarItem = item4
        
        
        let tabController = UITabBarController()
        tabController.viewControllers = [navController, secondVC]
        tabController.tabBar.backgroundColor = .white
        
        window.rootViewController = tabController
        self.window = window
        self.window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
      
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
     
    }

    func sceneWillResignActive(_ scene: UIScene) {
        
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
       
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
       
    }


}

