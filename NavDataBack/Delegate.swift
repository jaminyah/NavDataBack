//
//  Delegate.swift
//  NavDataBack
//
//  Created by Macbook on 5/10/18.
//  Copyright © 2018 Macbook. All rights reserved.
//
// Using weak delegate requires class reference type
protocol Delegate: class {
    func updateData(animals: [String])
}
