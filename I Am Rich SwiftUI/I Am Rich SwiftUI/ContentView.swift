//
//  ContentView.swift
//  I Am Rich SwiftUI
//
//  Created by Jhonhazel Lionel Tjokahn on 21/02/25.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemTeal)
                .ignoresSafeArea(edges: .all)
            VStack{
                Text("I Am Rich")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding()
                Image("diamond")
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .center)
                    .padding()
                
            }
        }
    }
}
    
#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
