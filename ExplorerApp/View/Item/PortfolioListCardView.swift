//
//  PortfolioListCardView.swift
//  ExplorerApp
//
//  Created by Felicia Devina on 06/05/21.
//

import SwiftUI

struct PortfolioListCardView: View {
    var title: String
    var year: String
    var img: String
    var desc = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis congue metus. Curabitur volutpat massa quis augue lobortis, non porttitor massa pretium. In nec elit quam. Nam a nulla ligula. Sed bibendum pulvinar orci, in suscipit nulla. Duis nec laoreet urna. Praesent tempus eros mi, ut sodales orci fermentum in. In laoreet eros mi, id gravida mauris posuere eget. Etiam ut nisl justo. Fusce eu lacinia ipsum, et pharetra dolor. Vivamus pharetra lorem nisi, in lobortis nisi convallis blandit."
    
    
    var body: some View {
        HStack(alignment: .center, spacing: 8, content: {
            Image("person.fill")
                .data(url: URL(string: img)!)
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 125, maxHeight: 105)
                .cornerRadius(8)
            
            
            VStack(alignment: .leading, spacing: 5, content: {
                Text(title)
                    .font(.headline)
                    .foregroundColor(Color(#colorLiteral(red: 0.4117647059, green: 0.137254902, blue: 0.137254902, alpha: 1)))
                Text(year)
                    .font(.subheadline)
                    .foregroundColor(Color(#colorLiteral(red: 0.5647058824, green: 0.337254902, blue: 0.337254902, alpha: 1)))
                
                Spacer()
                
            })
            
            Spacer()
            
        })
        .padding(12)
        .frame(maxWidth: .infinity, maxHeight: 130)
        .background(Color.white)
    }
}

struct PortfolioListCardView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioListCardView(title: "Wake Up Make Up", year: "2019", img: "https://cdn.popbela.com/content-images/post/20180405/cover-648c4786b219d8bd3811a3682ba14531-750x500-c5b2b4dbb3c990bf653f36702dec66aa_750x500.jpg")
    }
}
