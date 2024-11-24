

import SwiftUI

struct ButtonView: View {
    @State var showAlert = false
    
    var body: some View {
        VStack (spacing: 105){
            //Simple Button
            Button(action: {
                //Code on button press
                print("Button has been pressed!")
                
            }, label: {
                Text("Press me!").padding(15).foregroundColor(Color.white).background(Color.blue).cornerRadius(10)
            }).accessibilityLabel("Press Me Button")
            
            //Alert Button with different roles
            Button(action: {
                showAlert = true // Show the alert when button is tapped
            }) {
                Text("This is an alert")
                    .padding(15) // Adds padding around the text
                    .foregroundColor(Color.white) // Sets the text color to white
                    .background(Color.blue) // Sets the background color to blue
                    .cornerRadius(10) // Rounds the button's corners
            }
            .alert("Show Alert", isPresented: $showAlert) {
                Button("Cancel", role: .cancel) {
                    print("Action Cancelled")
                }
                // Destructive is used for dangerous actions
                Button("Warning", role:.destructive) { print("Action Destructive")}
                // No role is now .default
                Button("Proceed") {
                    print("Continue")
                }
            } message: {
                Text("This is a basic alert")
            }
        }}}


#Preview {
    ButtonView()
}
