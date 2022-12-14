//
//  ContentView.swift
//  VKSwiftUI
//
//  Created by Fanil_Jr on 14.12.2022.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//        .padding()
//    }
//}

//struct ContentView: View {
//
//    @State private var isPushEnabled = false
//    @State private var isPushEnabled2 = false
//
//    var body: some View {
//        Form {
//            Section {
//                Toggle(isOn: $isPushEnabled) {
//                    Text("Push notifications")
//                }
//                Toggle(isOn: $isPushEnabled2) {
//                    Text("Push notifications")
//                }
//            }
//            Toggle(isOn: $isPushEnabled) {
//                Text("Push notifications")
//            }
//        }
//    }
//}
struct ContentView: View {
    @State private var isAlertPresented: Bool = false
    @State private var text: String = ""
    @State private var counter: Float = 0
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 50) {
                Text("Hello world!")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                    .padding()
                    .background(.green)
                Button("Hello world", action: {})
                
                Circle()
                    .frame(width: 30, height: 39)
                
                Text("\(counter)")
                Slider(
                    value: $counter,
                    in: 0...10,
                    onEditingChanged: { _ in }
                )
                
                Button("Tap on me") {
                    self.isAlertPresented = true
                }
            }
            Spacer()
        }
        .alert("Hello", isPresented: $isAlertPresented, actions: {})
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .background(Color.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
