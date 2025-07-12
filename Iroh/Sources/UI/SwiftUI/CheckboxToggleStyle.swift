//
//  CheckboxToggleStyle.swift
//  Iroh
//
//  Created by praveen-12298 on 12/07/25.
//

import SwiftUI

///Custom toggle style
struct CheckboxToggleStyle: ToggleStyle {
    let showLable:Bool
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            if showLable {
                configuration.label
            }
            Spacer()
            Image(configuration.isOn ? .checkBoxSelected : .checkBoxUnselected)
                .resizable()
                .onTapGesture {
                    withAnimation(.bouncy(duration: 0.5,extraBounce: 0.3)){
                        configuration.isOn.toggle()
                    }
                }
        }
    }

}
