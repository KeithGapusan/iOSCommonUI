//
//  Extensions.swift
//  iOSCommonUI
//
//  Created by Keith Gapusan on 25/06/2018.
//  Copyright © 2018 Keith Randell Gapusan. All rights reserved.
//

import Foundation

extension Bundle{
    func getBundle(swiftClass:  Swift.AnyClass) -> Bundle{
        guard let podBundle = Bundle(for: swiftClass.self).path(forResource: "iOSCommonUI", ofType: "bundle") else {
            return Bundle(for: swiftClass.self)
        }
        return Bundle(path: podBundle)!
    }
}
