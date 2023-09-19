//
//  Logger.swift
//  
//
//  Created by Andrei Ramescu on 19/09/23.
//

import Foundation

class Logger {
    static func log(message: Any, filePath: String = #file, lineNumber: Int = #line, functionName: String = #function) {
#if DEBUG
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss.SSS"
        let strDate = formatter.string(from: Date())
        let fileName = filePath.components(separatedBy: "/").last!.components(separatedBy: ".").first!
        print("\(strDate) -> \(fileName):\(lineNumber) - \(functionName) - \(message)")
        // debugPrint("\(strDate) -> \(fileName):\(lineNumber) - \(functionName) - \(message)")
#endif
    }
}
