import XCTest
import CrackStation

final class CrackStationTests: XCTestCase {
    func testPositive1sha1() throws {
        // When
        let crack_station = CrackStation()
	    let checkHash = crack_station.decrypt(shaHash: "3c363836cf4e16666669a25da280a1865c2d2874")

        // Then
        XCTAssertNotNil(checkHash)
        XCTAssert(checkHash == "d")
    }
    func testPositive2sha256() throws {
        // When
        let crack_station = CrackStation()
	    let checkHash = crack_station.decrypt(shaHash: "468415f0e1128f85022b1e20e662626a3c5a77a97e33facd9064a82e0a7a71be")

        // Then
        XCTAssertNotNil(checkHash)
        XCTAssert(checkHash == "Ag")
    }
    func testPositive3sha1() throws {
        // When
        let crack_station = CrackStation()
	    let checkHash = crack_station.decrypt(shaHash: "78b3b8f06f2a89f9d87fc4be8dcd05c915dd8a96")

        // Then
        XCTAssertNotNil(checkHash)
        XCTAssert(checkHash == "S8f")
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