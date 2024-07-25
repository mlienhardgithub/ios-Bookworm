//
//  Example2.swift
//  Bookworm
//
//  Created by Martin Lienhard on 6/27/24.
//

import SwiftUI

struct Example2: View {
    @AppStorage("notes") private var notes = ""
    
    var body: some View {
        NavigationStack {
            /*
            TextEditor(text: $notes)
                .navigationTitle("Notes")
                .padding()
            */
            TextField("Enter your text", text: $notes, axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .navigationTitle("Notes")
                .padding()
        }
    }
}

#Preview {
    Example2()
}
