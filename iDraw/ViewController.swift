//
//  ViewController.swift
//  iDraw
//
//  Created by Frezy Stone Mboumba on 7/19/16.
//  Copyright © 2016 Frezy Stone Mboumba. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    var finalPoint: CGPoint!
    var isDrawing: Bool!
    var lineWidth: CGFloat = 4.0


    var toolImageView: UIImageView!
    
    enum Tools: String {
        
        case Brush, Eraser
    }
    
    
    @IBOutlet weak var boardImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        toolImageView = UIImageView()
        toolImageView.frame = CGRect(x: self.view.bounds.width/2, y: self.view.bounds.height/2, width: 30, height: 30)
        toolImageView.image = UIImage(named: Tools.Brush.rawValue.lowercaseString)
        view.addSubview(toolImageView)
        
        red = 0.0/255.0
        green = 0.0/255.0
        blue = 0.0/255.0

        
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        isDrawing = false
        if let touch = touches.first {
            finalPoint = touch.preciseLocationInView(boardImageView)
        }
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        isDrawing = true
        
        if let touch = touches.first {
            
            let currentCoordinate = touch.preciseLocationInView(boardImageView)
            
            UIGraphicsBeginImageContext(boardImageView.frame.size)
            self.boardImageView.image?.drawInRect(CGRectMake(0, 0, self.boardImageView.frame.size.width, self.boardImageView.frame.size.height))
            CGContextMoveToPoint(UIGraphicsGetCurrentContext(), finalPoint.x, finalPoint.y)
            CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), currentCoordinate.x, currentCoordinate.y)
            CGContextSetLineCap(UIGraphicsGetCurrentContext(), CGLineCap.Round)
            CGContextSetLineWidth(UIGraphicsGetCurrentContext(), lineWidth)
            CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), red, green, blue, 1.0)
            CGContextStrokePath(UIGraphicsGetCurrentContext())
            self.boardImageView.image = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            finalPoint = currentCoordinate
            toolImageView.center = currentCoordinate
       
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if (!isDrawing) {
            
            UIGraphicsBeginImageContext(boardImageView.frame.size)
            self.boardImageView.image?.drawInRect(CGRectMake(0, 0, self.boardImageView.frame.size.width, self.boardImageView.frame.size.height))
            CGContextMoveToPoint(UIGraphicsGetCurrentContext(), finalPoint.x, finalPoint.y)
            CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), finalPoint.x, finalPoint.y)
            CGContextSetLineCap(UIGraphicsGetCurrentContext(), CGLineCap.Round)
            CGContextSetLineWidth(UIGraphicsGetCurrentContext(), lineWidth)
            CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), red, green, blue, 1.0)
            CGContextStrokePath(UIGraphicsGetCurrentContext())
            self.boardImageView.image = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
   
        }
    }
    @IBAction func changeColor(sender: AnyObject) {
    performSegueWithIdentifier("showColor", sender: self)
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showColor" {
            
            let vc = segue.destinationViewController as! UINavigationController
            let controller = vc.popoverPresentationController
            if controller != nil {
                controller?.delegate = self
            }
        }
    }
    
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
    }
    @IBAction func saveDrawing(sender: AnyObject) {
        if self.boardImageView.image == nil {
            return
        }
        if let img = self.boardImageView.image {
            UIImageWriteToSavedPhotosAlbum(img, self, #selector(ViewController.image(_:withPotentialError:contextInfo:)), nil)
        }
    }
    @IBAction func undoDrawing(sender: AnyObject) {
        self.boardImageView.image = nil
    }
    
    func image(image: UIImage, withPotentialError error: NSErrorPointer, contextInfo: UnsafePointer<()>){
        
        let alertView = SCLAlertView()
        alertView.showSuccess("Great😎", subTitle: "Your drawing has been saved successfuly to your Photos Album")
      
    }
    
    @IBAction func draw(sender: AnyObject) {
       
        toolImageView.image = UIImage(named: Tools.Brush.rawValue.lowercaseString)
        lineWidth = 4

    }
    @IBAction func erase(sender: AnyObject) {
        red = 1.0
        green = 1.0
        blue = 1.0
        toolImageView.image = UIImage(named: Tools.Eraser.rawValue.lowercaseString)
        lineWidth = 14
    }
    @IBAction func editSettings(sender: AnyObject) {
        
    }
    
    
    
}

