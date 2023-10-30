//
//  Array+Extension.swift
//  Tfl_Challenge
//
//  Created by Taijaun Pitt on 24/10/23.
//

import Foundation

extension Array where Element == LineStatus {
    func combineAllStatuses()-> String {
        var allStatus =  self.reduce("", { partialResult, status in
            return status.statusSeverityDescription.appending("\n")
        })
        let newlineCharacterSet = CharacterSet.newlines

        // Use the trimmingCharacters(in:) method to remove the trailing newline
        allStatus = allStatus.trimmingCharacters(in: newlineCharacterSet)
        return allStatus
    }
}
