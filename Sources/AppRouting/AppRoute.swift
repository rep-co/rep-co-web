public enum AppRoute {
  case index
  case projects
  case team
  case hola(HolaRoute)
}

public enum HolaRoute {
  case index
  case support
  case privacyPolicy
}
