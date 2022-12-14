//
//  TabBarView.swift
//  VKSwiftUI
//
//  Created by Fanil_Jr on 14.12.2022.
//

import Foundation
import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Task1", systemImage: "house.fill")
                }
            TextModifierView()
                .tabItem {
                    Label("Task2", systemImage: "text.aligncenter")
                }
            LoginView()
                .tabItem {
                    Label("Task3", systemImage: "person.crop.circle")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
