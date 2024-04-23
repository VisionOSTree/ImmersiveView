//
//  ImmersiveView.swift
//  immersiveTree
//
//  Created by Daniel Braithwaite on 23/4/2024.
//

import SwiftUI
import RealityKit

struct ImmersiveView: View {
    var body: some View {
        RealityView{ content in
            
            guard let skyBoxEntity = createSkyBox() else{
                print("Error")
                return
            }
            
            content.add(skyBoxEntity)
            
        }
        
        
    }
    private func createSkyBox() -> Entity? {
        let largeSphere = MeshResource.generateSphere(radius: 1000)
        
        var skyBoxMaterial = UnlitMaterial()
        
        
        do{
            let texture = try  TextureResource.load(named: "meadow_2")
            skyBoxMaterial.color = .init(texture: .init(texture))
        } catch{
            print("error")
        }
        
        let skyBoxEntity = Entity()
        skyBoxEntity.components.set(ModelComponent(mesh: largeSphere, materials: [skyBoxMaterial]))
        
        skyBoxEntity.scale *= .init(x:-1, y: 1, z: 1)
        
        return skyBoxEntity
        
    }
}

#Preview {
    ImmersiveView()
}
