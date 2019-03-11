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
            "gameId": "G31n2c4a21345678ffa1cc2b452f118aa",
            "apiKey": "SSABC123456789XXX"
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
}
