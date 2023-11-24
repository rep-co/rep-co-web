import HTMLKit
import HTMLKitComponents

public struct CommonLayout: View {
  public var body: Content {
    Document(.html5)

    Html {
      Head {
        Link()
          .relationship(.stylesheet)
          .reference("/css/reset.css")

        Link()
          .relationship(.stylesheet)
          .reference("/css/styles.css")
      }

      Body {
        HeaderView(
          labels: [
            .init(label: "Home", url: "/"),
            .init(label: "Team", url: "/team"),
            .init(label: "Projects", url: "/projects"),
          ],
          icons: []
        )

        Div {
          self.content
        }
      }
    }
  }

  public init(@ContentBuilder<Content> content: () -> [Content]) {
    self.content = content()
  }

  private let content: [Content]
}
