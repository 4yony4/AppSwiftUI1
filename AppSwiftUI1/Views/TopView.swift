//
//  TopView.swift
//  AppSwiftUI1
//
//  Created by Yony Bar-Magen Numhauser on 21/4/21.
//

import SwiftUI

struct TopView: View {
    
    var sAppName:String
    var onBtnMenuPressed:()->Void = {}
    
    var body: some View {
        GeometryReader { geometry in
            HStack{
                Button(action: topMenuBtnAction) {
                    Text("MENU")
                }
                
                Spacer()
                Text(sAppName)
                Spacer()
                
                Button(action: topSettingsBtnAction) {
                    Text("Settings")
                }
                
                
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
        
        
    }
    
    
    func topMenuBtnAction() {
        onBtnMenuPressed()
    }
    
    func topSettingsBtnAction() {
        
    }
    
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView(sAppName: "APP NAME")
    }
}
