//
//  GuideView.swift
//  HoneyMoon
//
//  Created by milad on 5/26/23.
//

import SwiftUI

struct GuideView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ScrollView(.vertical,showsIndicators: false)
        {
            VStack (alignment: .center, spacing: 20){
                HeaderCoponent()
                
                Spacer(minLength: 10)
                
                Text("Get Started!").fontWeight(.black).font(.largeTitle).foregroundColor(Color.pink)
                
                Text("Discover and pick the perfect destination for your romantic Honeymoon!").lineLimit(nil).multilineTextAlignment(.center)
                
                Spacer(minLength: 10)
                
                VStack(alignment: .leading,spacing: 25){
                    GuideComponent(title: "Like", subtitle: "Swipe Right", description: "Do you like This destination ? Touch the screen and swipe right. It will be saved in favourites", icon: "heart.circle")
                    
                    GuideComponent(title: "Dismiss", subtitle: "Swipe Right", description: "Do you like This destination ? Touch the screen and swipe right. It will be saved in favourites", icon: "xmark.circle")
                    GuideComponent(title: "Book", subtitle: "Swipe Right", description: "Do you like This destination ? Touch the screen and swipe right. It will be saved in favourites", icon: "checkmark.circle")
                    
                    Spacer(minLength: 10)
                    
                    Button(action: {
                        //Action
                        self.presentationMode.wrappedValue.dismiss()
                    }){
                        Text("Continue".uppercased()).font(.headline)
                            .padding()
                            .frame(minWidth: 0,maxWidth: .infinity)
                            .background( Capsule().fill(Color.pink))
                            .foregroundColor(Color.white)
                    }
                    
                }
            }.frame(minWidth: 0,maxWidth: .infinity)
                .padding(.top,15)
                .padding(.bottom,25)
                .padding(.horizontal,25)
            
        }
        
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
    }
}
