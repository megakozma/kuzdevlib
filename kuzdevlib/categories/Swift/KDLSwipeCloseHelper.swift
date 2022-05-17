//
//  KDLSwipeCloseHelper.swift
//  kuzdevlib
//
//  Created by Mikhail Kuzevanov on 17.05.2022.
//  Copyright © 2022 kuz-dev.ru. All rights reserved.
//

import Foundation
import UIKit

public typealias KDLVoidEvent = ()->Void

public class KDLSwipeCloseHelper {
    
    private var view: UIView? = nil
    private var dismiss: KDLVoidEvent? = nil
    private var bottomConstraint: NSLayoutConstraint?
    
    
    func setToView(view: UIView, bottomConstraint: NSLayoutConstraint?, dismiss: KDLVoidEvent?){
        self.view = view
        self.dismiss = dismiss
        self.bottomConstraint = bottomConstraint
        let gest = UIPanGestureRecognizer(target: self, action: #selector(panGestureRecognizerHandler(_:)))
        view.addGestureRecognizer(gest)
    }
    
    private var initialTouchPoint: CGPoint = CGPoint(x: 0,y: 0)
    private var prevTouchPoint: CGPoint = CGPoint(x: 0,y: 0)
    private var initialBottomValue: CGFloat = 0
    private var movingDown = false
    
    @objc private func panGestureRecognizerHandler(_ sender: UIPanGestureRecognizer) {
        guard let view = view,
              let superview = view.superview,
              let bottomConstraint = bottomConstraint else { return  }
        let touchPoint = sender.location(in: superview)
        
        if sender.state == .began {
            initialTouchPoint = touchPoint
            prevTouchPoint = touchPoint
            initialBottomValue = bottomConstraint.constant
        } else if sender.state == .changed {
            let indent = touchPoint.y - initialTouchPoint.y
            movingDown = touchPoint.y > prevTouchPoint.y
            bottomConstraint.constant = initialBottomValue+indent
            prevTouchPoint = touchPoint
            
        } else if sender.state == .ended || sender.state == .cancelled {
            if movingDown{
                bottomConstraint.constant = view.bounds.height
                UIView.animate(withDuration: 0.3) {
                    superview.layoutIfNeeded()
                } completion: { (_) in
                    if let dismiss = self.dismiss{
                        dismiss()
                    }
                }
            }
            else{
                bottomConstraint.constant = initialBottomValue
                superview.layoutIfNeeded()
            }

        }
    }
}
