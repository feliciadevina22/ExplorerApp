//
//  NavigationBarModifier.swift
//  ExplorerApp
//
//  Created by Felicia Devina on 05/05/21.
//

import Foundation
import SwiftUI

struct NavigationBarModifier: ViewModifier {
        
    var backgroundColor: UIColor?
    
    init( backgroundColor: UIColor?) {
        self.backgroundColor = backgroundColor
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithTransparentBackground()
        coloredAppearance.backgroundColor = .clear
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor(Color(#colorLiteral(red: 0.4117647059, green: 0.137254902, blue: 0.137254902, alpha: 1)))]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor(Color(#colorLiteral(red: 0.4117647059, green: 0.137254902, blue: 0.137254902, alpha: 1)))]
        UITabBar.appearance().backgroundColor = UIColor(Color(#colorLiteral(red: 1, green: 0.9764705882, blue: 0.9764705882, alpha: 1)))
        
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        UINavigationBar.appearance().tintColor =  UIColor(Color(#colorLiteral(red: 0.3254901961, green: 0.4431372549, blue: 0.8196078431, alpha: 1)))

    }
    
    func body(content: Content) -> some View {
        ZStack{
            content
            VStack {
                GeometryReader { geometry in
                    Color(self.backgroundColor ?? .clear)
                        .frame(height: geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)
                    Spacer()
                }
            }
        }
    }
}


extension View {
 
    func navigationBarColor(_ backgroundColor: UIColor?) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor))
    }

}
