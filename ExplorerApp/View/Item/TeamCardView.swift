//
//  TeamCardView.swift
//  ExplorerApp
//
//  Created by Felicia Devina on 06/05/21.
//

import SwiftUI

struct TeamCardView: View {
    var e : ExplorerAPI
    var team:String = ""
    var listTeam : [String] = []
    
    var body: some View {
            VStack(alignment: .leading, spacing: 0, content: {
                List{
                    PortfolioListCardView(title: e.Team, year: e.Team , img:  "https://i.pinimg.com/originals/ec/74/b6/ec74b60c306f05a41b7bba8b80a1f0f1.png")
                    
                    PortfolioListCardView(title: "FANS", year: "witim" , img:  "https://minutes.co/wp-content/uploads/2019/04/shutterstock_1214730637.png")
                
                }
                Spacer()
                
                
            })
            .cornerRadius(0)
            .padding(10)
            .frame(maxWidth: .infinity, minHeight: 280)
            .background(Color.white)
            .cornerRadius(0)
            .shadow(color: Color(#colorLiteral(red: 0.5647058824, green: 0.337254902, blue: 0.337254902, alpha: 1)), radius: 4, x: 2.0, y: 2.0)
        
    }
}

struct TeamCardView_Previews: PreviewProvider {
    static var previews: some View {
        TeamCardView(e: ExplorerAPI(Name: "Angelica", Photo: "https://dl.airtable.com/.attachments/42fda7f9a6380bfcaf6e1e419ae5a512/b361b1e8/AngelicaRoseanne.jpg", Team: "Team 6 / survivAnt", Expertise: "Masak", Shift: "Subuh"))
    }
}
