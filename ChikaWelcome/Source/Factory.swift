//
//  Factory.swift
//  ChikaWelcome
//
//  Created by Mounir Ybanez on 5/25/18.
//  Copyright © 2018 Nir. All rights reserved.
//

import UIKit

public final class Factory {

    private var theme: Theme?
    private var onShowSignIn: (() -> Void)?
    private var onShowRegistration: (() -> Void)?
    
    public init() {
        self.theme = Theme()
    }
    
    public func withTheme(_ block: @escaping () -> Theme) -> Factory {
        theme = block()
        return self
    }
    
    public func onShowSignIn(_ block: @escaping () -> Void) -> Factory {
        onShowSignIn = block
        return self
    }
    
    public func onShowRegistration(_ block: @escaping () -> Void) -> Factory {
        onShowRegistration = block
        return self
    }
    
    public func build() -> Scene {
        defer {
            theme = nil
            onShowSignIn = nil
            onShowRegistration = nil
        }
        let bundle = Bundle(for: Factory.self)
        let storyboard = UIStoryboard(name: "Welcome", bundle: bundle)
        let scene = storyboard.instantiateInitialViewController() as! Scene
        scene.theme = theme
        scene.onSignIn = onShowSignIn
        scene.onRegister = onShowRegistration
        return scene
    }
    
}
