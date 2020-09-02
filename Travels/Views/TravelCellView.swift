//
//  TravelCellView.swift
//  Travels
//
//  Created by Magna TI on 25/08/20.
//  Copyright © 2020 rafaela. All rights reserved.
//

import SwiftUI

struct TravelCellView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass

    var viagem: Viagem
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(viagem.titulo)
                .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
            Image(viagem.imagem)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: self.horizontalSizeClass == .compact ? 115 : 200)
                .clipped()
            
            HStack {
                Text(viagem.quantidadeDeDias)
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
                Spacer()
                Text(viagem.valor)
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
            }
        }
    }
}

struct TravelCellView_Previews: PreviewProvider {
    static var previews: some View {
        TravelCellView(viagem: viagens[0])
            .previewLayout(.fixed(width: 350, height: 200))
    }
}
