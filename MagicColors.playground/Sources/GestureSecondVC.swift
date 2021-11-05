import Foundation
import UIKit

//Variables
var pangestureBlueBrush = UIPanGestureRecognizer()
var pangestureRedBrush = UIPanGestureRecognizer()
var pangestureYellowBrush = UIPanGestureRecognizer()
var pangestureWhiteBrush = UIPanGestureRecognizer()
var pangestureBlackBrush = UIPanGestureRecognizer()

//Define the gesture of brushes
extension SecondViewController{
  
    public func addGestureBrushes(){
        
        blueBrush.isUserInteractionEnabled = true
        pangestureBlueBrush = UIPanGestureRecognizer.init(target: self, action: #selector(blueBrushviewDidDragged))
        blueBrush.addGestureRecognizer((pangestureBlueBrush))
        
        redBrush.isUserInteractionEnabled = true
        pangestureRedBrush = UIPanGestureRecognizer.init(target: self, action: #selector(redBrushviewDidDragged))
        redBrush.addGestureRecognizer((pangestureRedBrush))
        
        yellowBrush.isUserInteractionEnabled = true
        pangestureYellowBrush = UIPanGestureRecognizer.init(target: self, action: #selector(yellowBrushviewDidDragged))
        yellowBrush.addGestureRecognizer((pangestureYellowBrush))
        
        whiteBrush.isUserInteractionEnabled = true
        pangestureWhiteBrush = UIPanGestureRecognizer.init(target: self, action: #selector(whiteBrushviewDidDragged))
        whiteBrush.addGestureRecognizer((pangestureWhiteBrush))
        
        
        blackBrush.isUserInteractionEnabled = true
        pangestureBlackBrush = UIPanGestureRecognizer.init(target: self, action: #selector(blackBrushviewDidDragged))
        blackBrush.addGestureRecognizer((pangestureBlackBrush))
    }
    
    @objc public func blueBrushviewDidDragged(){
        
        let newpoint = pangestureBlueBrush.location(in: view)
        let newframe = CGRect(origin: CGPoint(x: newpoint.x, y: newpoint.y), size: CGSize (width: blueBrush.frame.size.width, height:
            blueBrush.frame.size.height))
        blueBrush.frame = newframe
        
        if pangestureBlueBrush.state == UIGestureRecognizerState.ended{
            if canvas.frame.contains(blueBrush.frame){
                if (stain.image  == UIImage(named: "Stains/empty.png")){
                    stain.image  = UIImage(named: "Stains/blue.png")
                    
                } else if (stain.image  == UIImage(named: "Stains/red.png")){
                    stain.image  = UIImage(named: "Stains/purple.png")
                    
                }else if (stain.image  == UIImage(named: "Stains/yellow.png")){
                    stain.image  = UIImage(named: "Stains/green.png")
                }else if (stain.image  == UIImage (named: "Stains/orange.png")){
                    stain.image  = UIImage(named: "Stains/brown.png")
                }
                else if (stain.image  == UIImage (named: "Stains/white.png")){
                    stain.image  = UIImage(named: "Stains/lightBlue.png")
                } else if (stain.image  == UIImage (named: "Stains/black.png")){
                    stain.image  = UIImage(named: "Stains/darkBlue.png")
                }
                else{
                    stain.image  = UIImage(named: "Stains/blue.png")
                }
            }
        }
    }
    
    
    @objc public func redBrushviewDidDragged(){
        
        let newpoint = pangestureRedBrush.location(in: view)
        let newframe = CGRect(origin: CGPoint(x: newpoint.x, y: newpoint.y), size: CGSize (width: redBrush.frame.size.width, height:
            redBrush.frame.size.height))
        redBrush.frame = newframe
        
        if pangestureRedBrush.state == UIGestureRecognizerState.ended{
            if canvas.frame.contains(redBrush.frame){
                if (stain.image  == nil){
                    stain.image  = UIImage(named: "Stains/red.png")
                    
                } else if (stain.image  == UIImage(named: "Stains/blue.png")){
                    stain.image  = UIImage(named: "Stains/purple.png")
                    
                }else if (stain.image  == UIImage(named: "Stains/yellow.png")){
                    stain.image  = UIImage(named: "Stains/orange.png")
                }else if (stain.image  == UIImage (named: "Stains/green.png")){
                    stain.image  = UIImage(named: "Stains/brown.png")
                }
                else if (stain.image == UIImage (named: "Stains/white.png")){
                    stain.image  = UIImage(named: "Stains/lightRed.png")
                } else if (stain.image  == UIImage (named: "Stains/black.png")){
                    stain.image  = UIImage(named: "Stains/darkRed.png")
                }
                else{
                    stain.image  = UIImage(named: "Stains/red.png")
                }
            }
        }
    }
    
    
    @objc public func yellowBrushviewDidDragged(){
        
        let newpoint = pangestureYellowBrush.location(in: view)
        let newframe = CGRect(origin: CGPoint(x: newpoint.x, y: newpoint.y), size: CGSize (width: yellowBrush.frame.size.width, height:
            yellowBrush.frame.size.height))
        yellowBrush.frame = newframe
        
        if pangestureYellowBrush.state == UIGestureRecognizerState.ended{
            if canvas.frame.contains(yellowBrush.frame){
                if (stain.image  == nil){
                    stain.image  = UIImage(named: "Stains/yellow.png")
                } else if (stain.image  == UIImage(named: "Stains/blue.png")){
                    stain.image  = UIImage(named: "Stains/green.png")
                }else if (stain.image  == UIImage(named: "Stains/red.png")){
                    stain.image  = UIImage(named: "Stains/orange.png")
                }else if (stain.image  == UIImage (named: "Stains/purple.png")){
                    stain.image  = UIImage(named: "Stains/brown.png")
                }
                else if (stain.image  == UIImage (named: "Stains/white.png")){
                    stain.image  = UIImage(named: "Stains/lightYellow.png")
                } else if (stain.image  == UIImage (named: "Stains/black.png")){
                    stain.image  = UIImage(named: "Stains/darkYellow.png")
                }
                else{
                    stain.image  = UIImage(named: "Stains/yellow.png")
                }
            }
        }
    }
    
    @objc public func whiteBrushviewDidDragged(){
        
        let newpoint = pangestureWhiteBrush.location(in: view)
        let newframe = CGRect(origin: CGPoint(x: newpoint.x, y: newpoint.y), size: CGSize (width: whiteBrush.frame.size.width, height:
            whiteBrush.frame.size.height))
        whiteBrush.frame = newframe
        
        if pangestureWhiteBrush.state == UIGestureRecognizerState.ended{
            if canvas.frame.contains(whiteBrush.frame){
                if (stain.image  == nil){
                    stain.image  = UIImage(named: "Stains/white.png")
                    
                } else if (stain.image  == UIImage(named: "Stains/red.png")){
                    stain.image  = UIImage(named: "Stains/lightRed.png")
                    
                }else if (stain.image  == UIImage(named: "Stains/yellow.png")){
                    stain.image  = UIImage(named: "Stains/lightYellow.png")
                }else if (stain.image  == UIImage (named: "Stains/orange.png")){
                    stain.image  = UIImage(named: "Stains/lightOrange.png")
                }
                else if (stain.image  == UIImage (named: "Stains/blue.png")){
                    stain.image  = UIImage(named: "Stains/lightBlue.png")
                } else if (stain.image  == UIImage (named: "Stains/green.png")){
                    stain.image  = UIImage(named: "Stains/lightGreen.png")
                } else if (stain.image  == UIImage (named: "Stains/brown.png")){
                    stain.image  = UIImage(named: "Stains/lightBrown.png")
                } else if (stain.image  == UIImage (named: "Stains/purple.png")){
                    stain.image  = UIImage(named: "Stains/lightPurple.png")
                }
                else if (stain.image  == UIImage(named: "Stains/darkRed.png")){
                    stain.image  = UIImage(named: "Stains/red.png")
                    
                }else if (stain.image  == UIImage(named: "Stains/darkYellow.png")){
                    stain.image  = UIImage(named: "Stains/yellow.png")
                }else if (stain.image  == UIImage (named: "Stains/darkOrange.png")){
                    stain.image  = UIImage(named: "Stains/orange.png")
                }
                else if (stain.image  == UIImage (named: "Stains/darkBlue.png")){
                    stain.image  = UIImage(named: "Stains/blue.png")
                } else if (stain.image  == UIImage (named: "Stains/darkGreen.png")){
                    stain.image  = UIImage(named: "Stains/green.png")
                } else if (stain.image  == UIImage (named: "Stains/darkBrown.png")){
                    stain.image = UIImage(named: "Stains/brown.png")
                } else if (stain.image  == UIImage (named: "Stains/darkPurple.png")){
                    stain.image  = UIImage(named: "Stains/purple.png")
                }else if (stain.image  == UIImage (named: "Stains/black.png")){
                   stain.image  = UIImage(named: "Stains/grey.png")
                }
                else if(stain.image == UIImage(named: "Stains/grey.png")){
                   stain.image  = UIImage(named: "Stains/lightGrey.png")
                }else if (stain.image == UIImage(named: "Stains/darkGrey.png")){
                    stain.image  = UIImage(named: "Stains/grey.png")
                } 
                else{
                    stain.image  = UIImage(named: "Stains/white.png")
                }
            }
        }
    }
    
    @objc public func blackBrushviewDidDragged(){
        
        let newpoint = pangestureBlackBrush.location(in: view)
        let newframe = CGRect(origin: CGPoint(x: newpoint.x, y: newpoint.y), size: CGSize (width: blackBrush.frame.size.width, height:
            blackBrush.frame.size.height))
        blackBrush.frame = newframe
        
        if pangestureBlackBrush.state == UIGestureRecognizerState.ended{
            if canvas.frame.contains(blackBrush.frame){
                if stain.image == nil {
                    stain.image = UIImage(named:"Stains/black.png")
                } else if (stain.image == UIImage(named: "Stains/red.png")){
                    stain.image = UIImage(named: "Stains/darkRed.png")
                    
                }else if (stain.image  == UIImage(named: "Stains/yellow.png")){
                    stain.image  = UIImage(named: "Stains/darkYellow.png")
                }else if (stain.image  == UIImage (named: "Stains/orange.png")){
                    stain.image  = UIImage(named: "Stains/darkOrange.png")
                }
                else if (stain.image  == UIImage (named: "Stains/blue.png")){
                    stain.image  = UIImage(named: "Stains/darkBlue.png")
                } else if (stain.image  == UIImage (named: "Stains/green.png")){
                    stain.image  = UIImage(named: "Stains/darkGreen.png")
                } else if (stain.image  == UIImage (named: "Stains/brown.png")){
                    stain.image  = UIImage(named: "Stains/darkBrown.png")
                } else if (stain.image  == UIImage (named: "Stains/purple.png")){
                    stain.image  = UIImage(named: "Stains/darkPurple.png")
                }
                else if (stain.image  == UIImage(named: "Stains/lightRed.png")){
                    stain.image  = UIImage(named: "Stains/red.png")
                    
                }else if (stain.image  == UIImage(named: "Stains/lightYellow.png")){
                    stain.image  = UIImage(named: "Stains/yellow.png")
                }else if (stain.image  == UIImage (named: "Stains/lightOrange.png")){
                    stain.image  = UIImage(named: "Stains/orange.png")
                }
                else if (stain.image  == UIImage (named: "Stains/lightBlue.png")){
                    stain.image  = UIImage(named: "Stains/blue.png")
                } else if (stain.image  == UIImage (named: "Stains/lightGreen.png")){
                    stain.image  = UIImage(named: "Stains/green.png")
                } else if (stain.image  == UIImage (named: "Stains/lightBrown.png")){
                    stain.image  = UIImage(named: "Stains/brown.png")
                } else if (stain.image  == UIImage (named: "Stains/lightPurple.png")){
                    stain.image  = UIImage(named: "Stains/purple.png")
                } else if (stain.image  == UIImage (named: "Stains/white.png")){
                    stain.image  = UIImage(named: "Stains/grey.png")
                }else if (stain.image == UIImage(named: "Stains/grey.png")){
                    stain.image  = UIImage(named: "Stains/darkGrey.png")
                }else if (stain.image == UIImage(named: "Stains/lightGrey")){
                    stain.image  = UIImage(named: "Stains/grey.png")
                }
                else{
                   stain.image  = UIImage(named: "Stains/black.png")
                }
            }
        }
    }
}
