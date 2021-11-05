import Foundation
import UIKit

//Define all animation present in SecondViewController
extension SecondViewController{
    
    //Ball animation
    @objc public func moveBall (button: UIButton){
        let translation = CAKeyframeAnimation(keyPath: "transform.translation.y")
        let value  = [-200,20,0,-200]
        translation.values = value
        let time = [0.0, 0.85, 1]
        translation.keyTimes = time as [NSNumber]
        translation.timingFunctions = [CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)]
        translation.autoreverses = true
        translation.duration = 1.0
        translation.repeatCount = 2.5
        
        let scaleX = CAKeyframeAnimation(keyPath: "transform.scale.x")
        let value1  = [0.75,0.75,1]
        scaleX.values = value1
        let time1 = [0.0, 0.85, 1]
        scaleX.keyTimes = time1 as [NSNumber]
        scaleX.timingFunctions = [CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)]
        scaleX.autoreverses = true
        scaleX.duration = 1.0
        scaleX.repeatCount = 2.5
        
        let scaleY = CAKeyframeAnimation(keyPath: "transform.scale.y")
        let value2  = [0.75,1,0.85]
        scaleY.values = value2
        let time2 = [0.1, 0.5, 1]
        scaleY.keyTimes = time2 as [NSNumber]
        scaleY.timingFunctions = [CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)]
        scaleY.autoreverses = true
        scaleY.duration = 1.0
        scaleY.repeatCount = 2.5
        
        button.layer.add(scaleX, forKey: "scaleX")
        button.layer.add(scaleY, forKey: "scaleY")
        button.layer.add(translation, forKey: "trans")
    }
    
    //Horse animation
    @objc public func moveHorse(){
        horses = [UIImage(named:"Toys/horse0.png")!, UIImage(named:"Toys/horse1.png")!,UIImage(named:"Toys/horse2.png")!,UIImage(named:"Toys/horse1.png")!, UIImage(named:"Toys/horse0.png")!,UIImage(named:"Toys/horse3.png")!, UIImage(named:"Toys/horse4.png")!, UIImage(named:"Toys/horse3.png")!]
        horse.animationImages = horses
        horse.animationDuration = 1.5
        horse.animationRepeatCount = 4
        horse.startAnimating()
    }
    
    //Bear animation
    @objc public func bearAnimation(){
        let heart = UIImageView()
        heart.image = UIImage(named: "Toys/heart.png")
        view.addSubview(heart)
        heart.translatesAutoresizingMaskIntoConstraints = false
        var constraints = [NSLayoutConstraint]()
        constraints.append(NSLayoutConstraint(item: heart, attribute: .right, relatedBy: .equal, toItem: heart.superview, attribute: .right, multiplier: 0.85,constant: 0))
        constraints.append(NSLayoutConstraint(item: heart, attribute: .centerY, relatedBy: .equal, toItem: heart.superview, attribute: .centerY, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: heart, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 1/10, constant:0 ))
        constraints.append(NSLayoutConstraint(item: heart, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 1/10, constant: 0))
        self.view.addConstraints(constraints)
        
        
        let heartPath = UIBezierPath()
        heartPath.move(to:CGPoint(x: self.bear.frame.origin.x , y: self.bear.frame.origin.y))
        
        heartPath.addCurve(to: CGPoint(x:self.bear.frame.origin.x , y: -100), controlPoint1: CGPoint(x:self.bear.frame.origin.x+150 , y: self.view.center.y-80 ), controlPoint2: CGPoint(x:self.bear.frame.origin.x-150, y: self.view.center.y-20))
        
        let animation = CAKeyframeAnimation(keyPath: "position")
        animation.duration = 1
        animation.repeatCount = 3
        animation.path = heartPath.cgPath
        animation.fillMode = kCAFillModeForwards
        animation.isRemovedOnCompletion = false
        heart.layer.add(animation, forKey: "movingAnimation")
    }
    
    //Missile animation
    @objc public func missileAnimation(){
        let translation = CAKeyframeAnimation(keyPath: "transform.translation.y")
        let value  = [0,-400]
        translation.values = value
        let time = [0.0, 0.85, 1]
        translation.keyTimes = time as [NSNumber]
        translation.timingFunctions = [CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)]
        translation.autoreverses = true
        translation.duration = 1.5
        translation.repeatCount = 1
        
        missile.layer.add(translation, forKey: "trans")
    }
}
