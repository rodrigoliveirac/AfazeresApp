//
//  ContentView.swift
//  Afazeres
//
//  Created by Rodrigo Cavalcante on 12/12/23.
//

import SwiftUI

struct AfazeresScreen: View {
    var body: some View {
        @State var isChecked:Bool = false
        @State var currentDate = "Dez 14, 2023"
        @State var incomplete = "5"
        @State var completed = "5"
        
            VStack(spacing:4) {
                HeaderMainScreen(currentDate:$currentDate, incomplete:$incomplete,completed:$completed)
                Spacer()
                IncompleteListView()
                CompletedListView()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "plus")
                
                        .font(.title.weight(.light))
                        .padding()
                        .background(Color.dodgerBlue)
                        .foregroundColor(.white)
                        .clipShape(Circle()).frame(maxWidth:.infinity,alignment: .bottomTrailing)

                }).padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
            }.background(.smoke)
            .padding().frame(maxHeight: .infinity).padding(8).background(.smoke)
    
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

struct Afazer: Identifiable{
    let title: String
    let description :  String
    let id = UUID()
}



                                 struct CheckToggleStyle: ToggleStyle {
                                     func makeBody(configuration: Configuration) -> some View {
                                         Button {
                                             configuration.isOn.toggle()
                                         } label: {
                                             Label {
                                                 configuration.label
                                             } icon: {
                                                 Image(configuration.isOn ? "MyCheckBoxFilled" : "MyCheckBox")
                                                     .foregroundStyle(configuration.isOn ? Color.accentColor : .secondary)
                                                     .accessibility(label: Text(configuration.isOn ? "Checked" : "Unchecked"))
                                                     .imageScale(.medium)
                                             }.contentMargins(0)
                                         }
                                       
                                     }
                                 }
