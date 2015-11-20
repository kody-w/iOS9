//
//  FocusView.swift
//  CustomViewFun
//
//  Created by kody on 11/4/15.
//  Copyright © 2015 Kodyw. All rights reserved.
//

import UIKit

class FocusView: UIView {

    
    override func canBecomeFocused() -> Bool {
        return true
    }
    
    override func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator) {
        
    
        if context.previouslyFocusedView === self {
            UIView.animateWithDuration(0.1, animations: { () -> Void in
                context.previouslyFocusedView?.transform = CGAffineTransformMakeScale(1.0, 1.0)
            })
            
    }
        
        if context.nextFocusedView === self {
            UIView.animateWithDuration(0.1, animations: { () -> Void in
                context.nextFocusedView?.transform = CGAffineTransformMakeScale(1.2, 1.2)
            })
        }
    
    
    
    }
}
