//
//  DetailsView.swift
//  FavoriteBook
//
//  Created by Ashish Sharma on 12/26/2022.
//

import SwiftUI

struct DetailsView: View {
    
    var chosenFavoriteElement : FavoriteElements
    
    var body: some View {
        VStack{
            Image(chosenFavoriteElement.imagename).resizable().aspectRatio(contentMode: .fit)
            Text(chosenFavoriteElement.name).font(.largeTitle).padding()
            Text(chosenFavoriteElement.description)
            
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenFavoriteElement: petronas)
    }
}
