//
//  NoteItem.swift
//  adri
//
//  Created by Adriano Prota on 23/11/23.
//
import Foundation
import SwiftUI
import SwiftData


@Model

class NoteItem: Identifiable {
    var id: String = ""
    var nota: String = ""
    
    init(nota: String) {
        //self.id = UUID().uuidString
        self.nota = nota
    }
    
    
    
    
}
