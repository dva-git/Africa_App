//
//  InsetFactView.swift
//  Africa
//
//  Created by why_me on 24.03.24.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal
    
    // MARK: - BODY
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            } //: Tab
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 140, idealHeight: 168, maxHeight: 180)
        } //: GroupBox
        
    }
}

struct InsetFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
