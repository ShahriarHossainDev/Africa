//
//  CoverImageView.swift
//  Africa
//
//  Created by Shishir_Mac on 1/6/22.
//

import SwiftUI

struct CoverImageView: View {
    
    //MARK: - Properties
    let coverImage: [CoverImage] = Bundle.main.decode("covers.json")
    //MARK: - Body
    
    var body: some View {
        TabView{
            ForEach(coverImage){ item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }//: Loop
        }//: Tab
        .tabViewStyle(PageTabViewStyle())
    }
}

//MARK: - Preview
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
