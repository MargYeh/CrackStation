import XCTest
@testable import crack_station

final class crack_stationTests: XCTestCase {
    func testPositive() async {
        // When
        let crack_station = crack_station()
	let checkHash = await crack_station.crack("3c363836cf4e16666669a25da280a1865c2d2874")

        // Then
        XCTAssertNotNil(checkHash)
        XCTAssert(checkHash == "d")
    }
    func testNegative() async {
        // When
        let crack_station = crack_station()
	let checkHash = await crack_station.crack("1231")

        // Then
        XCTAssertNil(checkHash)
    }
}
