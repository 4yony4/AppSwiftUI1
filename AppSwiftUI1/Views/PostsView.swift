//
//  PostsView.swift
//  AppSwiftUI1
//
//  Created by Yony Bar-Magen Numhauser on 28/4/21.
//

import SwiftUI

struct PostsView: View {
    
    let iColumns=3
    
    var columns:[GridItem] = [
        GridItem(.adaptive(minimum:UIScreen.main.bounds.width/3))
    ]
    var sNombres:[String] = ["UNO","DOS", "TRES", "CUATRO", "CINCO", "SEIS", "SIETE", "OCHO"]
    
    var body: some View {
        ScrollView(){
            Spacer()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*0.1)
            LazyVGrid(columns: columns,spacing:UIScreen.main.bounds.width/CGFloat(iColumns)){
                ForEach(sNombres, id: \.self) { nombre in
                    PostUIView(sText: nombre)
                        .frame(width: UIScreen.main.bounds.width/3, height: UIScreen.main.bounds.height/4)
                        .background(Color.green)
                   
                }
            }
            Spacer()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*0.1)
        }
    }
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView()
    }
}
