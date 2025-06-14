//  ContentView.swift
//  ThreadsClone
//  Created by Spencer Jones on 6/5/25.

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        if viewModel.userSession != nil {
            ThreadsTabView()
        } else {
            LoginView()
        }
    }
}

#Preview {
    ContentView()
}
