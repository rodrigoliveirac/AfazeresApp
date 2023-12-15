//
//  CompletedListView.swift
//  Afazeres
//
//  Created by Rodrigo Cavalcante on 15/12/23.
//

import SwiftUI

var feitos = [Afazer(title: "Comprar presente amigo secreto", description: "roupa"), Afazer(title: "confra", description: "na TwoBrothers"),Afazer(title: "treinar", description: "costas")]

struct CompletedListView : View {
    
    
    @State var isOn = false
    var body : some View {
        
        VStack {
            Text("Completed").frame(maxWidth:.infinity,alignment:.leading).font(.title2).bold().foregroundColor(.comet)
            Spacer()
            List {
        
                ForEach(feitos) { afazer in
                    HStack(alignment: .top) {
                        Toggle(isOn: $isOn){}.toggleStyle(CheckToggleStyle()).labelsHidden()
                        VStack {
                            Text(afazer.title).frame(maxWidth:.infinity,alignment:.leading)
                            Text(afazer.description).frame(maxWidth:.infinity,alignment:.leading)
                        }.padding(2)
                        
                    }.listRowInsets(.init(top: 8, leading: 0, bottom: 8, trailing: 0))
                    
                }.contentMargins(0).listRowSeparator(.hidden)
            
            }.contentMargins(0).scrollContentBackground(.hidden)
            
        }
    }
}

#Preview {
    CompletedListView()
}
