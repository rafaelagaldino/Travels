//
//  ContentView.swift
//  Travels
//
//  Created by Magna TI on 20/08/20.
//  Copyright © 2020 rafaela. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass

    var body: some View {
        NavigationView {
            GeometryReader { view in
                VStack {
                    HeaderView()
                        .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 200 : 300, alignment: .top)
                    
                    List(viagens) { viagem in
                        NavigationLink(destination: MapView(coordinate: viagem.localizacao).navigationBarTitle("Location")) {
                            TravelCellView(viagem: viagem)
                        }
                    }
                    .navigationBarTitle(" ")
                }
            }
            .edgesIgnoringSafeArea(.all)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
