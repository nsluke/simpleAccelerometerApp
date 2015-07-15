import Foundation
import CoreMotion

class MainScene: CCNode {

    var xValString: String!
    var yValString: String!
    var zValString: String!
    
    weak var xValLabel: CCLabelTTF!
    weak var yValLabel: CCLabelTTF!
    weak var zValLabel: CCLabelTTF!

    let motionKit = MotionKit()
    
    func didLoadFromCCB() {
        
    motionKit.getAccelerometerValues (interval: 0.5){
        (x, y, z) in
        //Do whatever you want with the x, y and z values
//        println("X: \(x) Y: \(y) Z: \(z)")
        self.xValLabel.string = "X: \(x)"
        self.yValLabel.string = "Y: \(y)"
        self.zValLabel.string = "Z: \(z)"
    }

        
    }
    
    override func onEnter() {
        
        
    }
    
    override func update(delta: CCTime) {
        
//        var accelerometerData: CMAccelerometerData = motionManager.accelerometerData
        println("Motion =")
        
        

        
        
        
    }
    
    
}
