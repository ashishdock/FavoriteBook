//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Ashish Sharma on 12/26/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List {
                ForEach(myFavorites) { favorite in
                    Section(header: Text(favorite.title)) {
                        ForEach(favorite.elements) { element in
                            NavigationLink(
                                destination: DetailsView(chosenFavoriteElement: element),
                                label: {
                                    Text(element.name)
                                })
                        }
                    }
                }
                
            }.navigationBarTitle(Text("FavoriteBook App"))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
