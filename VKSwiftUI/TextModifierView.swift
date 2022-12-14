//
//  TextModifierView.swift
//  VKSwiftUI
//
//  Created by Fanil_Jr on 14.12.2022.
//

import Foundation
import SwiftUI

struct TextModifierView: View {
    var body: some View {
        VStack {
            Text("Hello World")
                .modifier(TitleModifier())
            Text("Hello World!")
                .modifier(BodyTitleModifier())
        }
    }
}

struct TextModifierView_Previews: PreviewProvider {
    static var previews: some View {
        TextModifierView()
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .background(.blue)
    }
}

struct BodyTitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.body)
    }
}
