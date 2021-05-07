//
//  explorerAllCardView.swift
//  ExplorerApp
//
//  Created by Felicia Devina on 04/05/21.
//

import SwiftUI

struct explorerAllCardView: View {
    
    var explorer : ExplorerAPI
    
    var body: some View {
        HStack(alignment: .center, spacing: 8, content: {
            Image("person.fill")
                .data(url: URL(string: explorer.Photo)!)
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 125, maxHeight: 105)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5, content: {
                Text(explorer.Name)
                    .font(.headline)
                    .foregroundColor(Color(#colorLiteral(red: 0.4117647059, green: 0.137254902, blue: 0.137254902, alpha: 1)))
                Text(explorer.Expertise)
                    .font(.subheadline)
                    .foregroundColor(Color(#colorLiteral(red: 0.5647058824, green: 0.337254902, blue: 0.337254902, alpha: 1)))
                
                Spacer()
                
                HStack{
                    Spacer()
                    
                    if(explorer.Shift == "Morning"){
                        Text("Morning")
                            .font(.subheadline)
                            .foregroundColor(Color(#colorLiteral(red: 0.5647058824, green: 0.337254902, blue: 0.337254902, alpha: 1)))
                        Image(systemName: "cloud.sun.fill")
                            .foregroundColor(Color(#colorLiteral(red: 0.5647058824, green: 0.337254902, blue: 0.337254902, alpha: 1)))
                    } else if (explorer.Shift == "Afternoon"){
                        Text("Afternoon")
                            .font(.subheadline)
                            .foregroundColor(Color(#colorLiteral(red: 0.5647058824, green: 0.337254902, blue: 0.337254902, alpha: 1)))
                        Image(systemName: "sun.min.fill")
                            .foregroundColor(Color(#colorLiteral(red: 0.5647058824, green: 0.337254902, blue: 0.337254902, alpha: 1)))
                    } else {
                        Text("Mentor")
                            .font(.subheadline)
                            .foregroundColor(Color(#colorLiteral(red: 0.5647058824, green: 0.337254902, blue: 0.337254902, alpha: 1)))
                        Image(systemName: "powersleep")
                            .foregroundColor(Color(#colorLiteral(red: 0.5647058824, green: 0.337254902, blue: 0.337254902, alpha: 1)))
                    }
                    
                    
                }
                
            })
            
        })
        .padding(12)
        .frame(maxWidth: .infinity, maxHeight: 130)
        .background(Color.white)
        .cornerRadius(8)
        .shadow(color: Color(#colorLiteral(red: 0.5647058824, green: 0.337254902, blue: 0.337254902, alpha: 1)), radius: 4, x: 2.0, y: 2.0)
    }
}

struct explorerAllCardView_Previews: PreviewProvider {
    static var previews: some View {
        explorerAllCardView(explorer: ExplorerAPI(Name: "Angelica", Photo: "https://dl.airtable.com/.attachments/42fda7f9a6380bfcaf6e1e419ae5a512/b361b1e8/AngelicaRoseanne.jpg", Team: "survivAnt", Expertise: "Masak", Shift: "Morning"))
    }
}
