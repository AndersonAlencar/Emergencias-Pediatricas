//
//  TabViewController.swift
//  Emergencias Pediatricas
//
//  Created by Anderson Alencar on 20/09/20.
//

import UIKit

class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        if let count = self.tabBar.items?.count {
//                for i in 0...(count-1) {
//                    let imageNameForSelectedState   = arrayOfImageNameForSelectedState[i]
//                    let imageNameForUnselectedState = arrayOfImageNameForUnselectedState[i]
//
//                    self.tabBar.items?[i].selectedImage = UIImage(named: imageNameForSelectedState)?.withRenderingMode(.alwaysOriginal)
//                    self.tabBar.items?[i].image = UIImage(named: imageNameForUnselectedState)?.withRenderingMode(.alwaysOriginal)
//                }
//            }

            let selectedColor   = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
            let unselectedColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 1.00)

        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: unselectedColor], for: .normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: selectedColor], for: .selected)
    }
    


}
