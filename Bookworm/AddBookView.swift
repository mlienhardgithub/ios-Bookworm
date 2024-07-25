//
//  AddBookView.swift
//  Bookworm
//
//  Created by Martin Lienhard on 7/3/24.
//

import SwiftUI

struct AddBookView: View {
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss

    @State private var title = ""
    @State private var author = ""
    @State private var rating = 3 //default rating
    @State private var genre = "Fantasy" //default genre
    @State private var review = ""
    
    let genres = ["Fantasy", "Horror", "Kids", "Mystery", "Poetry", "Romance", "Thriller"]
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Name of book", text: $title)
                    TextField("Author's name", text: $author)

                    Picker("Genre", selection: $genre) {
                        ForEach(genres, id: \.self) {
                            Text($0)
                        }
                    }
                }

                Section("Write a review") {
                    TextEditor(text: $review)
                    RatingView(rating: $rating)
                    
                    /*
                    Picker("Rating", selection: $rating) {
                        ForEach(0..<6) {
                            Text(String($0))
                        }
                    }
                    */
                }

                Section {
                    Button("Save") {
                        // add the book
                        let newBook = Book(title: title, author: author, genre: genre, review: review, rating: rating)
                        
                        modelContext.insert(newBook)
                        dismiss()
                    }
                }
                .disabled(isValidBook() == false)
            }
            .navigationTitle("Add Book")
        }
    }
    
    func isValidBook() -> Bool {
        if title.trimmingCharacters(in: [" "]).isEmpty || author.trimmingCharacters(in: [" "]).isEmpty || genre.trimmingCharacters(in: [" "]).isEmpty {
            return false
        }
        return true
    }
}

#Preview {
    AddBookView()
}
