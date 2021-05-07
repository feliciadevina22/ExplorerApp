//
//  JsonListView.swift
//  ExplorerApp
//
//  Created by Felicia Devina on 04/05/21.
//

import SwiftUI

struct JsonListView: View {
    @State var explorers: [ExplorerAPI] = []
    
    
    let layout = [GridItem(.flexible()), GridItem(.flexible(minimum: 2)), ]
    
    
    var body: some View {
//        LazyVGrid(columns: layout, spacing: 20){
//            ForEach(explorers) {
//                explorer in explorerCardView(explorer: explorer)
//            }
//        }.onAppear{
//            Api().getPost { (explorers) in
//                self.explorers = explorers
//            }
//        }
        
        List(explorers) { explorer in
            explorerAllCardView(explorer: explorer)

        }
        .onAppear {
            Api().getPost { (explorers) in
                self.explorers = explorers
            }
        }
    }
}

struct JsonListView_Previews: PreviewProvider {
    static var previews: some View {
        JsonListView()
    }
}
