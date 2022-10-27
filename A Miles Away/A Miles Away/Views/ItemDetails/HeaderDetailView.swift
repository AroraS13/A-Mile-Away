//
//  HeaderDetailView.swift
//  A Miles Away
//
//  Created by Saket Arora on 12/27/21.
//

import SwiftUI

struct HeaderDetailView: View {
    let item : Item
    var body: some View {
        
        VStack(alignment: .leading, spacing: 6, content: {
            Text(item.listing_name)
                .font(.largeTitle)
                .fontWeight(.black)
            Text(item.listing_location)
        })
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView(item : Item.data[1])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
