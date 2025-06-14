//  ThreadCell.swift
//  ThreadsClone
//  Created by Spencer Jones on 6/5/25

import SwiftUI

struct ThreadCell: View {
    let thread: Thread
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                CircularProfileImageView(user: thread.user, size: .small)
                
                // Username and thead caption
                VStack(alignment: .leading,spacing: 4){
                    HStack{
                        Text(thread.user?.username ?? "Anonymous")
                            .font(.footnote)
                            .fontWeight(.semibold)
                    
                        Spacer()
                        
                        Text(thread.timestamp.timestampString())
                            .font(.caption)
                            .foregroundStyle(Color(.systemGray3))
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundStyle(Color(.darkGray))
                        }
                        
                    }
                    Text(thread.caption)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    // TODO: Button Bar Actions
                    HStack(spacing: 16) {
                        Button {
                        
                        } label: {
                            Image(systemName: "heart")
                        }
                        
                        Button {
                        
                        } label: {
                            Image(systemName: "bubble.right")
                        }
                        
                        Button {
                        
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                        }
                        
                        Button {
                        
                        } label: {
                            Image(systemName: "paperplane")
                        }
                    }
                    .foregroundStyle(Color(.black))
                    .padding(.vertical, 8)
                }
            }
            Divider()
        }
        .padding()
    }
}

struct ThreadCell_Previews: PreviewProvider {
    static var previews: some View {
        ThreadCell(thread: dev.thread)
    }
}

// TODO: Change all forgroundColor to forgroundStyle
