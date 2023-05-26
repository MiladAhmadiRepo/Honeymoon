//
//  FooterView.swift
//  HoneyMoon
//
//  Created by milad on 5/25/23.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        HStack()
        {
            Image(systemName: "info.cricle").font(.system(size: 42,weight: .light))
            Spacer()
            Button(action: {
                print("success")
            })
            {
                Text("Book Destination ".uppercased()).font(.system(.subheadline,design: .rounded)).fontWeight(.heavy).padding(.horizontal,20).padding(.vertical,12).accentColor(Color.pink).background(Capsule().stroke( Color.pink,lineWidth: 2))
            }
            Spacer()
            Image(systemName: "heart.cricle").font(.system(size: 42,weight: .light))
        }
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView().previewLayout(.fixed(width: 375, height: 80))
    }
}
