import Foundation
import UIKit

//Define the constraints of all object present in SecondViewController
extension SecondViewController{
    
   public func constraintBackground(){
   background.translatesAutoresizingMaskIntoConstraints = false
    
   let leadingConstraint = background.leadingAnchor.constraint(equalTo: self.view.leadingAnchor)
   let trailingConstraint = background.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
   let topConstraint = background.topAnchor.constraint(equalTo: self.view.topAnchor)
   let bottonConstraint = background.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
   NSLayoutConstraint.activate([leadingConstraint,trailingConstraint,topConstraint,bottonConstraint])
   }
    

    
   public func constraintBlue(){
   blueBrush.translatesAutoresizingMaskIntoConstraints = false
        
   var constraints = [NSLayoutConstraint]()
   constraints.append(NSLayoutConstraint(item: blueBrush, attribute: .centerX, relatedBy: .equal, toItem: blueBrush.superview, attribute: .centerX, multiplier: 1, constant: -50))
   constraints.append(NSLayoutConstraint(item: blueBrush, attribute: .height, relatedBy: .equal, toItem: blueBrush.superview, attribute: .height, multiplier: 1/6, constant: 0))
   constraints.append(NSLayoutConstraint(item: blueBrush, attribute: .width, relatedBy: .equal, toItem: blueBrush.superview, attribute: .width, multiplier: 1/12, constant: 0))
   constraints.append(NSLayoutConstraint(item: blueBrush, attribute: .bottom, relatedBy: .equal, toItem: blueBrush.superview, attribute: .bottom, multiplier:1, constant: 0))
   self.view.addConstraints(constraints)
   }
   
    
    public func constraintRed(){
    redBrush.translatesAutoresizingMaskIntoConstraints = false
        
    var constraints = [NSLayoutConstraint]()
    constraints.append(NSLayoutConstraint(item: redBrush,attribute: .centerX, relatedBy: .equal, toItem: redBrush.superview, attribute: .centerX, multiplier: 1, constant: -100))
    constraints.append(NSLayoutConstraint(item: redBrush, attribute: .height, relatedBy: .equal, toItem: redBrush.superview, attribute: .height, multiplier: 1/6, constant: 0))
    constraints.append(NSLayoutConstraint(item: redBrush, attribute: .width, relatedBy: .equal, toItem: redBrush.superview, attribute: .width, multiplier: 1/12, constant: 0))
    constraints.append(NSLayoutConstraint(item: redBrush, attribute: .bottom, relatedBy: .equal, toItem: redBrush.superview, attribute: .bottom, multiplier:1, constant: 0))

    self.view.addConstraints(constraints)
    }
    
    
    public func constraintYellow(){
    yellowBrush.translatesAutoresizingMaskIntoConstraints = false
        
    var constraints = [NSLayoutConstraint]()
    constraints.append(NSLayoutConstraint(item: yellowBrush, attribute: .centerX, relatedBy: .equal, toItem: yellowBrush.superview, attribute: .centerX, multiplier: 1, constant:0))
    constraints.append(NSLayoutConstraint(item: yellowBrush, attribute: .height, relatedBy: .equal, toItem: yellowBrush.superview, attribute: .height, multiplier: 1/6, constant: 0))
    constraints.append(NSLayoutConstraint(item: yellowBrush, attribute: .width, relatedBy: .equal, toItem: yellowBrush.superview, attribute: .width, multiplier: 1/12, constant: 0))
    constraints.append(NSLayoutConstraint(item: yellowBrush, attribute: .bottom, relatedBy: .equal, toItem: yellowBrush.superview, attribute: .bottom, multiplier:1, constant: 0))
        
    self.view.addConstraints(constraints)
    }
    
    
    public func constraintWhite(){
    whiteBrush.translatesAutoresizingMaskIntoConstraints = false
    
    var constraints = [NSLayoutConstraint]()
    constraints.append(NSLayoutConstraint(item: whiteBrush, attribute: .centerX, relatedBy: .equal, toItem: whiteBrush.superview, attribute: .centerX, multiplier: 1, constant:50))
    constraints.append(NSLayoutConstraint(item: whiteBrush, attribute: .height, relatedBy: .equal, toItem: whiteBrush.superview, attribute: .height, multiplier: 1/6, constant: 0))
    constraints.append(NSLayoutConstraint(item: whiteBrush, attribute: .width, relatedBy: .equal, toItem: whiteBrush.superview, attribute: .width, multiplier: 1/12, constant: 0))
    constraints.append(NSLayoutConstraint(item: whiteBrush, attribute: .bottom, relatedBy: .equal, toItem: whiteBrush.superview, attribute: .bottom, multiplier:1, constant: 0))
    self.view.addConstraints(constraints)
    }
    
    
    public func constraintBlack(){
    blackBrush.translatesAutoresizingMaskIntoConstraints = false
    
    var constraints = [NSLayoutConstraint]()
    constraints.append(NSLayoutConstraint(item: blackBrush, attribute: .centerX, relatedBy: .equal, toItem: blackBrush.superview, attribute: .centerX, multiplier: 1, constant:100))
    constraints.append(NSLayoutConstraint(item: blackBrush, attribute: .height, relatedBy: .equal, toItem: blackBrush.superview, attribute: .height, multiplier: 1/6, constant: 0))
    constraints.append(NSLayoutConstraint(item: blackBrush, attribute: .width, relatedBy: .equal, toItem: blackBrush.superview, attribute: .width, multiplier: 1/12, constant: 0))
    constraints.append(NSLayoutConstraint(item: blackBrush, attribute: .bottom, relatedBy: .equal, toItem: blackBrush.superview, attribute: .bottom, multiplier:1, constant: 0))
    self.view.addConstraints(constraints)
    }
    
    
    public func constraintBear(){
    bear.translatesAutoresizingMaskIntoConstraints = false
        
    var constraints = [NSLayoutConstraint]()
    constraints.append(NSLayoutConstraint(item: bear, attribute: .right, relatedBy: .equal, toItem: bear.superview, attribute: .right, multiplier: 0.85,constant: 0))
    constraints.append(NSLayoutConstraint(item: bear, attribute: .centerY, relatedBy: .equal, toItem: bear.superview, attribute: .centerY, multiplier: 1, constant: 0))
    constraints.append(NSLayoutConstraint(item: bear, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 1/5, constant:0 ))
    constraints.append(NSLayoutConstraint(item: bear, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 1/5, constant: 0))
    self.view.addConstraints(constraints)
    }
    
    
    public func constraintMissile(){
        missile.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        constraints.append(NSLayoutConstraint(item: missile, attribute: .right, relatedBy: .equal, toItem: missile.superview, attribute: .right, multiplier: 0.35,constant: 0))
        constraints.append(NSLayoutConstraint(item: missile, attribute: .centerY, relatedBy: .equal, toItem: missile.superview, attribute: .centerY, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: missile, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 1/8, constant:0))
        constraints.append(NSLayoutConstraint(item: missile, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 1/10, constant:0 ))
        self.view.addConstraints(constraints)
    }
    
    
    public func constraintCanvas(){
        canvas.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        constraints.append(NSLayoutConstraint(item: canvas, attribute: .centerX, relatedBy: .equal, toItem: canvas.superview, attribute: .centerX, multiplier: 1,constant: 0))
        constraints.append(NSLayoutConstraint(item: canvas, attribute: .centerY, relatedBy: .equal, toItem: canvas.superview, attribute: .centerY, multiplier: 1, constant:0))
        constraints.append(NSLayoutConstraint(item: canvas, attribute: .height, relatedBy: .equal, toItem: canvas.superview, attribute: .height, multiplier: 0.4, constant: 0))
        constraints.append( NSLayoutConstraint(item: canvas, attribute: .width, relatedBy: .equal, toItem: canvas.superview, attribute: .height, multiplier: 0.4, constant: 0))
        self.view.addConstraints(constraints)
    }
    
