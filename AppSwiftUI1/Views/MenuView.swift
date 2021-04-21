//
//  MenuView.swift
//  AppSwiftUI1
//
//  Created by Yony Bar-Magen Numhauser on 21/4/21.
//

import SwiftUI

struct MenuView: View {
    
    var onBtnMenuCerrarPressed:()->Void = {}
    
    var body: some View {
        VStack{
            Button(action: actionPerfil) {
                Text("Perfil")
            }
            Button(action: actionPosts) {
                Text("Posts")
            }
            Button(action: actionAjustes) {
                Text("Ajustes")
            }
            Button(action: actionAmigos) {
                Text("Amigos")
            }
            Button(action: actionCerrar) {
                Text("Cerrar")
            }
        }
    }
    
    func actionPerfil() {
        
    }
    func actionPosts() {
        
    }
    func actionAjustes() {
        
    }
    func actionAmigos() {
        
    }
    func actionCerrar() {
        onBtnMenuCerrarPressed()
    }

}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
