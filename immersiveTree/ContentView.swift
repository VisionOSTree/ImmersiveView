//
//  ContentView.swift
//  immersiveTree
//
//  Created by Daniel Braithwaite on 23/4/2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveControlView: View {
    
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace
    
    
    var body: some View {
        VStack {
            Button {
                Task{
                    await openImmersiveSpace(id:"ImmersiveView")
                }
                
            } label: {
                Image(systemName: "visionpro")
            }

        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ImmersiveControlView()
}
