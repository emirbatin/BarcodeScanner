//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by EBK on 11.11.2023.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title2)
                Text(viewModel.statusText)
                    .bold()
                    .font(.title)
                    .foregroundStyle(viewModel.statusTextColor)
                    .padding()
                Spacer()
                ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 300)
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) {
                alertItem in
                Alert(title: Text(alertItem.title), message: Text(alertItem.message), dismissButton: alertItem.dismissButton)
            }
        }
    }
}

#Preview {
    BarcodeScannerView()
}
