import HTMLKit
import HTMLKitComponents
import Styles

public struct HolaView: View {
  public var body: Content {
    CommonApplicationView(
      name: "Hola!",
      image: "assets/hola.png",
      appStore:
        "https://apps.apple.com/us/app/hola-icebreaker-app/id6472593412?itsct=apps_box_badge&amp;itscg=30200"
    ) {
      #"Discover "Hola!" - Your Go-To Social Icebreaker App!"#

      LineBreak()
      LineBreak()

      "Deep Connections Made Easy"

      LineBreak()

      #"With "Hola!", unravel the layers of conversations with curated question packs. Whether it's a new friend or a long-time buddy, our 100 intriguing questions will keep the dialogue flowing and the curiosity growing."#

      LineBreak()
      LineBreak()

      Paragraph {
        "Features:"
      }
      .class(Classes.Text.Weight.bold.rawValue)

      "Themed question packs for every type of relationship"

      LineBreak()

      "Easy-to-use interface to keep the focus on interaction"

      LineBreak()

      "Engaging content that’s updated regularly to keep conversations fresh"
    }
  }

  public init() {}
}
