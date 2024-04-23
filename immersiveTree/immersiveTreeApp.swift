//
//  immersiveTreeApp.swift
//  immersiveTree
//
//  Created by Daniel Braithwaite on 23/4/2024.
//

import SwiftUI

@main
struct immersiveTreeApp: App {
    
    @State var immersionMode:ImmersionStyle = .progressive
    
    var body: some Scene {
        WindowGroup {
            ImmersiveControlView()
        }
        .defaultSize(width: 25, height: 25)
        .windowStyle(.plain)
        
        ImmersiveSpace(id: "ImmersiveView"){
            ImmersiveView()
        }
        .immersionStyle(selection: $immersionMode, in: .full)
    }
}
