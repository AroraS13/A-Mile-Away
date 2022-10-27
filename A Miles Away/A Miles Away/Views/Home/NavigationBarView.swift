//
//  NavigationBarView.swift
//  A Miles Away
//
//  Created by Saket Arora on 12/23/21.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        HStack{
            Button(action:{}, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            })
            Spacer()
            Text("Pepper Canyon East")
                .font(.title3)
                .foregroundColor(.black)
                .fontWeight(.black)

            Spacer()
            Button(action: {}, label: {
                ZStack {
                    Image(systemName: "text.badge.star")
                        .font(.title)
                    .foregroundColor(.black)
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x:13, y:-10)
                }
            })
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
