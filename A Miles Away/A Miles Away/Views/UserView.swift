//
//  UserView.swift
//  A Miles Away
//
//  Created by Saket Arora on 11/24/21.
//

import SwiftUI


struct UserView: View {
    
    let users: [User]
    
    var body: some View {
        let user =  users[0]
        List {
            Section(header: Text("My Page")){
                HStack{
                    if user.userImage == "person.crop.circle.badge.questionmark"{
                        Image(systemName: user.userImage)
                            .font(.system(size: 80))
                    }
                    else{
                        Image(user.userImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width:100, height: 100, alignment: .center)
                        .clipShape(Circle())
                    }
                    Spacer()
                    VStack{
                        Text(user.email)
                            .font(.title2)
                        Text(user.name)
                            .font(.caption)
                    }
                    Spacer()
                }
                HStack{
                    VStack{
                        Image(systemName: "text.badge.star")
                            .font(.system(size: 40))
                        Text("Wishlist")
                    }
                    Spacer()
                    VStack{
                        Image(systemName: "dollarsign.circle.fill")
                            .font(.system(size:40))
                        Text("Selling")
                    }
                    Spacer()
                    VStack{
                        Image(systemName: "bag.fill")
                            .font(.system(size:40))
                        Text("Buying")
                    }
                }
            }
            Section(header: Text("My Info")){
                HStack{
                   Image(systemName: "at")
                        .font(.system(size: 25))
                    Text(":")
                    Text(user.email)
                        .font(.title3)
                    Spacer()
                    Image(systemName: "square.and.pencil")
                        .font(.system(size: 20))
                        .foregroundColor(Color(.systemBlue))
                }
                HStack{
                   Image(systemName: "phone")
                        .font(.system(size: 25))
                    Text(":")
                    Text(user.phone_number)
                        .font(.title3)
                    Spacer()
                    Image(systemName: "square.and.pencil")
                        .font(.system(size: 20))
                        .foregroundColor(Color(.systemBlue))
                }
                HStack{
                   Image(systemName: "location")
                        .font(.system(size: 25))
                    Text(":")
                    Text(user.college)
                        .font(.title3)
                    Spacer()
                    Image(systemName: "square.and.pencil")
                        .font(.system(size: 20))
                        .foregroundColor(Color(.systemBlue))
                }
            
            }
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            UserView(users: User.data)
        }
    }
}

