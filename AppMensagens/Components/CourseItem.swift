//
//  CourseItem.swift
//  MensagensAPP
//
//  Created by Marcelo Hora on 06/01/23.
//

import SwiftUI
struct CourseItem: View {
    
    var namespace: Namespace.ID
    @Binding var show: Bool

    var body: some View {
        VStack (alignment: .leading, spacing: 12) {
            Spacer()
            VStack (alignment: .leading, spacing: 12) {
                Text("Ruan mensagens")
                    .font(.largeTitle.bold())
                    .matchedGeometryEffect(id: "title", in: namespace)
                .frame(maxWidth: .infinity, alignment: .leading)
                Text("Ultimas notificações ".uppercased())
                    .font(.footnote.weight(.semibold))
                    .matchedGeometryEffect(id: "sutitle", in: namespace)
                Text("3 pessoas enviaram mensagens ")
                    .font(.footnote)
                    .matchedGeometryEffect(id: "text", in: namespace)
            }.padding(20)
            .background(
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .blur(radius: 10)
                    .matchedGeometryEffect(id: "blur", in: namespace))
        
        }
        .foregroundStyle(.white)
        .background(
                Image("Image")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .matchedGeometryEffect(id: "backgound", in: namespace))
        .mask(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .matchedGeometryEffect(id: "mask", in: namespace)
        )
        .frame(height: 300)
            .padding(20)
       
    }
    }

struct CourseItem_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        CourseItem(namespace: namespace, show: .constant(true))
    }
}
