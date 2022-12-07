//
//  AddView.swift
//  TodoList
//
//  Created by Sukhmani Kaur on 02/12/22.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textfieldString: String = ""
    @State var alertTitle: String = String()
    @State var showAlert: Bool = Bool()
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textfieldString)
                    .padding(.horizontal)
                    .frame(height: 55)
                .background(Color.gray).opacity(0.45)
                .cornerRadius(10)
                Button {
                    saveButtonPressed()
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
        .alert(isPresented: $showAlert) {
            getAlert()
        }
    }
    
    func saveButtonPressed() {
        if textIsAppropriate() {
            listViewModel.addItems(title: textfieldString)
            presentationMode.wrappedValue.dismiss()
        } else {
            
        }
    }
    
    func textIsAppropriate() -> Bool {
        if textfieldString.count < 3 {
            alertTitle = "your new todo item must be at least 3 characters long! 😱😨😰"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
