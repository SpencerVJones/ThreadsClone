//  CurrentUserProfileView.swift
//  ThreadsClone
//  Created by Spencer Jones on 6/10/25.

import SwiftUI

struct CurrentUserProfileView: View {
    @StateObject var viewModel = CurrentUserProfileViewModel()
    @State private var showEditProfile = false
   
    
    private var currentUser: User? {
        return viewModel.currentUser
    }
    
    var body: some View {
        NavigationStack {
            ScrollView (showsIndicators: false) {
                // Header
                VStack (spacing: 20) {
                    ProfileHeaderView(user: currentUser)
                    
                    
                    // Follow button
                    Button {
                        showEditProfile.toggle()
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(.black))
                            .frame(width: 352, height: 32)
                            .background(.white)
                            .cornerRadius(8)
                            .overlay {
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color(.systemGray4), lineWidth: 1)
                            }
                    }
                    
                    // User content list view
                    if let user = currentUser{
                        UserContentListView(user: user)
                    }
                }
            }
            .sheet(isPresented: $showEditProfile, content: {
                if let user = currentUser {
                    EditProfileView(user: user)
                }
            })
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        AuthService.shared.signOut() // Signs user out
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                }
            }
            .padding(.horizontal)
        }

    }
}

// TODO: Update all views previews
struct CurrentUserProfileView_Previews : PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView()
    }
}
