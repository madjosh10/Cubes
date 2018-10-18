//
//  ViewController.swift
//  CUBES
//
//  Created by Joshua Madrigal on 10/18/18.
//  Copyright © 2018 Joshua Madrigal. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    var minHeight : CGFloat = 0.2
    var maxHeight : CGFloat = 0.6
    var minDispersal : CGFloat = -4
    var maxDispersal : CGFloat = 4
    
    func generateRandomVector() -> SCNVector3 {
        return SCNVector3(CGFloat.random(in: minDispersal ... maxDispersal), CGFloat.random(in: minDispersal ... maxDispersal), CGFloat.random(in: minDispersal ... maxDispersal))
    
    }
    
    func randomColorGenerator() -> UIColor {
        return UIColor(red: CGFloat.random(in: 0 ... 1), green: CGFloat.random(in: 0 ... 1), blue: CGFloat.random(in: 0 ... 1), alpha: CGFloat.random(in: 0.5 ... 1))
    }
    
    func randomSizeGenerator() -> CGFloat {
        return CGFloat.random(in: minHeight ... maxHeight)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sceneView.delegate = self
        sceneView.showsStatistics = true
        
    }
    
    @IBAction func addCubeClicked(_ sender: Any) {
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let configuration = ARWorldTrackingConfiguration()
        sceneView.session.run(configuration)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        sceneView.session.pause()
        
    }

    
} // ViewController Class
