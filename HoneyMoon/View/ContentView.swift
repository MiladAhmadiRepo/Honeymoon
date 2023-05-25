
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("backgound")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            Image("logo-honeymoon-app")
                .resizable()
                .frame(width: 240 , height: 128, alignment:.center)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
