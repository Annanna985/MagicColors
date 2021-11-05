import Foundation
import UIKit

//Create all object of SecondViewController
extension SecondViewController{
    
    public func addObject(){
        
    background = UIImageView(image: UIImage(named: "Background/camera.png"))
    self.view.addSubview(background)
        
    bear.setImage(UIImage(named:"Toys/bear.png"), for: .normal )
    bear.contentMode = UIViewContentMode.scaleAspectFit
    self.view.addSubview(bear)
    bear.addTarget(self,  action: #selector(bearAnimation), for: .touchUpInside)
        
    missile.setImage(UIImage(named:"Toys/missile.png"), for: .normal )
    missile.contentMode = UIViewContentMode.scaleAspectFit
    self.view.addSubview(missile)
    missile.addTarget(self, action: #selector(missileAnimation), for: .touchUpInside)
        
    ball.setImage(UIImage(named:"Toys/ball.png"), for: .normal )
    ball.contentMode = UIViewContentMode.scaleAspectFit
    self.view.addSubview(ball)
    ball.addTarget(self, action: #selector(moveBall), for: .touchUpInside)
     
    canvas.image = UIImage(named: "Background/empty.png")
    canvas.contentMode = UIViewContentMode.scaleAspectFit
    self.view.addSubview(canvas)
  
    stain.contentMode = UIViewContentMode.scaleAspectFit
    canvas.addSubview(stain)
  
        
    horse.image = UIImage(named:"Toys/horse0.png")
    horse.contentMode = UIViewContentMode.scaleAspectFit
    self.view.addSubview(horse)
  
    buttonHorse.translatesAutoresizingMaskIntoConstraints = false
    buttonHorse.contentMode = UIViewContentMode.scaleAspectFit
    self.view.addSubview(buttonHorse)
    buttonHorse.addTarget(self, action: #selector(moveHorse), for: .touchUpInside)
        
    tablet.image = UIImage(named: "Background/tablet.png")
    tablet.contentMode = UIViewContentMode.scaleAspectFit
    self.view.addSubview(tablet)

        
    blueBrush.image = UIImage(named: "Brushes/blue.png")
    blueBrush.contentMode = UIViewContentMode.scaleAspectFit
    self.view.addSubview(blueBrush)
    
    redBrush.image = UIImage(named: "Brushes/red.png")
    redBrush.contentMode = UIViewContentMode.scaleAspectFit
    self.view.addSubview(redBrush)
    
    yellowBrush.image = UIImage(named: "Brushes/yellow.png")
    yellowBrush.contentMode = UIViewContentMode.scaleAspectFit
    self.view.addSubview(yellowBrush)
    
    whiteBrush.image = UIImage(named: "Brushes/white.png")
    whiteBrush.contentMode = UIViewContentMode.scaleAspectFit
    self.view.addSubview(whiteBrush)
    
    blackBrush.image = UIImage(named: "Brushes/black.png")
    blackBrush.contentMode = UIViewContentMode.scaleAspectFit
    self.view.addSubview(blackBrush)

}
}
