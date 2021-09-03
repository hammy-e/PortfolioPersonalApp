//
//  SkillsView.swift
//  Abraham Estrada Portfolio
//
//  Created by Abraham Estrada on 9/2/21.
//

import SwiftUI

struct SkillsView: View {
    var body: some View {
        Text("  Skills")
            .padding(8)
            .font(.largeTitle)
            .foregroundColor(.black)
            .frame(maxWidth: .infinity, alignment: .leading)
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                SingleSkillView(name: "Swift", imageName: "swift")
                SingleSkillView(name: "Xcode", imageName: "xcode")
                SingleSkillView(name: "UIKit", imageName: "apple")
                SingleSkillView(name: "GitHub", imageName: "github")
            }
            .padding(14)
        }
    }
    
    struct SingleSkillView: View {
        
        var name: String
        var imageName: String
        
        var body: some View {
            ZStack {
                Color.white
                VStack {
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text(name)
                        .font(Font.system(size: 18, weight: .regular, design: .default))
                        .foregroundColor(.black)
                }
                .padding()
            }
            .frame(width: 100, height: 100, alignment: .center)
            .cornerRadius(12)
            .shadow(radius: 8)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            VStack {
                SkillsView()
            }
        }
    }
}
