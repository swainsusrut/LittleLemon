//
//  LittleLemonLogo.swift
//  LittleLemon
//
//  Created by Swain, Susrut (Cognizant) on 26/12/24.
//

import SwiftUI

struct LittleLemonLogo: View {
    var body: some View {
        Image("littleLemonLogo")
            .resizable()
            .scaledToFit()
            .frame(width: 250)
            .padding()
    }
}

#Preview {
    LittleLemonLogo()
}
