//
//  PictureOptions.swift
//  A Miles Away
//
//  Created by Saket Arora on 12/27/21.
//

import SwiftUI

struct PictureOptions: View {
    let item : Item
    var body: some View {
        HStack{
            ForEach(item.images, id: \.self){image in
                Button(action: {}, label: {
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70, alignment: .center)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.black, lineWidth: 1))
                        .padding()
                })
            }
        }
    }
}

struct PictureOptions_Previews: PreviewProvider {
    static var previews: some View {
        PictureOptions(item : Item.data[1])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)

    }
}
