//
//  Colors.swift
//  Salomon
//
//  Created by Frezy Stone Mboumba on 12/13/15.
//  Copyright © 2015 MaranathApp. All rights reserved.
//

import Foundation
import UIKit


struct Colors {
    
    let colorBookValue = [[123/255,93/255,200/255],[90/255.0,187/255.0,181/255.0],[222/255.0, 171/255.0, 66/255.0],[223/255.0, 86/255.0, 94/255.0],[239/255.0,130/255.0,100/255.0],[77/255.0,75/255.0,82/255.0],[105/255.0,94/255.0,133/255.0],[85/255.0,176/255.0,112/255.0],[123/255.0,186/255.0,94/255.0],[39/255.0,130/255.0,200/255.0],[45/255.0,194/255.0,133/255.0],[85/255.0,176/255.0,212/255.0],[190/255.0,107/255.0,68/255.0],[200/255.0,91/255.0,150/255.0],[239/255.0,90/255.0,70/255.0],[155/255.0,109/255.0,133/255.0],[105/255.0,94/255.0,153/255.0],[0/255.0,0/255.0,0/255.0],[255.0/255.0,255.0/255.0,255.0/255.0],[50/255.0,23/255.0,90/255.0],[89/255.0,10/255.0,200/255.0],[45/255.0,104/255.0,113/255.0],[0/255.0,176/255.0,202/255.0],[190/255.0,0/255.0,68/255.0],[150/255.0,191/255.0,100/255.0],[2300/255.0,16/255.0, 22/255.0],[100/255.0,101/255.0,68/255.0],[50/255.0,110/255.0,250/255.0]]
    
    let colorBook = [UIColor(red: 123/255, green: 93/255, blue: 200/255, alpha: 1.0),
                      UIColor(red: 90/255.0, green: 187/255.0, blue: 181/255.0, alpha: 1.0),
                      UIColor(red: 222/255.0, green: 171/255.0, blue: 66/255.0, alpha: 1.0),
                      UIColor(red: 223/255.0, green: 86/255.0, blue: 94/255.0, alpha: 1.0),
                      UIColor(red: 239/255.0, green: 130/255.0, blue: 100/255.0, alpha: 1.0),
                      UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 1.0),
                      UIColor(red: 105/255.0, green: 94/255.0, blue: 133/255.0, alpha: 1.0),
                      UIColor(red: 85/255.0, green: 176/255.0, blue: 112/255.0, alpha: 1.0),
                      UIColor(red: 123/255.0, green: 186/255.0, blue: 94/255.0, alpha: 1.0),
                      UIColor(red: 39/255.0, green: 130/255.0, blue: 200/255.0, alpha: 1.0),
                      UIColor(red: 45/255.0, green: 194/255.0, blue: 133/255.0, alpha: 1.0),
                      UIColor(red: 85/255.0, green: 176/255.0, blue: 212/255.0, alpha: 1.0),
                      UIColor(red: 190/255.0, green: 107/255.0, blue: 68/255.0, alpha: 1.0),
                      UIColor(red: 200/255.0, green: 91/255.0, blue: 150/255.0, alpha: 1.0),
                      UIColor(red: 239/255.0, green: 90/255.0, blue: 70/255.0, alpha: 1.0),
                      UIColor(red: 155/255.0, green: 109/255.0, blue: 133/255.0, alpha: 1.0),
                      UIColor(red: 105/255.0, green: 94/255.0, blue: 153/255.0, alpha: 1.0),
                      UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0),
                      UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0),
                      UIColor(red: 50/255.0, green: 23/255.0, blue: 90/255.0, alpha: 1.0),
                      UIColor(red: 89/255.0, green: 10/255.0, blue: 200/255.0, alpha: 1.0),
                      UIColor(red: 45/255.0, green: 104/255.0, blue: 113/255.0, alpha: 1.0),
                      UIColor(red: 0/255.0, green: 176/255.0, blue: 202/255.0, alpha: 1.0),
                      UIColor(red: 190/255.0, green: 0/255.0, blue: 68/255.0, alpha: 1.0),
                      UIColor(red: 150/255.0, green: 191/255.0, blue: 100/255.0, alpha: 1.0),
                      UIColor(red: 2300/255.0, green: 16/255.0, blue: 22/255.0, alpha: 1.0),
                      UIColor(red: 100/255.0, green: 101/255.0, blue: 68/255.0, alpha: 1.0),
                      UIColor(red: 50/255.0, green: 110/255.0, blue: 250/255.0, alpha: 1.0)]
    

    func randomColor()-> UIColor{
        return colorBook[Int(arc4random_uniform(UInt32(colorBook.count)))]
    }
    
    func randomColorValue()-> [CGFloat]{
        return colorBookValue[Int(arc4random_uniform(UInt32(colorBook.count)))] as! [CGFloat]
    }
}
