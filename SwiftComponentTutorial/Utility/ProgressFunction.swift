import SwiftUI

struct ProgressFunction: View {
    enum ProgressType {
        case circular
        case linear
        case custom
    }
    
    var title: String? = nil         // Optional title
    var progress: Double? = nil      // Optional progress value
    var type: ProgressType = .linear // Progress bar type (default: linear)
    
    var body: some View {
        VStack(spacing: 20) {
            if let title = title {
                Text(title)
                    .font(.headline)
            }
            
            switch type {
            case .circular:
                ProgressView() // Indeterminate circular progress bar
                    .progressViewStyle(CircularProgressViewStyle())
            case .linear:
                if let progress = progress {
                    ProgressView(value: progress) // Determinate linear progress bar
                        .progressViewStyle(LinearProgressViewStyle())
                        .padding()
                } else {
                    ProgressView()
                        .progressViewStyle(LinearProgressViewStyle())
                }
            case .custom:
                ZStack {
                    Circle()
                        .stroke(lineWidth: 10)
                        .opacity(0.3)
                        .foregroundColor(.blue)
                    if let progress = progress {
                        Circle()
                            .trim(from: 0.0, to: CGFloat(progress))
                            .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round))
                            .foregroundColor(.blue)
                            .rotationEffect(Angle(degrees: -90))
                            .animation(.linear, value: progress)
                    }
                }
                .frame(width: 100, height: 100)
            }
        }
        .padding()
    }
}


#Preview {
    ProgressFunction()
}
