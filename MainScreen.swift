//
//  MainScreen.swift
//  adri
//
//  Created by Adriano Prota on 23/11/23.
//

import SwiftUI
import SwiftData

struct MainScreen: View {
    @State private var ricerca: String = ""
    @State var numNote: String = ""
    @Environment(\.modelContext) private var context
    @Query private var savenote: [NoteItem]
    
    
    var body: some View {
        NavigationView{
            
            VStack{
                List{
                    ForEach(savenote){ paperino in
                        Text(paperino.nota)
                        
                    }
                    
                }
                .navigationTitle("Note")
                .searchable(text: $ricerca)
                
            }.toolbar{
                ToolbarItem(placement: .primaryAction){
                    Button{
                        //
                    }label: {
                        Image(systemName: "ellipsis.circle")
                            .tint(.yellow)
                    }
                    
                    
                }//fineitem TOP
                ToolbarItem(placement: .bottomBar){
                    HStack{
                        Spacer()
//                        NavigationLink(ContentView()){
                        
                        NavigationLink {
                            ContentView()
                        } label: {
                            Image(systemName: "square.and.pencil")
                                .tint(.yellow)
                        }

                            
//                        }
                    }
                    
                    
                }
                
            }//fine TOOLBAR
            
            
            
            //finenavigation
        }
        
        //fineBody
    }
    //fine
}








#Preview {
    MainScreen()
}


/*
 Section(header: Text("Oggi")){
 NavigationLink(destination: ContentView() ){ Text("tentativo")}
 
 }.headerProminence(.increased)
 
 
 
 
 Section(header: Text("Ieri")){
 
 NavigationLink(destination: ContentView()){}
 .opacity(0)
 //Text("tenta")
 
 }.headerProminence(.increased)
 
 
 Section(header: Text("Ultimi 7 giorni")){
 Text("tentativo")
 
 }.headerProminence(.increased)
 
 Section(header: Text("Ultimi 30 giorni")){
 Text("tentativo")
 }.headerProminence(.increased)
 
 Section(header: Text("Precedenti")){
 Text("tentativo")
 }.headerProminence(.increased)
 */





/*.toolbar{
 ToolbarItemGroup(placement: .topBarTrailing){
 Button{
 //
 }label: {
 Image(systemName: "ellipsis.circle")
 .tint(.yellow)
 }
 
 }
 ToolbarItemGroup(placement: .bottomBar){
 Spacer()
 
 Text("Num. note")
 .fontWeight(.regular)
 .font(.system(size:12))
 
 Spacer()
 Button{
 NavigationLink(destination: ContentView())
 }label: {
 Image(systemName: "square.and.pencil")
 .tint(.yellow)
 
 }*/



//            }.toolbar {
//                ToolbarItem(placement: .topBarTrailing) {
//                    Button {
//                        // Azione del tuo pulsante
//                    } label: {
//                        Image(systemName: "ellipsis.circle")
//                            .foregroundColor(.yellow)
//                    }
//                }
//
//
//                ToolbarItemGroup(placement: .automatic) {
//
//                    ToolbarItem(placement: .primaryAction) {
//                        Text("Num. note")
//                            .fontWeight(.regular)
//                            .font(.system(size: 12))
//                    }
//
//                    ToolbarItem(placement: .secondaryAction) {
//                        NavigationLink(destination: ContentView()) {
//                            Image(systemName: "square.and.pencil")
//                                .foregroundColor(.yellow)
//                        }
//                    }
//                }
//            }
//
