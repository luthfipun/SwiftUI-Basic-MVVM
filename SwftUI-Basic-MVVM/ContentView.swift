//
//  ContentView.swift
//  SwftUI-Basic-MVVM
//
//  Created by Luthfi Abdul Azis on 30/04/20.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = UserListViewModel()
    
    var body: some View {
        VStack {
            ForEach(viewModel.users, id: \.id){ user in
                VStack(alignment: .leading) {
                    Text("Name : \(user.name)")
                    Text("Email : \(user.email)")
                    Text("Phone : \(user.phone)")
                    Text("Gender : \(user.gender)")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
