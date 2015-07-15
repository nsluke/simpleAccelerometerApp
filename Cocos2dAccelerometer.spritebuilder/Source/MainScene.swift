import Foundation
import CoreMotion


class MainScene: CCNode {

    var xValString: String!
    var yValString: String!
    var zValString: String!
    let motionManager: CMMotionManager! = CMMotionManager()
    
    weak var xValLabel: CCLabelTTF!
    weak var yValLabel: CCLabelTTF!
    weak var zValLabel: CCLabelTTF!

    
    func didLoadFromCCB() {
        

//        if motionManager.accelerometerAvailable {
            motionManager.startAccelerometerUpdates()
//        motionManager.accelerometerActive = true;
//        }
        motionManager.startAccelerometerUpdatesToQueue(NSOperationQueue()) {
            (data, error) in
            let currentX = self.yValLabel.position.x
            let currentY = self.yValLabel.position.y
        }
        

        
    }
    
    override func onEnter() {
        
        
    }
    
    override func update(delta: CCTime) {
        
//        var accelerometerData: CMAccelerometerData = motionManager.accelerometerData
        println("Motion =")
        println(motionManager.accelerometerData)
        
        
        xValLabel.string = ""
        yValLabel.string = ""
        zValLabel.string = ""
        
        
        
    }
    
    
}
