//
//  MessageField.swift
//  chatViewApp
//
//  Created by Amine Gannoun on 08/04/2024.
//

import SwiftUI

struct MessageField: View {
    
    @State private var message = ""
    
    var body: some View {
        
        HStack {
            // Custom text field created below
            CustomTextField(placeholder:"Enter your message here", text: $message)
                .frame(height: 52)
                .disableAutocorrection(true)

            Button {
                //messagesManager.sendMessage(text: message)
                message = ""
            } label: {
                Image(systemName: "paperplane.fill")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(.peach)
                    .cornerRadius(50)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(Color.grayBubble)
        .cornerRadius(50)
        .padding()
        
    }
}

#Preview {
    MessageField()
}

struct CustomTextField: View {
    var placeholder: String
    @Binding var text: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }

    var body: some View {
        ZStack(alignment: .leading) {
            // If text is empty, show the placeholder on top of the TextField
            TextField(placeholder, text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
    }
}
