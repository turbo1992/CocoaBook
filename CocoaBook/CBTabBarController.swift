//
//  CBTabBarController.swift
//  CocoaBook
//
//  Created by Turbo on 2019/4/3.
//  Copyright © 2019 Turbo. All rights reserved.
//

import UIKit
import ESTabBarController_swift

class CBTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "aaaa"
    }
    
    static func customStyle() -> ESTabBarController {
        let tabBarController = ESTabBarController()
        let v1 = UINavigationController.init(rootViewController: HomeViewController())
        let v2 = UINavigationController.init(rootViewController: FindViewController())
        let v3 = UINavigationController.init(rootViewController: PhotoViewController())
        let v4 = UINavigationController.init(rootViewController: FavorViewController())
        let v5 = UINavigationController.init(rootViewController: MeViewController())
        
        v1.tabBarItem = ESTabBarItem.init(title: "Home", image: UIImage(named: "home"), selectedImage: UIImage(named: "home_1"))
        v1.tabBarItem.badgeValue = "2"
        v1.tabBarItem.badgeColor = UIColor.red
        v2.tabBarItem = ESTabBarItem.init(title: "Find", image: UIImage(named: "find"), selectedImage: UIImage(named: "find_1"))
        v3.tabBarItem = ESTabBarItem.init(title: "Photo", image: UIImage(named: "photo"), selectedImage: UIImage(named: "photo_1"))
        v4.tabBarItem = ESTabBarItem.init(title: "Favor", image: UIImage(named: "favor"), selectedImage: UIImage(named: "favor_1"))
        v5.tabBarItem = ESTabBarItem.init(title: "Me", image: UIImage(named: "me"), selectedImage: UIImage(named: "me_1"))
        
        tabBarController.viewControllers = [v1, v2, v3, v4, v5]
        
        return tabBarController
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
