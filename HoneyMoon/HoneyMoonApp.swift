//
//  HoneyMoonApp.swift
//  HoneyMoon
//
//  Created by milad on 5/24/23.
//

import SwiftUI

@main
struct HoneyMoonApp: App {
    @State var isActive :Bool = false
    var body: some Scene {
        WindowGroup {
            ZStack {
                if(isActive)
                {
                    CardView(honeyMoon: honeyMoonData[1])

                }else
                {
                    SplashView()
                }
            }.onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now()+2.5){
                    withAnimation{
                        self.isActive=true;
                    }
                }
            }
        }
    }
}
