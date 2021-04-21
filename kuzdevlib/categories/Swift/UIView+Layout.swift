//
//  UIViewController+Layout.swift
//  kuzdevlib
//
//  Created by Mikhail Kuzevanov on 21.04.2021.
//  Copyright © 2021 kuz-dev.ru. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
    @discardableResult func kdlLayoutToBottomGuide(guide: UILayoutGuide, constant: CGFloat)->NSLayoutConstraint{
        let constraint = self.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: constant)
        NSLayoutConstraint.activate([
            constraint
        ])
        return constraint
    }
    
    @discardableResult func kdlLayoutToTopGuide(guide: UILayoutGuide, constant: CGFloat)->NSLayoutConstraint{
        let constraint = self.topAnchor.constraint(equalTo: guide.topAnchor, constant: constant)
        NSLayoutConstraint.activate([
            constraint
        ])
        return constraint
    }
    
    
    
    func kdlLayoutToLeft(left: CGFloat){
        guard let superview = superview else { fatalError("superview not setted") }
        translatesAutoresizingMaskIntoConstraints = false
        superview.addConstraint(NSLayoutConstraint(item: self,
                                                   attribute: .left,
                                                   relatedBy: .equal,
                                                   toItem: superview,
                                                   attribute: .left,
                                                   multiplier: 1,
                                                   constant: left))
    }
    
    func kdlLayoutToRight(right: CGFloat){
        guard let superview = superview else { fatalError("superview not setted") }
        translatesAutoresizingMaskIntoConstraints = false
        superview.addConstraint(NSLayoutConstraint(item: self,
                                                   attribute: .right,
                                                   relatedBy: .equal,
                                                   toItem: superview,
                                                   attribute: .right,
                                                   multiplier: 1,
                                                   constant: right))
    }
    
}
