//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Shishir_Mac on 2/6/22.
//

import SwiftUI

struct InsetGalleryView: View {
    //MARK: - Properties
    let animal: Animal
    //MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 15) {
            Image(animal.gallery[0])
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            .cornerRadius(12)
        }
    }
}

//MARK: - Preview
struct InsetGalleryView_Previews: PreviewProvider {
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
