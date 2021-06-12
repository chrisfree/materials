//
//  ContentView.swift
//  materialPlayground
//
//  Created by Chris Free on 6/11/21.
//

import SwiftUI

struct ContentView: View {
    @State var alternateGradient = false
    
    @State var defaultColors: [Color] = [.pink, .red, .orange]
    @State var alternateColors: [Color] = [.pink, .purple, .blue]
    
    var body: some View {
        NavigationView {
            ZStack {

                LinearGradient(gradient: .init(colors: defaultColors), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
                LinearGradient(gradient: .init(colors: alternateColors), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
                    .opacity(self.alternateGradient ? 0 : 1)
                
                ScrollView {
                    VStack(spacing: 20) {
                        materialExample(name: "UltraThin", materialStyle: .ultraThinMaterial)
                        materialExample(name: "Thin", materialStyle: .thinMaterial)
                        materialExample(name: "Regular", materialStyle: .regularMaterial)
                        materialExample(name: "Thick", materialStyle: .thickMaterial)
                        materialExample(name: "UltraThick", materialStyle: .ultraThickMaterial)
                    }

                }
                .padding([.leading, .trailing])
            }
            
            .navigationBarTitle("Materials", displayMode: .automatic)
            .navigationBarItems(trailing:
                HStack {
                    Button(action: {
                        withAnimation(.easeInOut) {
                            alternateGradient.toggle()
                        }
                    }, label: {
                        Image(systemName: "arrow.left.arrow.right.square")
                            .imageScale(.small)
                        Text("Switch Gradient")
                            .font(.caption)
                        }
                    )
                    .foregroundStyle(.primary)
                }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
