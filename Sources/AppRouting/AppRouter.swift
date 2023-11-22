import VaporRouting

public struct AppRouter: ParserPrinter {
  public var body: some Router<AppRoute> {
    OneOf {
      Route(.case(AppRoute.index))

      Route(.case(AppRoute.projects)) {
        Path { "projects" }
      }

      Route(.case(AppRoute.team)) {
        Path { "team" }
      }

      Route(.case(AppRoute.hola)) {
        Path { "hola" }
        HolaRouter()
      }
    }
  }

  public init() {}
}

public struct HolaRouter: ParserPrinter {
  public var body: some Router<HolaRoute> {
    OneOf {
      Route(.case(HolaRoute.index))

      Route(.case(HolaRoute.support)) {
        Path { "support" }
      }

      Route(.case(HolaRoute.privacyPolicy)) {
        Path { "privacy-policy" }
      }
    }
  }

  public init() {}
}
