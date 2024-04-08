//
//  Message.swift
//  chatViewApp
//
//  Created by Amine Gannoun on 08/04/2024.
//

import Foundation


struct Message : Identifiable, Codable {
    var id : String
    var text : String
    var received : Bool
    var timestump : Date
}

extension Message {
    static let PreviewMessage = Message(id: "1234",
                                        text: "Happy to Develop SwiftUI Applications from scratch !",
                                        received: true,
                                        timestump: Date())
    
    static let ChatMessages = [Message(id: "1", text: "Hello Sarah!", received: false, timestump: Date()),
                               Message(id: "2", text: "Hey there!", received: true, timestump: Date()),
                               Message(id: "3", text: "What have you been up to lately ?", received: false, timestump: Date()),
                               Message(id: "4", text: "I’ve been reading a lot of books, and learning so much! How about you ?", received: true, timestump: Date()),
                               Message(id: "5", text: "What kind of books are you reading ?", received: false, timestump: Date()),
                               Message(id: "6", text: "I have been building SwiftUI applications from scratch and it’s soooo much fun!", received: false, timestump: Date()),
                               Message(id: "7", text: "I’ve just built a chat application from scratch ", received: false, timestump: Date())]
    
}
