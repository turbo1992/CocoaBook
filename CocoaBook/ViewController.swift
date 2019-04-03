//
//  ViewController.swift
//  CocoaBook
//
//  Created by Turbo on 2019/4/3.
//  Copyright © 2019 Turbo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.white
        self.navigationItem.title = "swift"
        
        let icon = UIButton()
        icon.setTitle("click", for: UIControl.State.normal)
        icon.addTarget(self, action:  #selector(tabbarClick), for: .touchUpInside)
        icon.frame = CGRect.init(x: 100, y: 300, width: 200, height: 50)
        icon.backgroundColor = UIColor.brown
        self.view.addSubview(icon)
    }
    
    @objc func tabbarClick() {
        print("click...")
        self.present(CBTabBarController.customStyle(), animated: true, completion: nil)
    }
}

