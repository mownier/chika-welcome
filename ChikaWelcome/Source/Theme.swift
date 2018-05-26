//
//  Theme.swift
//  ChikaWelcome
//
//  Created by Mounir Ybanez on 5/25/18.
//  Copyright © 2018 Nir. All rights reserved.
//

import UIKit

public final class Theme {
    
    public var backgroundColor: UIColor?
    public var appNameLabelFont: UIFont?
    public var buttonFont: UIFont?
    public var primaryButtonTextColor: UIColor?
    public var primaryButtonBGColor: UIColor?
    public var primaryButtonBorderColor: UIColor?
    public var secondaryButtonTextColor: UIColor?
    public var secondaryButtonBGColor: UIColor?
    public var secondaryButtonBorderColor: UIColor?
    
    public init() {
        self.backgroundColor = .white
        self.appNameLabelFont = UIFont.systemFont(ofSize: 32, weight: .bold)
        self.buttonFont = UIFont.systemFont(ofSize: 20)
        self.primaryButtonTextColor = UIColor.black
        self.primaryButtonBGColor = UIColor.white
        self.primaryButtonBorderColor = UIColor.black
        self.secondaryButtonTextColor = UIColor.white
        self.secondaryButtonBGColor = UIColor.black
        self.secondaryButtonBorderColor = UIColor.black
    }
    
}

