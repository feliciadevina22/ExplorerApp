//
//  PortfolioCardView.swift
//  ExplorerApp
//
//  Created by Felicia Devina on 06/05/21.
//

import SwiftUI

struct PortfolioCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0, content: {
            List{
                PortfolioListCardView(title: "Wake Up Make Up", year: "2019", img:  "https://cdn.popbela.com/content-images/post/20180405/cover-648c4786b219d8bd3811a3682ba14531-750x500-c5b2b4dbb3c990bf653f36702dec66aa_750x500.jpg")
                
                PortfolioListCardView(title: "Travel Bezel", year: "2020", img: "https://cdn.idntimes.com/content-images/community/2019/07/vf-children-asia-1088f066f2b8aaa2d61b6faad5a9fd86_600x400.jpg")
                
                PortfolioListCardView(title: "Typo?", year: "2021", img: "https://theyoungjournalist2014.files.wordpress.com/2014/12/typography-wallpaper-19.jpg")
            }
            
            
        })
        .cornerRadius(0)
        .padding(10)
        .frame(maxWidth: .infinity, minHeight: 280)
        .background(Color.white)
        .cornerRadius(0)
        .shadow(color: Color(#colorLiteral(red: 0.5647058824, green: 0.337254902, blue: 0.337254902, alpha: 1)), radius: 4, x: 2.0, y: 2.0)
        
    }
}

struct PortfolioCardView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioCardView()
    }
}
