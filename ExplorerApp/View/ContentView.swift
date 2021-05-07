//
//  ContentView.swift
//  ExplorerApp
//
//  Created by Felicia Devina on 29/04/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTab = Tab.First
    
    enum Tab {
        case First, Second, Third
        
        var title: String {
            switch self {
            case .First:
                return "Welcome, Felicia"
            case .Second:
                return "Forum"
            case .Third:
                return "Profile"
            }
        }
        
        var mode: NavigationBarItem.TitleDisplayMode {
            switch self {
            case .First:
                return .automatic
            case .Second:
                return .inline
            case .Third:
                return .inline
            }
        }
        
        var button: String {
            switch self {
            case .First:
                return "bell.fill"
            case .Second:
                return "plus"
            case .Third:
                return "pencil"
            }
        }
    }
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(Color(#colorLiteral(red: 1, green: 0.9764705882, blue: 0.9764705882, alpha: 1)))
    }
    
    var body: some View {
        NavigationView {
            TabView(selection: $selectedTab){
                HomeScreenView(nama: "Felicia")
                    .tabItem {
                        Text("Home")
                        Image(systemName: "house.fill")
                    }.tag(Tab.First)
                ForumScreenView()
                    .tabItem {
                        Text("Forum")
                        Image(systemName: "note.text")
                    }.tag(Tab.Second)
                ProfileScreenView(e: ExplorerAPI(Name: "Felicia Devina Siswanto", Photo: "https://dl.airtable.com/.attachments/f4e031566703e5624dba9aa9a279c9ae/39b8226d/FeliciaDevina.jpg", Team: "Team 6 / Game", Expertise: "Tech / IT / IS", Shift: "Afternoon"))
                    .tabItem {
                        Text("Profile")
                        Image(systemName: "person.crop.circle.fill")
                    }.tag(Tab.Third)
            }
            .navigationTitle(selectedTab.title)
            .navigationBarTitleDisplayMode(selectedTab.mode).toolbar{
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    Button {
                        print("Add")
                    } label: {
                        Label("Add new Forum", systemImage: selectedTab.button)
                    }
                }
            }
            .navigationBarColor(UIColor(Color(#colorLiteral(red: 1, green: 0.9764705882, blue: 0.9764705882, alpha: 1))))
            .accentColor(Color(#colorLiteral(red: 0.3254901961, green: 0.4431372549, blue: 0.8196078431, alpha: 1)))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Image {
    func data(url:URL) -> Self {
        if let data = try? Data(contentsOf: url) {
            return Image(uiImage: UIImage(data: data)!)
                .resizable()
        }
        return self
            .resizable()
    }
}
