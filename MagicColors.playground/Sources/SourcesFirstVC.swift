import Foundation
import UIKit

extension FirstViewController{
    public func createBackground(name: String){
        //Create a imageView as background
        let background = UIImageView(image: UIImage(named: name))
        view.addSubview(background)
        
        //Add constraints
        background.translatesAutoresizingMaskIntoConstraints = false
        let leadingConstraint = background.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        let trailingConstraint = background.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        let topConstraint = background.topAnchor.constraint(equalTo: view.topAnchor)
        let bottonConstraint = background.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        NSLayoutConstraint.activate([leadingConstraint,trailingConstraint,topConstraint,bottonConstraint])
    }
    
    public func createPlayButton(){
        //Create a button
        let playButton = UIButton()
        let image = UIImage(named: "Background/play.png")
        playButton.setImage(image, for: UIControlState.normal) //Set the image of button
        view.addSubview(playButton)
        
        //Add constraints
        playButton.translatesAutoresizingMaskIntoConstraints = false
        let widthButton = playButton.widthAnchor.constraint(equalToConstant: 250)
        let heightButton = playButton.heightAnchor.constraint(equalToConstant: 250)
        let centerXButton = playButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let centerYButton = playButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        NSLayoutConstraint.activate([widthButton, heightButton, centerXButton, centerYButton])
        
        //Call the function pulsate
        playButton.pulsate()
        
        playButton.addTarget(self, action: #selector(tapPlay), for: .touchUpInside)
    }
    
    @objc func tapPlay(){
        present(SecondViewController(), animated: false, completion: nil)
    }
}

extension UIButton{
    func pulsate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration =  1
        pulse.fromValue = 0.95
        pulse.toValue = 1.0
        pulse.autoreverses = true
        pulse.repeatCount = .infinity
        pulse.initialVelocity = 0.5
        pulse.damping = 1.0
        layer.add(pulse, forKey: "pulse")
    }
}