    public func constraintStain(){
        stain.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        constraints.append(NSLayoutConstraint(item: stain, attribute: .centerX, relatedBy: .equal, toItem: stain.superview, attribute: .centerX, multiplier: 1,constant: 0))
        constraints.append(NSLayoutConstraint(item: stain, attribute: .centerY, relatedBy: .equal, toItem: stain.superview, attribute: .centerY, multiplier: 1, constant:0))
        constraints.append(NSLayoutConstraint(item: stain, attribute: .height, relatedBy: .equal, toItem: stain.superview, attribute: .height, multiplier: 1/2, constant: 0))
        constraints.append( NSLayoutConstraint(item: stain, attribute: .width, relatedBy: .equal, toItem: stain.superview, attribute: .width, multiplier: 1/2, constant: 0))
        self.view.addConstraints(constraints)
    }
    
    public func constraintBall(){
    ball.translatesAutoresizingMaskIntoConstraints = false
        
    var constraints = [NSLayoutConstraint]()
    constraints.append(NSLayoutConstraint(item: ball, attribute: .right, relatedBy: .equal, toItem: ball.superview, attribute: .right, multiplier: 1,constant: 0))
    constraints.append(NSLayoutConstraint(item: ball, attribute: .bottom, relatedBy: .equal, toItem: ball.superview, attribute: .bottom, multiplier: 0.9, constant: 0))
    constraints.append(NSLayoutConstraint(item: ball, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 1/8, constant:0 ))
    constraints.append(NSLayoutConstraint(item: ball, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 1/8, constant: 0))
    self.view.addConstraints(constraints)
    }
    

