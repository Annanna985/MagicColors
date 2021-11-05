import Foundation
import UIKit

public class FirstViewController: UIViewController {
    //Variables
    var playButton: UIButton!
    
    override public func viewDidLoad() {
        super.viewDidLoad()
               
        //Set background
        createBackground(name: "Background/background.png")
   
        //Create balloons
        createBalloon(name: "Balloons/blueBalloon.png")
        createBalloon(name: "Balloons/redBalloon.png")
        createBalloon(name: "Balloons/yellowBalloon.png")
        createBalloon(name: "Balloons/greenBalloon.png")
        createBalloon(name: "Balloons/pinkBalloon.png")
        
        createBalloon(name: "Balloons/blueBalloon.png")
        createBalloon(name: "Balloons/redBalloon.png")
        createBalloon(name: "Balloons/yellowBalloon.png")
        createBalloon(name: "Balloons/greenBalloon.png")
        createBalloon(name: "Balloons/pinkBalloon.png")
        
        createBalloon(name: "Balloons/blueBalloon.png")
        createBalloon(name: "Balloons/redBalloon.png")
        createBalloon(name: "Balloons/yellowBalloon.png")
        createBalloon(name: "Balloons/greenBalloon.png")
        createBalloon(name: "Balloons/pinkBalloon.png")

        //Create playButton
        createPlayButton()
    }

}
