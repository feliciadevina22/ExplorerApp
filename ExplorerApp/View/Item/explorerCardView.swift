//
//  explorerCardView.swift
//  ExplorerApp
//
//  Created by Felicia Devina on 03/05/21.
//

import SwiftUI

struct explorerCardView: View {
    var explorer : ExplorerAPI
    
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0, content: {
            
            Image("person.fill")
                .data(url: URL(string: explorer.Photo)!)
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 125, maxHeight: 190)
            Spacer()
            Text(explorer.Name)
                .font(.headline)
                .foregroundColor(Color(#colorLiteral(red: 0.4117647059, green: 0.137254902, blue: 0.137254902, alpha: 1)))
            Text(explorer.Expertise)
                .font(.subheadline)
                .foregroundColor(Color(#colorLiteral(red: 0.5647058824, green: 0.337254902, blue: 0.337254902, alpha: 1)))
            Spacer()
            
        })
        .cornerRadius(8)
        .padding(12)
        .frame(width: 150, height: 270)
        .background(Color.white)
        .cornerRadius(8)
        .shadow(color: Color(#colorLiteral(red: 0.5647058824, green: 0.337254902, blue: 0.337254902, alpha: 1)), radius: 4, x: 2.0, y: 2.0)
    }
    
}

struct explorerCardView_Previews: PreviewProvider {
    static var previews: some View {
        explorerCardView(explorer: ExplorerAPI(Name: "Angelica", Photo: "https://dl.airtable.com/.attachments/42fda7f9a6380bfcaf6e1e419ae5a512/b361b1e8/AngelicaRoseanne.jpg", Team: "survivAnt", Expertise: "Masak", Shift: "Subuh"))
    }
}


