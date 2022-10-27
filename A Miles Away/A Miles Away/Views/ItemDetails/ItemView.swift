//
//  ItemView.swift
//  A Miles Away
//
//  Created by Saket Arora on 11/25/21.
//

import SwiftUI
import Firebase

struct ItemView: View{
    let items : [Item]
    var body: some View{

//        VStack(spacing: 0) {
//            NavigationBarDetailView()
//                .padding(.horizontal)
//                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
//            ZStack {
//                HStack {
//                    HeaderDetailView(item: item)
//                    Spacer()
//                }.offset(y:-300)
//                ZStack {
//                    PictureTabView(item: item)
//                    PictureOptions(item: item)
//                }
//                HStack{
//                    Text("$" + item.listing_price.description)
//                        .font(.title)
//                        .fontWeight(.black)
//                        .padding()
//                        .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.black, lineWidth: 1))
//                    Button(action:{}, label: {
//                        HStack{
//                            Text(item.seller.name)
//                                .font(.title2)
//                                .fontWeight(.black)
//                                .foregroundColor(Color.black)
//                            if item.seller.userImage == "person.crop.circle.badge.questionmark"{ Image(systemName: item.seller.userImage)
//                                .font(.system(size: 30))
//                            }
//                            else{
//                                Image(item.seller.userImage)
//                                .resizable()
//                                .aspectRatio(contentMode: .fill)
//                                .frame(width:60, height: 60, alignment: .center)
//                                .clipShape(Circle())
//                            }
//
//                        }.padding().overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.black, lineWidth: 1))
//                    })
//                }
//                .offset(y:100)
//                Text(item.description).padding().overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.black, lineWidth: 2)).offset(y:235)
//                Button(action:{}, label:{
//                    Text("Contact Seller").foregroundColor(Color.black).font(.title2).fontWeight(.black).padding(EdgeInsets(top: 5, leading: 90, bottom: 5, trailing: 90)).overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.black, lineWidth: 1)).offset(y:350)
//                })
//
//
//
//
//
//            }
//        }.ignoresSafeArea()
        

        
            

        }
    func getItem(doc: String){
        let db = Firestore.firestore()
        let item = db.collection("Items").document(doc)
        item.getDocument { document, errror in
            if let document = document, document.exists{
                let dataDescription = document.data()
                return dataDescription
            }
        }
    }

    }

//func generateRandomPastelColor(withMixedColor mixColor: UIColor?) -> UIColor {
//    // Randomly generate number in closure
//    let randomColorGenerator = { ()-> CGFloat in
//        CGFloat(arc4random() % 256 ) / 256
//    }
//
//    var red: CGFloat = randomColorGenerator()
//    var green: CGFloat = randomColorGenerator()
//    var blue: CGFloat = randomColorGenerator()
//
//    // Mix the color
//    if let mixColor = mixColor {
//        var mixRed: CGFloat = 0, mixGreen: CGFloat = 0, mixBlue: CGFloat = 0;
//        mixColor.getRed(&mixRed, green: &mixGreen, blue: &mixBlue, alpha: nil)
//
//        red = (red + mixRed) / 2;
//        green = (green + mixGreen) / 2;
//        blue = (blue + mixBlue) / 2;
//    }
//
//    return UIColor(red: red, green: green, blue: blue, alpha: 1)
//    }
    
struct ItemView_Previews: PreviewProvider{
    static var previews: some View{
        ItemView(items : Item.data)
    }
}
