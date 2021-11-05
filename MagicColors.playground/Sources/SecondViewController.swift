import Foundation
import UIKit

public class SecondViewController: UIViewController{
    
    //Variables
    var canvas = UIImageView()
    var blueBrush = UIImageView()
    var redBrush = UIImageView()
    var yellowBrush = UIImageView()
    var whiteBrush = UIImageView()
    var blackBrush = UIImageView()
    var stain = UIImageView()
   
    var ball = UIButton()
    var horse = UIImageView()
    var horses = [UIImage]()
    var buttonHorse = UIButton()
    var bear = UIButton()
    var missile = UIButton()
 
    var background = UIImageView()
    var tablet = UIImageView()
    var color = UILabel()
    
    override public func viewDidLoad() {
     addObject()
     addGestureBrushes()
        
    }
    
    
    override public func viewDidLayoutSubviews(){
    //Call the functions that add the contraints to object
     constraintBackground()
     constraintYellow()
     constraintRed()
     constraintBlue()
     constraintWhite()
     constraintBlack()
     constraintBear()
     constraintMissile()
     constraintCanvas()
     constraintStain()
     constraintTablet()
     constraintBall()
     constraintHorse()
    
      
    }

}
