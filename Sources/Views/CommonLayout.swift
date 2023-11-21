import HTMLKit
import HTMLKitComponents

public struct CommonLayout: View {
  public var body: Content {
    Document(.html5)
    Html {
      Body {
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
