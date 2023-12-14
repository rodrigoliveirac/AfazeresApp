//
//  ContentView.swift
//  Afazeres
//
//  Created by Rodrigo Cavalcante on 12/12/23.
//

import SwiftUI

struct AfazeresScreen: View {
    var body: some View {
        
        @State var currentDate = "Dez 14, 2023"
        @State var incomplete = "5"
        @State var completed = "5"
        
        ScrollView {
            VStack(spacing:4) {
                HeaderMainScreen(currentDate:$currentDate, incomplete:$incomplete,completed:$completed)
            }
            .padding().frame(maxHeight: .infinity).padding(8)
        }
    }
}

#Preview {
    AfazeresScreen()
}

struct HeaderMainScreen : View {
    
    @Binding var currentDate: String
    @Binding var incomplete: String
    @Binding var completed: String
    
    var body : some View {
        HStack() {
            Text(currentDate).font(.largeTitle).bold()
            Image("ArrowDown")
        }.frame(maxWidth: .infinity,alignment:.leading)
        Text(incomplete + " incomplete, " + completed + " completed")
            .frame(maxWidth: .infinity,alignment:.leading).font(.subheadline).fontWeight(.semibold).foregroundColor(.comet)
        Spacer()
        Divider()
    }
}
