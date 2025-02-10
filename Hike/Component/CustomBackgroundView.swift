//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Gabriel Lennon on 28/01/25.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        // O VStack permite empilhar visualizações verticalmente, uma sobre a outra. Cada view é disposta de cima para baixo
        ZStack {
            // MARK: - 3: DEPTH
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            
            // MARK: - 2: LIGHT
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            
            // MARK: - 1: SURFACE
            
            LinearGradient(colors: [.customGreenLight,.customGreenMedium], startPoint: .top, endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

struct CustomBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackgroundView()
            .padding()
    }
}

