//
//  materialExample.swift
//  materialPlayground
//
//  Created by Chris Free on 6/11/21.
//

import SwiftUI

struct materialExample: View {
    var name: String
    var materialStyle: Material
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
            }
            Text("\(name) Background Style")
                .font(.caption)
                .foregroundStyle(.secondary)
            Spacer()
            
            Text("Primary")
                .font(.system(size: 50))
                .fontWeight(.thin)
                .foregroundStyle(.primary)
            
            Text("Secondary")
                .font(.system(size: 50))
                .fontWeight(.thin)
                .foregroundStyle(.secondary)
            
            Text("Tertiary")
                .font(.system(size: 50))
                .fontWeight(.thin)
                .foregroundStyle(.tertiary)
            
            Text("Quaternary")
                .font(.system(size: 50))
                .fontWeight(.thin)
                .foregroundStyle(.quaternary)
            
            Text("Thick")
                .font(.system(size: 50))
                .fontWeight(.thin)
                .foregroundStyle(.thickMaterial)
            
            Text("Thin")
                .font(.system(size: 50))
                .fontWeight(.thin)
                .foregroundStyle(.thinMaterial)
            
            Text("UltraThin")
                .font(.system(size: 50))
                .fontWeight(.thin)
                .foregroundStyle(.ultraThinMaterial)
        }
        .padding([.leading, .trailing], 40.0)
        .padding([.top, .bottom], 20)
        .background(materialStyle, in: RoundedRectangle(cornerRadius: 15.0))
        
    }
}

struct materialExample_Previews: PreviewProvider {
    static var previews: some View {
        materialExample(name: "UltraThin", materialStyle: .ultraThin)
    }
}
