
import SwiftUI

struct ContentView: View {
    @State var showAlert : Bool = false;
    @State var showGuide : Bool = false;
    var body: some View {
        VStack(){
            HeaderView(showGuidingView: $showGuide)
            Spacer()
            CardView(honeyMoon:honeyMoonData[2] ).padding()
            Spacer()
            FooterView(showBookingAlert: $showAlert)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
