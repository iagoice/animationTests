//
//  Constants.swift
//  AnimationTests
//
//  Created by Iago Mordente Rezende Leão Corrêa on 16/07/18.
//  Copyright © 2018 Iago Mordente Rezende Leão Corrêa. All rights reserved.
//

import Foundation
import UIKit

struct Constants {
    static let options = ["Draw shapes", "Draggable View"]
    
    static let zero: CGFloat = 0
    
    struct Texts {
        static let optionsTitle = "Selecione a animação"
    }
    
    struct Sizes {
        static let optionsHeaderHeight: CGFloat = 50
        static let optionsCellHeight: CGFloat = 30
    }
    
    struct Identifiers {
        static let optionsCell = "optionsCellIdentifier"
        static let draggableView = "DraggableView"
        static let drawShapesView = "DrawShapesView"
    }
    
}
