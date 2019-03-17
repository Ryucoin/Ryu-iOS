import XCTest
import Ryu

class Tests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testStart() {
        rdcConfig = [
            "host": RDCHost.dev,
            "gameId": "<GAME ID>",
            "apiKey": "<API KEY>"
        ]

        do {
            try rdcStart()
            print("Started RDC")
        } catch RDCError.InvalidJSON {
            XCTFail("Invalid RDC json")
        } catch {
            XCTFail("Unknown error with RDC Config")
        }
    }

    func testStartFail() {
        rdcConfig = [
            "host": RDCHost.dev,
            "gameId": "<GAME ID>",
        ]

        do {
            try rdcStart()
            print("Started RDC")
        } catch RDCError.InvalidJSON {
            print("Invalid RDC json")
        } catch {
            XCTFail("Unknown error with RDC Config")
        }
    }
}
