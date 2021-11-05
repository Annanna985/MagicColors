import Foundation
import UIKit


var balloon: UIImageView!

extension FirstViewController{
    
    //Function that creates balloons
    public func createBalloon(name: String){
    balloon = UIImageView()
    balloon.image = UIImage(named: name)
    self.view.addSubview(balloon)
    
    //Add constraints
    balloon.translatesAutoresizingMaskIntoConstraints = false
    let widthConstraintBalloon = balloon.widthAnchor.constraint(equalToConstant: 150)
    let heightConstraintBalloon = balloon.heightAnchor.constraint(equalToConstant: 275)
    let centerXConstraintBalloon = balloon.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: view.frame.maxX/2)
    let centerYConstraintBalloon = balloon.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: view.frame.maxY/2)
    NSLayoutConstraint.activate([widthConstraintBalloon, heightConstraintBalloon, centerXConstraintBalloon, centerYConstraintBalloon])
    
    animationBalloon()
}
    
    //Function that creates animation
    func animationBalloon(){
        
        //Create a path
        let balloonPath = UIBezierPath()
        //I create the animation
        let animationBalloon = CAKeyframeAnimation(keyPath: "position")
        
        //Calculate a random value useful to determinate the position on the X axis
        let randomX = CGFloat(arc4random_uniform(UInt32(view.frame.size.width)))
        
        //Calculate a random value useful to determinate the position on the Y axis
        var randomY = CGFloat(arc4random_uniform(UInt32(5)))
        
        //Define the animation
        if (randomY == 0){
            randomY = CGFloat(arc4random_uniform(UInt32(1000)+100))
            balloonPath.move(to:CGPoint(x:view.frame.maxX - randomX, y: view.frame.maxY+randomY))
            balloonPath.addLine(to: CGPoint(x:view.frame.maxX - randomX,y: 0-900))
            animationBalloon.duration = 8
        }else if randomY == 1{
            randomY = CGFloat(arc4random_uniform(UInt32(2000)+1000))
            balloonPath.move(to:CGPoint(x:view.frame.maxX - randomX, y: view.frame.maxY+randomY))
            balloonPath.addLine(to: CGPoint(x:view.frame.maxX - randomX,y: 0-700))
            animationBalloon.duration = 9
        }else if randomY == 2{
            randomY = CGFloat(arc4random_uniform(UInt32(3000)+2000))
            balloonPath.move(to:CGPoint(x:view.frame.maxX - randomX, y: view.frame.maxY+randomY))
            balloonPath.addLine(to: CGPoint(x:view.frame.maxX - randomX,y: 0-500))
            animationBalloon.duration = 10
        }else if randomY == 3{
            randomY = CGFloat(arc4random_uniform(UInt32(4000)+3000))
            balloonPath.move(to:CGPoint(x:view.frame.maxX - randomX, y: view.frame.maxY+randomY))
            balloonPath.addLine(to: CGPoint(x:view.frame.maxX - randomX,y: 0-300))
            animationBalloon.duration = 11
        }else if randomY == 4{
            randomY = CGFloat(arc4random_uniform(UInt32(5000)+5000))
            balloonPath.move(to:CGPoint(x:view.frame.maxX - randomX, y: view.frame.maxY+randomY))
            balloonPath.addLine(to: CGPoint(x:view.frame.maxX - randomX,y: 0-100))
            animationBalloon.duration = 12
        }
        
        
        //Define the property of animation
        animationBalloon.repeatCount = .infinity
        animationBalloon.path = balloonPath.cgPath
        animationBalloon.fillMode = kCAFillModeForwards
        animationBalloon.isRemovedOnCompletion = false
        
        //Add the animation to balloon
        balloon.layer.add(animationBalloon, forKey: "movingAnimation")
    }

}
