//
//  SplaceScreenView.swift
//  Login
//
//  Created by Jose Abad Rodriguez Sanchez on 17/07/23.
//

import SwiftUI

struct SplaceScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    @State private var duration = 2.0
    
    
    var body: some View {
        
        if isActive{
            ContentView()
        }else{
            VStack{
                VStack{
                    Image("softgical")
                        .resizable()
                        .frame(width: 200.0, height: 200.0)
                        
                }
                .opacity(opacity)
                .scaleEffect(size)
                .onAppear{
                    withAnimation(.easeInOut(duration:1.20)){
                        size = 1.0
                        opacity = 1.0
                    }
                }
                
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline:.now() + 2.0){
                    withAnimation{
                        self.isActive = true
                    }
                    
                }
            }
        }
        
      
    }
}

struct SplaceScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplaceScreenView()
    }
}
