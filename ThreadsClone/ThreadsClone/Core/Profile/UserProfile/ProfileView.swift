//  ProfileView.swift
//  ThreadsClone
//  Created by Spencer Jones on 6/5/25.

import SwiftUI

struct ProfileView: View {
    // Inject profile with a user
    let user: User
    

    

    
    var body: some View {
        
            ScrollView (showsIndicators: false) {
                // Header
                VStack (spacing: 20) {
                    ProfileHeaderView(user: user)
                    
                    // Follow button
                    Button {
                        
                    } label: {
                        Text("Follow")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(.white))
                            .frame(width: 352, height: 32)
                            .background(.black)
                            .cornerRadius(8)
                    }
                    
                    // User content list view
                    UserContentListView(user: user)
                }
            }

            .navigationBarTitleDisplayMode(.inline)
            .padding(.horizontal)
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
    ProfileView(user: dev.user)
    }
}
