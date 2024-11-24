
import SwiftUI

struct HomeView: View{
    // some view is a type modifier from Swift 5.1, before this developers had to be specific about the return type the view consisted of.
    // It was common to see type erasure, so, now we have "some" which essentially states the following:
    //“I promise to give you a view (that conforms to the View protocol), but you don’t need to know exactly what kind of view it is."
    var body: some View {
        
        ZStack{
            VStack{
                Text("Weclome to this tutorial, choose a topic from the menu to get started..").padding(50)
                Spacer()
            }
        }
    }
}
#Preview {
    HomeView()
}
