

import SwiftUI

struct InputView: View {
    // State properties to hold the values of each input
    @State private var sliderValue: Double = 50
    @State private var textFieldValue: String = ""
    @State private var isChecked: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            // Slider
            VStack {
                Text("Slider Value: \(Int(sliderValue))")
                    .font(.headline)
                Slider(value: $sliderValue, in: 0...100, step: 1)
                    .padding()
            }
            
            // TextField
            VStack {
                Text("Enter some text:")
                    .font(.headline)
                TextField("Type something...", text: $textFieldValue)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.default)
            }
            
            // Checkbox (Toggle)
            VStack {
                Toggle(isOn: $isChecked) {
                    Text("Agree to Terms and Conditions")
                        .font(.headline)
                }
                .padding()
            }
            
            // Displaying input data below (optional)
            VStack {
                Text("You entered:")
                    .font(.headline)
                Text("Slider: \(Int(sliderValue))")
                Text("Input: \(textFieldValue.isEmpty ? "Nothing" : textFieldValue)")
                Text("Checkbox is \(isChecked ? "checked" : "unchecked")")
            }
            .padding()
            
            Spacer()
        }
        .padding()
        .navigationTitle("Input Form")
    }
}

#Preview {
    InputView()
}
