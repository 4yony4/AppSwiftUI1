//
//  PostUIView.swift
//  AppSwiftUI1
//
//  Created by Yony Bar-Magen Numhauser on 28/4/21.
//

import SwiftUI

struct PostUIView: View {
    
    var sText:String
    
    var body: some View {
        
        ZStack{
            Text("\(sText)")
        }
        
        
    }
}

struct PostUIView_Previews: PreviewProvider {
    static var previews: some View {
        PostUIView(sText: "")
    }
}
