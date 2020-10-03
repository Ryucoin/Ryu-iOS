import XCTest
import Ryu

class Tests: XCTestCase, UNUserNotificationCenterDelegate {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testStart() {
        let config = RDCConfig(gameId: "<GAME ID>", apiKey: "<API KEY>")
        rdcStart(self, config: config)
    }

    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        rdcDidReceiveResponse(response: response, completionHandler: completionHandler)
    }
}
