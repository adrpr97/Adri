//
//  ContentView.swift
//  adri
//
//  Created by Adriano Prota on 23/11/23.
//

import SwiftUI
import SwiftData


struct ContentView: View {
    @State private var TextFieldNote: String = ""
    @State private var TextFieldNote1: String = ""
    @Environment(\.modelContext) private var context
    @Query private var save: [NoteItem]
    @State var pippo: String = ""
    //@State var Salvataggio: [NoteItem]

    
    
    
    var body: some View {
        
        
//        NavigationView{
            ZStack{
                Color.black
                
                VStack{
                    
                    TextEditor(text: $pippo)
                    //.background(Color.red)
                        .padding(.horizontal,15)
                        .padding(.bottom,250)
                        .font(.title).bold()
                    
                   
//                    List{
//                        ForEach (tests) { test in
//                            Text(test.name)
//
//                        }
//
                }
                
            }.toolbar(){
                
                ToolbarItemGroup(placement: .topBarTrailing){
                
                    Button{
                        //
                    }label: {
                        Image(systemName: "ellipsis.circle")
                            .tint(.yellow)
                        
                    }
                    Button{
                        //
                    }label: {
                        Image(systemName: "square.and.arrow.up")
                            .tint(.yellow)
                    }
                    
                    Button{
                        addNote(notename: pippo)
                        pippo = "" // pulisce campo
                        
                    }label: {
                        Text("Fine")
                            .tint(.yellow)
                    }
                    
                }
            }
        

        
        
        
    }
    
    
    
    
    
    func addNote(notename : String) {
          
        let add = NoteItem(nota: notename)
        context.insert(add)
        try? context.save()
        
        }
    
    
    
    
}





#Preview {
    NavigationStack {
        ContentView()
    }
}
/*NavigationLink(destination: ContentView()){
 Text("<Note")
 .tint(.yellow)
 }//.padding(.leading,-100)
 
 NavigationLink(destination: ContentView()){
 Text("Fine")
 .tint(.yellow)
 }//.padding(.leading,1)
 
 //.padding(.top,-330)*/
