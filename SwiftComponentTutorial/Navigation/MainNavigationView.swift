    import SwiftUI

    struct MainNavigationView: View {
        var body: some View {
            NavigationStack {
                VStack(spacing: 20) {
                    // Title at the top
                    Text("Main Navigation View")
                        .font(.title)
                        .padding(.bottom, 20)
                    
                    // First row of buttons
                    HStack(spacing: 20) {
                        NavigationLink(destination: InputView()) {
                            Text("Input Tutorial")
                                .modifier(ButtonStyleModifier())
                        }
                        
                        NavigationLink(destination: ListView()) {
                            Text("List Tutorial")
                                .modifier(ButtonStyleModifier())
                        }
                    }
                    
                    // Second row of buttons
                    HStack(spacing: 20) {
                        NavigationLink(destination: ButtonView()) {
                            Text("Button Tutorial")
                                .modifier(ButtonStyleModifier())
                        }
                        
                        NavigationLink(destination: PickerView()) {
                            Text("Picker Tutorial")
                                .modifier(ButtonStyleModifier())
                        }
                    }
                    
                    // Third row of buttons
                    HStack(spacing: 20) {
                        NavigationLink(destination: PhotoView()) {
                            Text("Image Tutorial")
                                .modifier(ButtonStyleModifier())
                        }
                        
                        NavigationLink(destination: PView()) {
                            Text("Progress Tutorial")
                                .modifier(ButtonStyleModifier())
                        }
                    }                }
                .padding()
            }
        }
        
        
        
        struct ButtonStyleModifier: ViewModifier {
            func body(content: Content) -> some View {
                content
                    .padding()
                    .frame(maxWidth: .infinity, minHeight: 100) // Ensures all buttons have equal width and height
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .font(.headline) // Uniform font size
            }
        }
    }

    #Preview {
        MainNavigationView()
    }
