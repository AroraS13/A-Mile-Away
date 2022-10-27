//
//  ItemPictures.swift
//  A Miles Away
//
//  Created by Saket Arora on 12/23/21.
//

import SwiftUI

struct ItemPictures: View {
    let image : String
    var body: some View {
        Button(action: {}, label:{
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200, alignment: .center)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 1))
        })
            
//        TabView {
//            ForEach(item.images, id: \.self) { image in
//                Image("toaster1")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 300, height: 250, alignment: .top)
//            }
//        }
    }
}

struct ItemPictures_Previews: PreviewProvider {
    static var previews: some View {
        ItemPictures(image : Item.data[0].images[0])
            .previewLayout(.sizeThatFits)
    }
}
