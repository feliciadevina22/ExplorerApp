//
//  PhotoProfileView.swift
//  ExplorerApp
//
//  Created by Felicia Devina on 05/05/21.
//

import SwiftUI

struct PhotoProfileView: View {
    var explorer : ExplorerAPI
    
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 0, content: {
            
            Image("person.fill")
                .data(url: URL(string: explorer.Photo)!)
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            Spacer()
            Text(explorer.Name)
                .font(.headline)
                .bold()
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .foregroundColor(Color(#colorLiteral(red: 0.4117647059, green: 0.137254902, blue: 0.137254902, alpha: 1)))
            Text(explorer.Expertise)
                .font(.subheadline)
                .foregroundColor(Color(#colorLiteral(red: 0.5647058824, green: 0.337254902, blue: 0.337254902, alpha: 1)))
            
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
        .cornerRadius(0)
        .padding(20)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .cornerRadius(0)
        .shadow(color: Color(#colorLiteral(red: 0.5647058824, green: 0.337254902, blue: 0.337254902, alpha: 1)), radius: 4, x: 2.0, y: 2.0)
    }
}

struct PhotoProfileView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoProfileView(explorer: ExplorerAPI(Name: "Angelica Roseanne", Photo: "https://dl.airtable.com/.attachments/42fda7f9a6380bfcaf6e1e419ae5a512/b361b1e8/AngelicaRoseanne.jpg", Team: "survivAnt", Expertise: "Masak", Shift: "Subuh"))
    }
}
