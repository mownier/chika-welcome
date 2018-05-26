//
//  ViewController.swift
//  ChikaWelcome
//
//  Created by Mounir Ybanez on 5/25/18.
//  Copyright © 2018 Nir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var scene: Scene!

    override func loadView() {
        super.loadView()
        
        scene = Factory().build()
        view.addSubview(scene.view)
        addChildViewController(scene)
        scene.didMove(toParentViewController: self)
    }
    
    override func viewDidLayoutSubviews() {
        scene.view.frame = view.bounds
    }
    
}

