import SwiftUI

struct PhotoView: View {
    // Add an array to hold your image names and titles
    let photos = [
        ("1994 Toyota MR2", "Toyota MR2"),
        ("1996 Nissan Silva", "Nissan Silva"),
        ("Mazda RX7", "Mazda RX-7"),
        ("BMW E46 330ci", "BMW 330ci")
    ]
    
    var body: some View {
        List {
            ForEach(photos, id: \.0) { photo in
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.white)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 5)
                    
                    VStack {
                        Image(photo.0) // Use the image name from the array
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                        
                        Text(photo.1) // Use the title from the array
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.top, 10)
                    }
                    .padding()
                }
                .padding(.vertical, 10)
            }
        }
        .background(Color(.systemGroupedBackground)) // Add subtle background
        .edgesIgnoringSafeArea(.all)
        .listStyle(PlainListStyle()) // Optional for cleaner list appearance
    }
}

#Preview {
    PhotoView()
}
