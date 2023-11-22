import AppRouting
import HTMLKitVapor
import Vapor
import VaporRouting
import Views

func appHandler(
  request: Request,
  route: AppRoute
) async throws -> any AsyncResponseEncodable {
  switch route {
  case .index:
    return try await request.htmlkit.render(
      CommonLayout {
        IndexView()
      }
    )

  case .projects:
    return try await request.htmlkit.render(
      CommonLayout {
        ProjectsView()
      }
    )

  case .team:
    return try await request.htmlkit.render(
      CommonLayout {
        ProjectsView()
      }
    )

  case .hola(.index):
    return try await request.htmlkit.render(
      CommonLayout {
        HolaView()
      }
    )

  case .hola(.support):
    return try await request.htmlkit.render(
      CommonLayout {
        HolaSupportView()
      }
    )

  case .hola(.privacyPolicy):
    return try await request.htmlkit.render(
      CommonLayout {
        HolaPrivacyPolicyView()
      }
    )
  }
}

func configure(_ app: Application) async throws {
  app.mount(AppRouter(), use: appHandler)
}
