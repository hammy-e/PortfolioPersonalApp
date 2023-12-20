//
//  EducationView.swift
//  Abraham Estrada Portfolio
//
//  Created by Abraham Estrada on 12/19/23.
//

import SwiftUI

struct EducationView: View {
    var body: some View {
        VStack {
            Text("Education")
                .padding(8)
                .font(.largeTitle)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .leading)
            UniversityView(name: "San Diego State University", desc: "BS in Computer Science \nAug 2022-May 2024 · GPA: 3.74", imageName: "sdsu")
            UniversityView(name: "Southwestern College", desc: "AST in Computer Science \nAug 2019-Dec 2021 · GPA: 3.67", imageName: "swc")
        }
        .padding(.horizontal)
    }
    
    struct UniversityView: View {
        
        var name: String
        var desc: String
        var imageName: String
        
        var body: some View {
            GeometryReader { geo in
                ZStack {
                    Color.white
                    HStack {
                        Image(imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        VStack(alignment: .leading) {
                            Text(name)
                                .font(Font.system(size: 16, weight: .bold, design: .default))
                                .foregroundColor(.black)
                            Text(desc)
                                .font(Font.system(size: 14, weight: .regular, design: .default))
                                .foregroundColor(.black)
                        }
                    }
                    .padding()
                }
                .frame(width: geo.size.width, height: 100, alignment: .center)
                .cornerRadius(12)
                .shadow(radius: 8)
            }
        }
    }
}


struct EducationView_Previews: PreviewProvider {
    static var previews: some View {
        EducationView()
    }
}
