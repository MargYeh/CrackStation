import XCTest
import CrackStation

final class CrackStationTests: XCTestCase {
    func testPositive() throws {
        // When
        let crack_station = CrackStation()
	    let checkHash = crack_station.decrypt(shaHash: "3c363836cf4e16666669a25da280a1865c2d2874")

        // Then
        XCTAssertNotNil(checkHash)
        XCTAssert(checkHash == "d")
    }
    func testNegative() throws {
        // When
        let crack_station = CrackStation()
	    let checkHash = crack_station.decrypt(shaHash: "1231")
        //Then
        XCTAssertNil(checkHash)
    }
    func testEmpty() throws {
        // When
        let crack_station = CrackStation()
	    let checkHash = crack_station.decrypt(shaHash: "")
        //Then
        XCTAssertNil(checkHash)
    }
    func testLoadingLookupTableFromDisk() throws {
        // When
        let lookupTable = try CrackStation.loadDictionaryFromDisk()
        let answer = lookupTable["9a79be611e0267e1d943da0737c6c51be67865a0"]

        //Then
        XCTAssertEqual(answer, "99")
    }

   
}