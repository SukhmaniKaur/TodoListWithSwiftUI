//
//  AddView.swift
//  TodoList
//
//  Created by Sukhmani Kaur on 02/12/22.
//

import SwiftUI

struct AddView: View {
    
    @State var textfieldString: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textfieldString)
                    .padding(.horizontal)
                    .frame(height: 55)
                .background(Color.gray).opacity(0.45)
                .cornerRadius(10)
                Button {
                    // todo
                } label: {
                    Text("SAVE")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(10)
                }

            }
            .padding(14)
        }
        .navigationTitle("Add an Item 🖊")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}
