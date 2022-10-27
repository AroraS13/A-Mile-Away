//
//  PictureTabView.swift
//  A Miles Away
//
//  Created by Saket Arora on 12/23/21.
//

import SwiftUI

struct PictureTabView: View {
    let item: Item
    var body: some View {
        TabView{
            ForEach(item.images, id: \.self){image in
                ItemPictures(image: image)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
                    .offset(y: -130)
                    
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        
    }
}

struct PictureTabView_Previews: PreviewProvider {
    static var previews: some View {
        PictureTabView(item : Item.data[0])
            .previewDevice("iPhone 12 Pro")
            .background(Color.gray)
    }
}
