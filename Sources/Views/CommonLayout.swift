import HTMLKit
import HTMLKitComponents

public struct CommonLayout: View {
  public var body: Content {
    Document(.html5)

    Head {}

    Html {
      Body {
        HeaderView(items: [
          .init(label: "VK", url: "https://vk.com"),
          .init(label: "Yandex", url: "https://ya.ru"),
        ])

        Div {
          self.content
        }
      }
    }
  }

  public init(
    @ContentBuilder<Content> content: () -> [Content]
  ) {
    self.content = content()
  }

  private let content: [Content]
}
