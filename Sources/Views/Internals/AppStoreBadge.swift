import HTMLKit
import Styles

struct AppStoreBadge: View {
  var body: Content {
    Anchor {
      Image()
        .source(
          "https://tools.applemediaservices.com/api/badges/download-on-the-app-store/black/en-us?size=250x83&amp;releaseDate=1700352000"
        )
        .alternate("Download on the App Store")
        .style("border-radius: 13px; width: 170px; height: 60px;")
    }
    .reference(self.reference)
    .style(
      "display: inline-block; overflow: hidden; border-radius: 13px; width: 170px; height: 60px;")
  }

  init(reference: String) {
    self.reference = reference
  }

  private let reference: String
}
