//
//  MusicXML_SwiftTests.swift
//  MusicXML-SwiftTests
//
//  Created by Rostyslav Druzhchenko on 1/5/19.
//  Copyright © 2019 Rostyslav Druzhchenko. All rights reserved.
//

import XCTest
@testable import MusicXML_Swift

class MusicXMLSwiftTests: XCTestCase {

    override func setUp() {
    }

    func testExample() {
        let parser = MusicXMLParser()
        let score = parser.parse("HelloWorld.xml")

        XCTAssertNotNil(score)
        XCTAssertTrue(score?.partList.scorePart.partName.partNameText == "Music")
    }

}
