//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import RswiftResources
import UIKit

private class BundleFinder {}
let R = _R(bundle: Bundle(for: BundleFinder.self))

struct _R {
  let bundle: Foundation.Bundle

  let segue = segue()

  var string: string { .init(bundle: bundle, preferredLanguages: nil, locale: nil) }
  var color: color { .init(bundle: bundle) }
  var image: image { .init(bundle: bundle) }
  var info: info { .init(bundle: bundle) }
  var file: file { .init(bundle: bundle) }
  var storyboard: storyboard { .init(bundle: bundle) }

  func string(bundle: Foundation.Bundle) -> string {
    .init(bundle: bundle, preferredLanguages: nil, locale: nil)
  }
  func string(locale: Foundation.Locale) -> string {
    .init(bundle: bundle, preferredLanguages: nil, locale: locale)
  }
  func string(preferredLanguages: [String], locale: Locale? = nil) -> string {
    .init(bundle: bundle, preferredLanguages: preferredLanguages, locale: locale)
  }
  func color(bundle: Foundation.Bundle) -> color {
    .init(bundle: bundle)
  }
  func image(bundle: Foundation.Bundle) -> image {
    .init(bundle: bundle)
  }
  func info(bundle: Foundation.Bundle) -> info {
    .init(bundle: bundle)
  }
  func file(bundle: Foundation.Bundle) -> file {
    .init(bundle: bundle)
  }
  func storyboard(bundle: Foundation.Bundle) -> storyboard {
    .init(bundle: bundle)
  }
  func validate() throws {
    try self.storyboard.validate()
  }

  struct project {
    let developmentRegion = "es-419"
  }

  /// This `_R.string` struct is generated, and contains static references to 3 localization tables.
  struct string {
    let bundle: Foundation.Bundle
    let preferredLanguages: [String]?
    let locale: Locale?
    var launchScreen: launchScreen { .init(source: .init(bundle: bundle, tableName: "LaunchScreen", preferredLanguages: preferredLanguages, locale: locale)) }
    var localizable: localizable { .init(source: .init(bundle: bundle, tableName: "Localizable", preferredLanguages: preferredLanguages, locale: locale)) }
    var main: main { .init(source: .init(bundle: bundle, tableName: "Main", preferredLanguages: preferredLanguages, locale: locale)) }

    func launchScreen(preferredLanguages: [String]) -> launchScreen {
      .init(source: .init(bundle: bundle, tableName: "LaunchScreen", preferredLanguages: preferredLanguages, locale: locale))
    }
    func localizable(preferredLanguages: [String]) -> localizable {
      .init(source: .init(bundle: bundle, tableName: "Localizable", preferredLanguages: preferredLanguages, locale: locale))
    }
    func main(preferredLanguages: [String]) -> main {
      .init(source: .init(bundle: bundle, tableName: "Main", preferredLanguages: preferredLanguages, locale: locale))
    }


    /// This `_R.string.launchScreen` struct is generated, and contains static references to 0 localization keys.
    struct launchScreen {
      let source: RswiftResources.StringResource.Source
    }

    /// This `_R.string.localizable` struct is generated, and contains static references to 5 localization keys.
    struct localizable {
      let source: RswiftResources.StringResource.Source

      /// es-419 translation: CamCar
      ///
      /// Key: CamCar
      ///
      /// Locales: es-419, en
      var camCar: RswiftResources.StringResource { .init(key: "CamCar", tableName: "Localizable", source: source, developmentValue: "CamCar", comment: nil) }

      /// es-419 translation: Archivo guardado con éxito
      ///
      /// Key: file_saved
      ///
      /// Locales: es-419, en
      var file_saved: RswiftResources.StringResource { .init(key: "file_saved", tableName: "Localizable", source: source, developmentValue: "Archivo guardado con éxito", comment: nil) }

      /// es-419 translation: Se produjo un error
      ///
      /// Key: generic_error
      ///
      /// Locales: es-419, en
      var generic_error: RswiftResources.StringResource { .init(key: "generic_error", tableName: "Localizable", source: source, developmentValue: "Se produjo un error", comment: nil) }

