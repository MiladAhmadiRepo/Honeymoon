//
//  HeaderView.swift
//  HoneyMoon
//
//  Created by milad on 5/25/23.
//

import SwiftUI

struct HeaderView: View {
    @Binding var showGuidingView : Bool
    var body: some View {
        HStack()
        {
            Button(action: {
                
            })
            {
                Image(systemName: "info.circle").font(.system(size: 42,weight: .light)).accentColor(Color.primary)
            }.accentColor(Color.primary)
            
            
            Spacer()
            
            Image("logo-honeymoon-pink").resizable().scaledToFit().frame(height: 28)
            
            
            Spacer()
            
            
            Button(action: {
                self.showGuidingView.toggle()
            })
            {
                Image(systemName: "questionmark.circle").font(.system(size: 42,weight: .light)).accentColor(Color.primary)
            }.accentColor(Color.primary).sheet(isPresented: $showGuidingView){
                GuideView()
            }
            
        }.padding()
    }

}

struct HeaderView_Previews: PreviewProvider {
    @State static var showGuide : Bool = false
    static var previews: some View {
        HeaderView(showGuidingView: $showGuide).previewLayout(.fixed(width: 375, height: 80))
    }
}
