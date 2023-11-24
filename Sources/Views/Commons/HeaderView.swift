import HTMLKit
import Styles

public struct HeaderView: View {
  public struct LableItem {
    public let label: String
    public let url: String

    public init(label: String, url: String) {
      self.label = label
      self.url = url
    }
  }

  public struct IconItem {
    public let alternative: String
    public let image: String
    public let url: String

    public init(
      alternative: String,
      image: String,
      url: String
    ) {
      self.alternative = alternative
      self.image = image
      self.url = url
    }
  }

  public var body: Content {
    Header {
      Navigation {
        Division {
          "REPCO"
        }
        .class(self.logoClass.rawValue)

        Division {
          self.labels.map(HeaderLableItemView.init)
        }

        Division {
          self.icons.map(HeaderIconItemView.init)
        }
      }
    }
    .class(self.headerClass.rawValue)
  }

  public init(
    labels: [LableItem],
    icons: [IconItem]
  ) {
    self.labels = labels
    self.icons = icons
  }

  private let labels: [LableItem]
  private let icons: [IconItem]

  private let headerClass: Class = .union(
    Classes.Display.flex,
    Classes.Flex.Justify.spaceBetween,
    Classes.Flex.Items.center
  )
  private let logoClass: Class = .union(
    Classes.Text.Weight.bold,
    Classes.Text.Size.rem1_5,
    Classes.Color.Foreground.primary
  )
}

private struct HeaderLableItemView: View {
  var body: Content {
    Anchor {
      self.item.label
    }
    .reference(self.item.url)
    .class("navigation-lable-link")
  }

  init(item: HeaderView.LableItem) {
    self.item = item
  }

  private let item: HeaderView.LableItem
}

private struct HeaderIconItemView: View {
  var body: Content {
    Anchor {
      Image()
        .source(self.item.image)
        .alternate(self.item.alternative)
    }
    .reference(self.item.url)
    .class("navigation-icon-link")
  }

  init(item: HeaderView.IconItem) {
    self.item = item
  }

  private let item: HeaderView.IconItem
}