      /// es-419 translation: Por favor, activar cámara
      ///
      /// Key: plase_activate_camera
      ///
      /// Locales: es-419, en
      var plase_activate_camera: RswiftResources.StringResource { .init(key: "plase_activate_camera", tableName: "Localizable", source: source, developmentValue: "Por favor, activar cámara", comment: nil) }

      /// es-419 translation: Grabando
      ///
      /// Key: recording
      ///
      /// Locales: es-419, en
      var recording: RswiftResources.StringResource { .init(key: "recording", tableName: "Localizable", source: source, developmentValue: "Grabando", comment: nil) }
    }

    /// This `_R.string.main` struct is generated, and contains static references to 9 localization keys.
    struct main {
      let source: RswiftResources.StringResource.Source

      /// es-419 translation: GUARDAR
      ///
      /// Key: 7aj-HM-Um7.configuration.title
      ///
      /// Locales: es-419, en
      var ajHMUm7ConfigurationTitle: RswiftResources.StringResource { .init(key: "7aj-HM-Um7.configuration.title", tableName: "Main", source: source, developmentValue: "GUARDAR", comment: nil) }

      /// es-419 translation: Button
      ///
      /// Key: 7aj-HM-Um7.normalTitle
      ///
      /// Locales: es-419, en
      var ajHMUm7NormalTitle: RswiftResources.StringResource { .init(key: "7aj-HM-Um7.normalTitle", tableName: "Main", source: source, developmentValue: "Button", comment: nil) }

      /// es-419 translation: -
      ///
      /// Key: FbQ-F2-cQp.text
      ///
      /// Locales: es-419, en
      var fbQF2CQpText: RswiftResources.StringResource { .init(key: "FbQ-F2-cQp.text", tableName: "Main", source: source, developmentValue: "-", comment: nil) }

      /// es-419 translation: Coche Explorador
      ///
      /// Key: Wel-ZZ-DwF.title
      ///
      /// Locales: es-419, en
      var welZZDwFTitle: RswiftResources.StringResource { .init(key: "Wel-ZZ-DwF.title", tableName: "Main", source: source, developmentValue: "Coche Explorador", comment: nil) }

      /// es-419 translation: http PORT
      ///
      /// Key: x1Z-d2-wZr.text
      ///
      /// Locales: es-419, en
      var x1ZD2WZrText: RswiftResources.StringResource { .init(key: "x1Z-d2-wZr.text", tableName: "Main", source: source, developmentValue: "http PORT", comment: nil) }

      /// es-419 translation: Activar Camara
      ///
      /// Key: xA7-fp-t9M.text
      ///
      /// Locales: es-419, en
      var xA7FpT9MText: RswiftResources.StringResource { .init(key: "xA7-fp-t9M.text", tableName: "Main", source: source, developmentValue: "Activar Camara", comment: nil) }

      /// es-419 translation: Item
      ///
      /// Key: xEM-7u-vpI.title
      ///
      /// Locales: es-419, en
      var xEM7uVpITitle: RswiftResources.StringResource { .init(key: "xEM-7u-vpI.title", tableName: "Main", source: source, developmentValue: "Item", comment: nil) }

      /// es-419 translation: URL
      ///
      /// Key: yRA-J6-ubV.text
      ///
      /// Locales: es-419, en
      var yRAJ6UbVText: RswiftResources.StringResource { .init(key: "yRA-J6-ubV.text", tableName: "Main", source: source, developmentValue: "URL", comment: nil) }

      /// es-419 translation: UDP PORT
      ///
      /// Key: zA7-4f-uxu.text
      ///
      /// Locales: es-419, en
      var zA74fUxuText: RswiftResources.StringResource { .init(key: "zA7-4f-uxu.text", tableName: "Main", source: source, developmentValue: "UDP PORT", comment: nil) }
    }
  }

