//
//  VideoListView.swift
//  Africa
//
//  Created by Shishir_Mac on 1/6/22.
//

import SwiftUI

struct VideoListView: View {
    
    //MARK: - Properties
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    VideoListItemView(video: item)
                        .padding(.vertical, 8)
                    
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {
                        videos.shuffle()
                    }) {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        }
    }
}

//MARK: - Preview
struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
