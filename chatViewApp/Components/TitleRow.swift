//
//  TitleRow.swift
//  chatViewApp
//
//  Created by Amine Gannoun on 08/04/2024.
//

import SwiftUI

struct TitleRow: View {
    
    var imageUrl = URL(string: "https://images.unsplash.com/photo-1567532939604-b6b5b0db2604?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8")
    var name = "Sarah Smith"
    
    var body: some View {
        HStack(spacing: 20) {
            // Image
            AsyncImage(url: imageUrl) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
            } placeholder: {
                ProgressView()
            }

            // Name + nline
            VStack(alignment: .leading){
                Text(name)
                    .font(.title.bold())
                Text("online")
                    .foregroundStyle(Color(.systemGray))
                    .font(.caption)
            }.frame(maxWidth: .infinity, alignment: .leading)
            
            // Call icon
            Image(systemName: "phone.fill")
                .foregroundStyle(Color(.systemGray))
                .padding(10)
                .background(Color(.white))
                .clipShape(Circle())
        }
        .padding()
    }
    
}

#Preview {
    TitleRow()
        .background(Color(.peach))
}
