//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Ashish Sharma on 12/26/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            ForEach(myFavorites) { favorite in
                Section(header: Text(favorite.title)) {
                    ForEach(favorite.elements) { element in
                        Text(element.name)
                    }
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