    public func constraintHorse(){
    horse.translatesAutoresizingMaskIntoConstraints = false
    buttonHorse.translatesAutoresizingMaskIntoConstraints = false
        
    var constraintsImage = [NSLayoutConstraint]()
    var constraintsButton = [NSLayoutConstraint]()
    constraintsImage.append(NSLayoutConstraint(item: horse, attribute: .left, relatedBy: .equal, toItem: horse.superview, attribute: .left, multiplier: 1,constant: 0))
    constraintsImage.append(NSLayoutConstraint(item: horse, attribute: .bottom, relatedBy: .equal, toItem: horse.superview, attribute: .bottom, multiplier: 0.85, constant: 0))
    constraintsImage.append(NSLayoutConstraint(item: horse, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 1/4, constant: 0))
    constraintsImage.append(NSLayoutConstraint(item: horse, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 1/4, constant: 0))
    constraintsButton.append(NSLayoutConstraint(item: buttonHorse, attribute: .left, relatedBy: .equal, toItem: horse.superview, attribute: .left, multiplier: 1,constant: 0))
    constraintsButton.append(NSLayoutConstraint(item: buttonHorse, attribute: .bottom, relatedBy: .equal, toItem: horse.superview, attribute: .bottom, multiplier: 0.85, constant: 0))
    constraintsButton.append(NSLayoutConstraint(item: buttonHorse, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 1/4, constant: 0))
    constraintsButton.append(NSLayoutConstraint(item: buttonHorse, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 1/4, constant: 0))
    self.view.addConstraints(constraintsImage)
    self.view.addConstraints(constraintsButton)
    }
    
    public func constraintTablet(){
        tablet.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        constraints.append(NSLayoutConstraint(item: tablet, attribute: .bottom, relatedBy: .equal, toItem: tablet.superview, attribute: .bottom, multiplier: 0.8,constant: 0))
        constraints.append(NSLayoutConstraint(item: tablet, attribute: .right, relatedBy: .equal, toItem: tablet.superview, attribute: .right, multiplier: 0.8, constant: 0))
        constraints.append(NSLayoutConstraint(item: tablet, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 1/8, constant:0 ))
        constraints.append(NSLayoutConstraint(item: tablet, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 1/8, constant: 0))
        self.view.addConstraints(constraints)
    }
   
}
