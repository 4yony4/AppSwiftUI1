//
//  ContentView.swift
//  AppSwiftUI1
//
//  Created by Yony Bar-Magen Numhauser on 14/4/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var sMiTexto="Hello, World!"
    @State var sTitleTexto="AppSwiftUI1"
    @State var blMenuVisible=false
    @State var fOpacidadPrincipal=1.0
    @State var blPostsViewVisile=true
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                
                VStack{
                    TopView(sAppName: sTitleTexto,onBtnMenuPressed: onTopBarMenuBtnPressed)
                        .frame(width: geometry.size.width, height: geometry.size.height*0.1)
                    
                    HStack{
                        Text(sMiTexto).padding()
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height*0.8)
                    
                    
                    Button(action: actionButton, label: {
                        Text("Mi Boton")
                    })
                    .frame(width: geometry.size.width, height: geometry.size.height*0.1)
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
                .opacity(fOpacidadPrincipal)
                
                
                if blMenuVisible{
                    MenuView(onBtnMenuPressed: btnMenuPressed)
                        .frame(width: geometry.size.width*0.8, height: geometry.size.height*0.8)
                        .background(Color.yellow)
                }
                
                if blPostsViewVisile{
                    VStack{
                        Spacer()
                            .frame(width: geometry.size.width, height: geometry.size.height*0.1)
                        PostsView()
                            .frame(width: geometry.size.width, height: geometry.size.height*0.9)
                            .background(Color.red)
                    }.frame(width: geometry.size.width, height: geometry.size.height)
                }
            }
            
        }
        

    }
    
    func actionButton() {
        sMiTexto="Hola Mundo!"
        sTitleTexto="SUPER APP!!!"
    }
    
    func onTopBarMenuBtnPressed(){
        blMenuVisible.toggle()
        fOpacidadPrincipal=0.3
        //sMiTexto="ACABAS DE PRESIONAR EL MENU!!!!"
    }
    
    func btnMenuPressed(idmenu:String) {
        if idmenu=="Cerrar"{
            blMenuVisible.toggle()
            fOpacidadPrincipal=1.0
        }
        else if idmenu=="Posts"{
            blPostsViewVisile.toggle()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
