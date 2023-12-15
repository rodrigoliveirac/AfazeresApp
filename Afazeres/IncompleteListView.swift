//
//  IncompleteListView.swift
//  Afazeres
//
//  Created by Rodrigo Cavalcante on 15/12/23.
//

import SwiftUI

var afazeres = [Afazer(title: "Comprar mac", description: "na magnusiphone"), Afazer(title: "Jantar pizza", description: "na TwoBrothers"),Afazer(title: "Estudar", description: "SwiftUI")]
struct IncompleteListView : View {
    
    
    @State var isOn = false
    var body : some View {
        VStack(spacing:0) {
            Text("Incomplete").frame(maxWidth:.infinity,alignment:.leading).font(.title2).bold().foregroundColor(.comet)
            Spacer()
            List {
        
                ForEach(afazeres) { afazer in
                    HStack(alignment: .top) {
                        Toggle(isOn: $isOn){}.toggleStyle(CheckToggleStyle()).labelsHidden()
                        VStack {
                            Text(afazer.title).frame(maxWidth:.infinity,alignment:.leading)
                            Text(afazer.description).frame(maxWidth:.infinity,alignment:.leading)
                        }.padding(2)
                        
                    }.listRowBackground(Color.smoke).listRowInsets(.init(top: 8, leading: 0, bottom: 8, trailing: 0))
                    
                }.contentMargins(0).listRowSeparator(.hidden)
            }.contentMargins(0).scrollContentBackground(.hidden)
        }
    }
}

#Preview {
    IncompleteListView()
}
