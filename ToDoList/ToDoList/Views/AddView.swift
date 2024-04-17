//
//  AddView.swift
//  ToDoList
//
//  Created by Davi Martinelli de Lira on 4/6/24.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var textFieldText: String = ""
    @EnvironmentObject var listViewModel: ListViewModel
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    
    var body: some View {
        ScrollView {
            TextField("Type something here...", text: $textFieldText)
                .padding(.horizontal)
                .frame(height: 55)
                .background(.gray.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Button(action: {
                saveButtonPressed()
            }, label: {
                Text("Save".uppercased())
                    .foregroundStyle(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            })
        }
        .padding(14)
        .navigationTitle("Add an Item 🖊️")
        .alert(isPresented: $showAlert) {
            Alert(title: Text(alertTitle))
        }
    }
    func saveButtonPressed() {
        if textIsAppropriate() {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Your new item needs to be at least three characters long. 😬"
            showAlert = true
            return false
        }
        return true
    }
    
}

#Preview {
    NavigationView {
        AddView()
    }
}
