import SwiftUI

struct PView: View {
    @State private var progress1: Double = 0.1
    @State private var isLoading: Bool = false
    @State private var customProgress: Double = 0.0
    
    var body: some View {
        VStack(spacing: 20) {
        
            
            VStack {
                ProgressFunction(title: "Linear Progress", progress: progress1, type: .linear)
                HStack {
                    Button(action: {
                        if progress1 < 1.0 { progress1 += 0.1 }
                    }) {
                        Image(systemName: "plus").font(.title)
                    }
                    Spacer().frame(width: 20)
                    Button(action: {
                        if progress1 > 0.1 { progress1 -= 0.1 }
                    }) {
                        Image(systemName: "minus").font(.title)
                    }
                }
            }
            
            Spacer()
            Button("Loading") {
                isLoading = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    isLoading = false
                }
            }
            if isLoading {
                ProgressFunction(type: .circular) // Circular spinner
            }
            Spacer()
            
            VStack {
                ProgressFunction(title: "Custom Circular Progress", progress: customProgress, type: .custom)
                HStack {
                    Button(action: {
                        if customProgress < 1.0 { customProgress += 0.1 }
                    }) {
                        Image(systemName: "plus").font(.title)
                    } .onLongPressGesture(minimumDuration: 1.0) {
                        customProgress = 1.0 
                    }
                    Spacer().frame(width: 20)
                    Button(action: {
                        if customProgress > 0.1 { customProgress -= 0.1 }
                    }) {
                        Image(systemName: "minus").font(.title)
                    }.onLongPressGesture(minimumDuration: 1.0){
                        customProgress = 0.0
                    }
                }
            }
            
        
        }
        .padding()
    }
}




struct PView_Previews: PreviewProvider {
    static var previews: some View {
        PView()
    }
}
