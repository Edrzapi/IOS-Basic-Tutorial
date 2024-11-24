//
//  ListView.swift
//  SwiftComponentTutorial
//
//  Created by Ed on 17/11/2024.
//

import SwiftUI

struct ListView: View {
    
    
    struct User: Identifiable {
        let firstName: String, lastName: String, email: String
        let id = UUID()
    }
    
    let listItems = ["One", "Two", "Three", "four", "Five"]
    var listStuff = [
        User(firstName: "Ed", lastName: "Edson", email: "check@gmail.com"),
        User(firstName: "Alice", lastName: "Johnson", email: "alice.johnson@example.com"),
        User(firstName: "Bob", lastName: "Smith", email: "bob.smith@example.com"),
        User(firstName: "Charlie", lastName: "Brown", email: "charlie.brown@example.com"),
        User(firstName: "Diana", lastName: "Prince", email: "diana.prince@example.com")
    ]
    
    var body: some View {
        VStack(spacing: 0) { // Set spacing to 0
            List {
                ForEach(listItems, id: \.self) { item in
                    Text(item).frame(minWidth: 0, maxWidth: .infinity)
                }
                .listRowSeparator(.hidden)
            }
            
            List(listStuff) { item in
                HStack {
                    Text("\(item.firstName) \(item.lastName)")
                        .font(.headline)
                    Spacer() // Pushes the email to the right
                    Text(item.email)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .listRowSeparator(.hidden)
            }}}
}

#Preview {
    ListView()
}
