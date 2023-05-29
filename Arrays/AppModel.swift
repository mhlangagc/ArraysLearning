//
//  AppModel.swift
//  Arrays
//
//  Created by Gugulethu Mhlanga on 2023/05/29.
//

import Foundation
import UIKit

// enums

struct AppModel {
    var appIcon: UIImage
    var name: String
    var description: String
    var isDownloaded: Bool
    var containsInAppPurchases: Bool
    var numberOfRatings: Int // 167000
    var rating: Double // 4.7
    var ageRating: Int // 4, 12 ,18
    var chartRating: Int
    var developerName: String
    var languagesSupported: [String]
    var arrayOfImage: [UIImage]
    var supportedDevices: [String]
    // ...
}
