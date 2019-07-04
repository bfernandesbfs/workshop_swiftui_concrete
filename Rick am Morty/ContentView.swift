//
//  ContentView.swift
//  Rick am Morty
//
//  Created by b.fernandes.santos on 03/07/19.
//  Copyright © 2019 bls. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    let model = Character(imageName: "159", name: "Rick", status: "Alive", details: [
        DetailViewModel(title: "Status", description: "Alive"),
        DetailViewModel(title: "Location", description: "Earth"),
        DetailViewModel(title: "Type", description: "Earth"),
        DetailViewModel(title: "Gender", description: "Earth"),
        DetailViewModel(title: "Origin", description: "Earth"),
    ])
    var body: some View {
        NavigationView {
            List(1..<5) {i in
                NavigationLink(destination:
                    DetailView(character: self.model), label: {
                        return Cell(title: self.model.name, subTitle: self.model.status, image: self.model.imageName)
                        
                }
                )}
            .navigationBarTitle(Text("Rick and Morty"))
        }
    }
}

struct DetailView : View {
    
    var character:Character
    
    var body : some View {
        List {
            Image("159")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 350)
                .cornerRadius(10)
                .clipped()
            Section(header: Text("CHARACTERISTICS")) {
                ForEach(character.details) { item in
                    HStack {
                        Text(item.title)
                        Spacer()
                        Text(item.description)
                    }
                }
            }
        }
        .navigationBarTitle("Detail")
        .listStyle(.grouped)
    }
    
}

struct Cell : View {
    var title: String
    var subTitle: String
    var image: String

    var gradient: LinearGradient {
        let g = Gradient(colors: [.clear, .black])
        return LinearGradient(gradient: g, startPoint: UnitPoint.top, endPoint: .bottom)
    }

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .clipped()
                .overlay(Rectangle()
                    .fill(gradient))
            VStack(alignment: .leading) {
                Text(title)
                    .font(.title)
                Text(subTitle)
                    .font(.subheadline)
                }
                    .padding()
        }
            .foregroundColor(.white)
            .cornerRadius(10)
            .shadow(radius: 8)
    }

}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
