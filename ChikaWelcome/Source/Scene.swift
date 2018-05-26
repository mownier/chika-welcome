//
//  Scene.swift
//  ChikaWelcome
//
//  Created by Mounir Ybanez on 5/25/18.
//  Copyright © 2018 Nir. All rights reserved.
//

import UIKit

public final class Scene: UIViewController {
    
    var theme: Theme?
    var onSignIn: (() -> Void)?
    var onRegister: (() -> Void)?
    
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    public override func loadView() {
        super.loadView()
        
        signInButton.layer.cornerRadius = 3
        signInButton.layer.masksToBounds = true
        signInButton.layer.borderWidth = 1
        
        registerButton.layer.cornerRadius = 3
        registerButton.layer.masksToBounds = true
        registerButton.layer.borderWidth = 1
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = theme?.backgroundColor
        
        signInButton.backgroundColor = theme?.secondaryButtonBGColor
        signInButton.setTitleColor(theme?.secondaryButtonTextColor, for: .normal)
        signInButton.layer.borderColor = theme?.secondaryButtonBorderColor?.cgColor
        signInButton.titleLabel?.font = theme?.buttonFont
        
        registerButton.backgroundColor = theme?.primaryButtonBGColor
        registerButton.setTitleColor(theme?.primaryButtonTextColor, for: .normal)
        registerButton.layer.borderColor = theme?.primaryButtonBorderColor?.cgColor
        registerButton.titleLabel?.font = theme?.buttonFont
        
        appNameLabel.font = theme?.appNameLabelFont
    }
    
    @IBAction func signIn() {
        onSignIn?()
    }
    
    @IBAction func register() {
        onRegister?()
    }
    
}

