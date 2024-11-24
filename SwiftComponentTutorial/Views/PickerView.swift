

import SwiftUI

struct PickerView: View {
        @State private var selectedDate = Date()
        @State private var selectedTime = Date()
        @State private var showPopup: Bool = false
        var body: some View {
            VStack {
        
                DatePicker("Choose a date:", selection: $selectedDate, displayedComponents: [.date])
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .padding(15)
                    .onChange(of: selectedDate) {
                        showPopup = true
                    }
                DatePicker("Time:", selection: $selectedTime, displayedComponents: [.hourAndMinute])
                    .datePickerStyle(WheelDatePickerStyle()).padding(15)
                
            }.sheet(isPresented: $showPopup) {
                // Popup (Sheet) with the selected date
                VStack {
                    Text("\(selectedDate)")
                        .font(.title)
                        .padding()
                    
                    Button("Close") {
                        showPopup = false  // Close the popup
                    }
                    .padding()
                }
                .padding()
            }
        }

    }

#Preview {
    PickerView()
}
