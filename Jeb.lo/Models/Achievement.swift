import SwiftUI
import CoreLocation

struct Achievement: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var description: String
    var date: String
    var imageName: String
}
