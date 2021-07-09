//
//  ResultState.swift
//  News
//
//  Created by Seunghun Yang on 2021/07/09.
//

import Foundation

enum ResultState {
    case loading
    case success(content: [Article])
    case failed(error: Error)
}
