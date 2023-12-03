//
//  Block.swift
//  ARTetris
//
//  Created by Bakhtiyorjon Mirzajonov on 12/2/23.
//

import Foundation
import SceneKit
import ARKit

class Block {
  private let x: Float
  private let y: Float
  private let z: Float
  
  init(x: Float, y: Float, z: Float) {
    self.x = x
    self.y = y
    self.z = z
  }
  
  func draw(scene: SCNScene){
    // Create the node
    let node = SCNNode()
    
    // Create the box
    let box = SCNBox(width: CGFloat(0.1), height: CGFloat(0.1), length: CGFloat(0.1), chamferRadius: 0)
    
    // Set the box color to red
    box.firstMaterial?.diffuse.contents = UIColor.red
    
    // Make the node the box
    node.geometry = box
    
    // Set the position of the node
    node.position = SCNVector3(self.x, self.y, self.z)
    
    // Add the node to the scene
    scene.rootNode.addChildNode(node)
  }
}