  /// This `_R.color` struct is generated, and contains static references to 1 colors.
  struct color {
    let bundle: Foundation.Bundle

    /// Color `AccentColor`.
    var accentColor: RswiftResources.ColorResource { .init(name: "AccentColor", path: [], bundle: bundle) }
  }

  /// This `_R.image` struct is generated, and contains static references to 2 images.
  struct image {
    let bundle: Foundation.Bundle

    /// Image `fast-internet`.
    var fastInternet: RswiftResources.ImageResource { .init(name: "fast-internet", path: [], bundle: bundle, locale: nil, onDemandResourceTags: nil) }

    /// Image `gaming-circle`.
    var gamingCircle: RswiftResources.ImageResource { .init(name: "gaming-circle", path: [], bundle: bundle, locale: nil, onDemandResourceTags: nil) }
  }

  /// This `_R.info` struct is generated, and contains static references to 1 properties.
  struct info {
    let bundle: Foundation.Bundle
    var uiApplicationSceneManifest: uiApplicationSceneManifest { .init(bundle: bundle) }

    func uiApplicationSceneManifest(bundle: Foundation.Bundle) -> uiApplicationSceneManifest {
      .init(bundle: bundle)
    }

    struct uiApplicationSceneManifest {
      let bundle: Foundation.Bundle

      let uiApplicationSupportsMultipleScenes: Bool = false

      var _key: String { bundle.infoDictionaryString(path: ["UIApplicationSceneManifest"], key: "_key") ?? "UIApplicationSceneManifest" }
      var uiSceneConfigurations: uiSceneConfigurations { .init(bundle: bundle) }

      func uiSceneConfigurations(bundle: Foundation.Bundle) -> uiSceneConfigurations {
        .init(bundle: bundle)
      }

      struct uiSceneConfigurations {
        let bundle: Foundation.Bundle
        var _key: String { bundle.infoDictionaryString(path: ["UIApplicationSceneManifest", "UISceneConfigurations"], key: "_key") ?? "UISceneConfigurations" }
        var uiWindowSceneSessionRoleApplication: uiWindowSceneSessionRoleApplication { .init(bundle: bundle) }

        func uiWindowSceneSessionRoleApplication(bundle: Foundation.Bundle) -> uiWindowSceneSessionRoleApplication {
          .init(bundle: bundle)
        }

        struct uiWindowSceneSessionRoleApplication {
          let bundle: Foundation.Bundle
          var defaultConfiguration: defaultConfiguration { .init(bundle: bundle) }

          func defaultConfiguration(bundle: Foundation.Bundle) -> defaultConfiguration {
            .init(bundle: bundle)
          }

          struct defaultConfiguration {
            let bundle: Foundation.Bundle
            var uiSceneConfigurationName: String { bundle.infoDictionaryString(path: ["UIApplicationSceneManifest", "UISceneConfigurations", "UIWindowSceneSessionRoleApplication"], key: "UISceneConfigurationName") ?? "Default Configuration" }
            var uiSceneDelegateClassName: String { bundle.infoDictionaryString(path: ["UIApplicationSceneManifest", "UISceneConfigurations", "UIWindowSceneSessionRoleApplication"], key: "UISceneDelegateClassName") ?? "$(PRODUCT_MODULE_NAME).SceneDelegate" }
            var uiSceneStoryboardFile: String { bundle.infoDictionaryString(path: ["UIApplicationSceneManifest", "UISceneConfigurations", "UIWindowSceneSessionRoleApplication"], key: "UISceneStoryboardFile") ?? "Main" }
          }
        }
      }
    }
  }

  /// This `_R.file` struct is generated, and contains static references to 1 resource files.
  struct file {
    let bundle: Foundation.Bundle

    /// Resource file `Buttons.plist`.
    var buttonsPlist: RswiftResources.FileResource { .init(name: "Buttons", pathExtension: "plist", bundle: bundle, locale: LocaleReference.none) }
  }

