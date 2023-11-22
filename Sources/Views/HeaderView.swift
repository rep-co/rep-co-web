import HTMLKit

public struct HeaderView: View {
  public struct Item {
    public let label: String
    public let url: String

    public init(label: String, url: String) {
      self.label = label
      self.url = url
    }
  }

  public var body: Content {
    Header {
      Nav {
        Div {
          Image()
            .source("https://www.shutterstock.com/image-vector/letter-p-cat-vector-design-600nw-2349559445.jpg")
            .alternate("Logo")
        }

        Navigation {
          self.items.map { item in
            Anchor {
              item.label
            }
            .reference(item.url)
          }
        }
      }
    }
    .style("""
      display: flex; justify-content: space-between; align-items: center;
      """)
  }

  public init(items: [Item]) {
    self.items = items
  }

  private let items: [Item]
}
