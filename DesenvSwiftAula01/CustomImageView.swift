//
//  CustomImageView.swift
//  DesenvSwiftAula01
//
//  Created by Usuário Convidado on 24/03/18.
//  Copyright © 2018 Fellipe Oliveira. All rights reserved.
//

import UIKit

@IBDesignable class CustomImageView: UIImageView {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = .white {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
}