  /// This `_R.segue` struct is generated, and contains static references to 1 view controllers.
  struct segue {
    let viewController = viewController()

    /// This struct is generated for `ViewController`, and contains static references to 1 segues.
    struct viewController {

      /// Segue identifier `toSettings`.
      var toSettings: RswiftResources.SegueIdentifier<UIKit.UIStoryboardSegue, ViewController, URLViewController> { .init(identifier: "toSettings") }
    }
  }

  /// This `_R.storyboard` struct is generated, and contains static references to 2 storyboards.
  struct storyboard {
    let bundle: Foundation.Bundle
    var launchScreen: launchScreen { .init(bundle: bundle) }
    var main: main { .init(bundle: bundle) }

    func launchScreen(bundle: Foundation.Bundle) -> launchScreen {
      .init(bundle: bundle)
    }
    func main(bundle: Foundation.Bundle) -> main {
      .init(bundle: bundle)
    }
    func validate() throws {
      try self.launchScreen.validate()
      try self.main.validate()
    }


    /// Storyboard `LaunchScreen`.
    struct launchScreen: RswiftResources.StoryboardReference, RswiftResources.InitialControllerContainer {
      typealias InitialController = UIKit.UIViewController

      let bundle: Foundation.Bundle

      let name = "LaunchScreen"
      func validate() throws {

      }
    }

    /// Storyboard `Main`.
    struct main: RswiftResources.StoryboardReference, RswiftResources.InitialControllerContainer {
      typealias InitialController = UIKit.UINavigationController

      let bundle: Foundation.Bundle

      let name = "Main"
      func validate() throws {
        if #available(iOS 13.0, *) { if UIKit.UIImage(systemName: "camera.fill") == nil { throw RswiftResources.ValidationError("[R.swift] System image named 'camera.fill' is used in storyboard 'Main', but couldn't be loaded.") } }
        if UIKit.UIImage(named: "fast-internet", in: bundle, compatibleWith: nil) == nil { throw RswiftResources.ValidationError("[R.swift] Image named 'fast-internet' is used in storyboard 'Main', but couldn't be loaded.") }
        if UIKit.UIImage(named: "gaming-circle", in: bundle, compatibleWith: nil) == nil { throw RswiftResources.ValidationError("[R.swift] Image named 'gaming-circle' is used in storyboard 'Main', but couldn't be loaded.") }
        if #available(iOS 13.0, *) { if UIKit.UIImage(systemName: "gauge.with.dots.needle.0percent") == nil { throw RswiftResources.ValidationError("[R.swift] System image named 'gauge.with.dots.needle.0percent' is used in storyboard 'Main', but couldn't be loaded.") } }
        if #available(iOS 13.0, *) { if UIKit.UIImage(systemName: "gauge.with.dots.needle.100percent") == nil { throw RswiftResources.ValidationError("[R.swift] System image named 'gauge.with.dots.needle.100percent' is used in storyboard 'Main', but couldn't be loaded.") } }
        if #available(iOS 13.0, *) { if UIKit.UIImage(systemName: "gearshape.fill") == nil { throw RswiftResources.ValidationError("[R.swift] System image named 'gearshape.fill' is used in storyboard 'Main', but couldn't be loaded.") } }
        if #available(iOS 13.0, *) { if UIKit.UIImage(systemName: "light.max") == nil { throw RswiftResources.ValidationError("[R.swift] System image named 'light.max' is used in storyboard 'Main', but couldn't be loaded.") } }
        if #available(iOS 13.0, *) { if UIKit.UIImage(systemName: "light.min") == nil { throw RswiftResources.ValidationError("[R.swift] System image named 'light.min' is used in storyboard 'Main', but couldn't be loaded.") } }
        if #available(iOS 13.0, *) { if UIKit.UIImage(systemName: "speaker.wave.2.circle.fill") == nil { throw RswiftResources.ValidationError("[R.swift] System image named 'speaker.wave.2.circle.fill' is used in storyboard 'Main', but couldn't be loaded.") } }
      }
    }
  }
}