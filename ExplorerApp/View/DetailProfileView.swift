//
//  DetailProfileView.swift
//  ExplorerApp
//
//  Created by Felicia Devina on 05/05/21.
//

import SwiftUI

struct DetailProfileView: View {
    var e: ExplorerAPI
    @State private var selectedfilter = "Profile"
    
    var profileSegmented = ["Profile", "Portfolio", "Team"]
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1, green: 0.9764705882, blue: 0.9764705882, alpha: 1)).ignoresSafeArea()
            
            
            VStack{
                PhotoProfileView(explorer: e)
                
                Spacer()
                
                Picker(selection: $selectedfilter, label: Text("Explorer")) {
                    ForEach(profileSegmented, id: \.self){
                        Text($0)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                
                Spacer()
                
                
                if(selectedfilter == "Profile"){
                    ProfileCardView()
                }else if (selectedfilter == "Portfolio"){
                    PortfolioCardView()
                }else {
                    TeamCardView(e: e)
                }
                
            }
            .padding(30)
            .navigationBarTitle(Text(e.Name)).navigationBarTitleDisplayMode(.inline)
            
            
        }
        .accentColor(Color(#colorLiteral(red: 0.3254901961, green: 0.4431372549, blue: 0.8196078431, alpha: 1)))
    }
}

struct DetailProfileView_Previews: PreviewProvider {
    static var previews: some View {
        DetailProfileView(e: ExplorerAPI(Name: "Angelica", Photo: "https://dl.airtable.com/.attachments/42fda7f9a6380bfcaf6e1e419ae5a512/b361b1e8/AngelicaRoseanne.jpg", Team: "survivAnt", Expertise: "Masak", Shift: "Subuh"))
    }
}
