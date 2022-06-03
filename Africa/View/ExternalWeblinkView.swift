//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Shishir_Mac on 3/6/22.
//

import SwiftUI

struct ExternalWeblinkView: View {
    //MARK: - Properties
    let animal: Animal
    
    
    //MARK: - Body
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

//MARK: - Preview
struct ExternalWeblinkView_Previews: PreviewProvider {
    
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWeblinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
