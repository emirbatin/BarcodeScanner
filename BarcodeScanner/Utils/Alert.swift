//
//  Alert.swift
//  BarcodeScanner
//
//  Created by EBK on 11.11.2023.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dismissButton : Alert.Button
}

struct AlertContext{
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input", message: "Something is wrong with the camera. We are unable to capture the input.", dismissButton: .default(Text("Ok")))
    
    static let invalidScannedType = AlertItem(title: "Invalid Scanned Type", message: "The value scanned is not valid. This app scans EAN-8 and EAN-13 or QR", dismissButton: .default(Text("Ok")))
}
