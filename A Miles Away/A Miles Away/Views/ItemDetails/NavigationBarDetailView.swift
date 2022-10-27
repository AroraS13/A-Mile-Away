//
//  NavigationBarDetailView.swift
//  A Miles Away
//
//  Created by Saket Arora on 12/27/21.
//

import SwiftUI

struct NavigationBarDetailView: View {
    var body: some View {
        HStack{
            Button(action: {}, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(Color.black)
            })
            Spacer()
            Button(action: {}, label:{
                Image(systemName: "text.badge.star")
                    .font(.title)
                    .foregroundColor(Color.black)
            })
        }
        
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
