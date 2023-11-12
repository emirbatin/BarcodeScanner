//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by EBK on 11.11.2023.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject{
    
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String{
        scannedCode.isEmpty ? "Not Scanned Yet" : scannedCode
    }
    
    var statusTextColor: Color{
        scannedCode.isEmpty ? .red : .green
    }
    
}
