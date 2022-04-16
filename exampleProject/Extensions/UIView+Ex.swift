//
//  UIView+Ex.swift
//  exampleProject
//
//  Created by Ali Can Tozlu on 16.04.2022.
//

import UIKit

extension UIView {
    @available(iOS 11.0, *)
    public func cornerConfigure(cornerRadius: Double, borderColor: CGColor, borderWidth: Double) {
        self.clipsToBounds = true
        self.layer.cornerRadius = cornerRadius
        self.layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMaxYCorner,.layerMaxXMinYCorner,.layerMinXMinYCorner]
        self.layer.borderColor = borderColor
        self.layer.borderWidth = borderWidth
    }
}
