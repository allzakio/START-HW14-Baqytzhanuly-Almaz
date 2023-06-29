//
//  TabBarController.swift
//  START-HW14-Baqytzhanuly Almaz
//
//  Created by allz on 6/29/23.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.tintColor = .systemBlue
        tabBar.backgroundColor = .white

        setupTabBarViewControllers()
    }
    
    func setupTabBarViewControllers() {
        let mediaLibrary = UIViewController()
        mediaLibrary.tabBarItem = UITabBarItem(title: "Медиатека",
                                               image: UIImage(systemName: "photo.fill.on.rectangle.fill"),
                                               tag: 0)
        mediaLibrary.view.backgroundColor = .systemBackground
        let mediaLibraryNavigationController = UINavigationController(rootViewController: mediaLibrary)
        
        let forYou = UIViewController()
        forYou.tabBarItem = UITabBarItem(title: "Для Вас",
                                         image: UIImage(systemName: "heart.text.square.fill"),
                                         tag: 1)
        forYou.view.backgroundColor = .systemBackground
        let forYouNavigationController = UINavigationController(rootViewController: forYou)
        
        let albums = MainViewController()
        albums.tabBarItem = UITabBarItem(title: "Альбомы",
                                         image: UIImage(systemName: "square.stack.fill"),
                                         tag: 2)
        albums.view.backgroundColor = .systemBackground
        let albumsNavigationController = UINavigationController(rootViewController: albums)
        
        let search = UIViewController()
        search.tabBarItem = UITabBarItem(title: "Поиск",
                                         image: UIImage(systemName: "magnifyingglass"),
                                         tag: 3)
        search.view.backgroundColor = .systemBackground
        let searchNavigationController = UINavigationController(rootViewController: search)
        
        let controllers = [mediaLibraryNavigationController,
                           albumsNavigationController,
                           forYouNavigationController,
                           searchNavigationController]
        
        self.setViewControllers(controllers, animated: true)
    }
}
