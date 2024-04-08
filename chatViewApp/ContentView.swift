//
//  ContentView.swift
//  chatViewApp
//
//  Created by Amine Gannoun on 08/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    var chat : [Message] = Message.ChatMessages
    
    var body: some View {
        VStack {
            TitleRow()
                .background(Color(.peach))
            
            ScrollView {
                ForEach(chat, id: \.id){ message in
                    MessageBubble(message: message)
                }
            }.background(Color.white)
            
            MessageField()
        }
    }
}

#Preview {
    ContentView()
}
