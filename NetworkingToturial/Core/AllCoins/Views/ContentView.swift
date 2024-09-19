//
//  ContentView.swift
//  NetworkingToturial
//
//  Created by Abbas Jafari on 11/06/1403 AP.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = CoinsViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.coins, id: \.id) { coin in
                HStack(spacing: 12) {
                   Text("\(coin.marketCapRank)")
                       .foregroundColor(.gray)
                   
                   VStack(alignment: .leading, spacing: 4) {
                       Text(coin.name)
                           .fontWeight(.semibold)
                       
                       Text(coin.symbol.uppercased())
                   }
               }
               .font(.footnote)
           }
        }
        .overlay {
            if let error = viewModel.errorMessage {
                Text(error)
            }
        }
    }
}

#Preview {
    ContentView()
}	
