//
//  MessageBubble.swift
//  chatViewApp
//
//  Created by Amine Gannoun on 08/04/2024.
//

import SwiftUI

struct MessageBubble: View {
    
    var message : Message
    @State var showTime = false
    
    var body: some View {
        VStack(alignment: message.received ? .leading : .trailing) {
            HStack{
                Text(message.text)
                    .padding()
                    .background(Color(message.received ? .grayBubble : Color.peach))
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .font(.footnote)
            }
            .frame(maxWidth: 300, alignment: message.received ? .leading : .trailing)
            .onTapGesture {
                showTime.toggle()
            }
            if showTime {
                Text("\(message.timestump.formatted(date: .omitted, time: .shortened))")
                    .font(.caption2)
                    .foregroundStyle(Color(.systemGray))
                    .padding(.horizontal)
            }
            

        }
        .frame(maxWidth: .infinity, alignment: message.received ? .leading : .trailing)
        .padding(.horizontal)
    }
}

#Preview {
    MessageBubble(message: .PreviewMessage)
}
