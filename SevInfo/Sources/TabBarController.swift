//
//  TabBarController.swift
//  SevInfo
//
//  Created by Stanislav Povolotskiy on 26.02.2020.
//  Copyright © 2020 Stanislav Povolotskiy. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let listVC = ListVC(collectionViewLayout: UICollectionViewFlowLayout())
//        let mapVC: UIViewController = UIStoryboard(name: "MapVC", bundle: nil).instantiateViewController(withIdentifier: "mapVCId") as UIViewController
        let mapVC = MapVC()
        let cameraVC = CameraVC()
        let aboutCityVC = AboutCityVC()
        let settingsVC = SettingsVC()
        
        viewControllers = [
            generateNavigationController(rootViewController: aboutCityVC, title: "City", image: #imageLiteral(resourceName: "info")),
            generateNavigationController(rootViewController: listVC, title: "List", image: #imageLiteral(resourceName: "list")),
            generateNavigationController(rootViewController: cameraVC, title: "Camera", image: #imageLiteral(resourceName: "camera")),
            generateNavigationController(rootViewController: mapVC, title: "Map", image: #imageLiteral(resourceName: "map")),
            generateNavigationController(rootViewController: settingsVC, title: "Settings", image: #imageLiteral(resourceName: "settings"))
            
        ]
    }
    
    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }

}
