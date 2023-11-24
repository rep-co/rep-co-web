import HTMLKit
import Styles

public struct CommonApplicationView: View {
  public var body: Content {
    Division {
      Image()
        .source(self.image)
        .style("max-width: 350px;")

      Division {
        Heading1 {
          self.name
        }
        .class(self.nameClass.rawValue)

        LineBreak()

        Paragraph {
          self.description
        }
        .class(self.descriptionClass.rawValue)

        LineBreak()

        AppStoreBadge(reference: self.appStore)
      }
      .style("max-width: 500px;")
    }
    .class(self.containerClass.rawValue)
  }

  public init(
    name: String,
    image: String,
    appStore: String,
    @ContentBuilder<Content> description: () -> [Content]
  ) {
    self.name = name
    self.image = image
    self.appStore = appStore
    self.description = description()
  }

  private let name: String
  private let image: String
  private let appStore: String
  private let description: [Content]

  private let containerClass: Class = .union(
    Classes.Display.flex,
    Classes.Flex.Items.center,
    Classes.Flex.Justify.center
  )
  private let descriptionClass: Class = .union(
    Classes.Text.Weight.normal,
    Classes.Color.Foreground.secondary,
    Classes.Text.Size.rem1_0
  )
  private let nameClass: Class = .union(
    Classes.Text.Weight.bold,
    Classes.Color.Foreground.primary,
    Classes.Text.Size.rem2_5
  )
}
