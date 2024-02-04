# Catbreeds
## IOS 
<p float="left" >
<img src="https://i.ibb.co/r60Tdv6/video-demo.gif" alt="video-demo" border="0" width="135" />

<img src="https://i.ibb.co/bFjFnrL/Simulator-Screenshot-i-Phone-15-Pro-Max-2024-02-03-at-23-01-22.png" alt="Simulator-Screenshot-i-Phone-15-Pro-Max-2024-02-03-at-23-01-22" border="0" width="135" />
<img src="https://i.ibb.co/zFZWL6Y/Simulator-Screenshot-i-Phone-15-Pro-Max-2024-02-03-at-23-01-28.png" alt="Simulator-Screenshot-i-Phone-15-Pro-Max-2024-02-03-at-23-01-28" border="0" width="135" />
<img src="https://i.ibb.co/WDXRvKC/Simulator-Screenshot-i-Phone-15-Pro-Max-2024-02-03-at-23-01-32.png" alt="Simulator-Screenshot-i-Phone-15-Pro-Max-2024-02-03-at-23-01-32" border="0" width="135" />
<img src="https://i.ibb.co/vPn2cQJ/Simulator-Screenshot-i-Phone-15-Pro-Max-2024-02-03-at-23-02-40.png" alt="Simulator-Screenshot-i-Phone-15-Pro-Max-2024-02-03-at-23-02-40" border="0" width="135" />
<img src="https://i.ibb.co/vP6H7Dq/Simulator-Screenshot-i-Phone-15-Pro-Max-2024-02-03-at-23-02-51.png" alt="Simulator-Screenshot-i-Phone-15-Pro-Max-2024-02-03-at-23-02-51" border="0" width="135" />
<img src="https://i.ibb.co/0pNrbBS/Simulator-Screenshot-i-Phone-15-Pro-Max-2024-02-03-at-23-03-29.png" alt="Simulator-Screenshot-i-Phone-15-Pro-Max-2024-02-03-at-23-03-29" border="0" width="135" />
</p>

## Android 🤖
<p float="left" >
<img src="https://i.ibb.co/wJVmKcX/demo2.gif" alt="demo2" border="0" width="130" />
<img src="https://i.ibb.co/qpT1rfW/Screenshot-1707025585.png" alt="Screenshot-1707025585" border="0" width="130" />
<img src="https://i.ibb.co/dPG4mvS/Screenshot-1707025601.png" alt="Screenshot-1707025601" border="0" width="130" />
	
<img src="https://i.ibb.co/Tm0fBmj/Screenshot-1707025451.png" alt="Screenshot-1707025451" border="0" width="130" />
<img src="https://i.ibb.co/dggRhzW/Screenshot-1707025456.png" alt="Screenshot-1707025456" border="0" width="130" />
<img src="https://i.ibb.co/cCjprFP/Screenshot-1707025462.png" alt="Screenshot-1707025462" border="0" width="130" />
<img src="https://i.ibb.co/rfQ9qxG/Screenshot-1707025558.png" alt="Screenshot-1707025558" border="0" width="130" />
</p>





## Getting Started 🚀

This project contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

_\*Catbreeds works on iOS, Android, Web, and Windows._

---

## Running Tests 🧪
<img src="https://s13.gifyu.com/images/SCQqz.gif" alt="demo2" border="0" />

To run all unit and widget tests use the following command:

```sh
$ flutter test --coverage --test-randomize-ordering-seed random
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
$ genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
$ open coverage/index.html
```

---

## Working with Translations 🌐

This project relies on [flutter_localizations][flutter_localizations_link] and follows the [official internationalization guide for Flutter][internationalization_link].

### Adding Strings

1. To add a new localizable string, open the `app_en.arb` file at `lib/l10n/arb/app_en.arb`.

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    }
}
```

2. Then add a new key/value and description

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    },
    "helloWorld": "Hello World",
    "@helloWorld": {
        "description": "Hello World Text"
    }
}
```

3. Use the new string

```dart
import 'package:catbreeds/l10n/l10n.dart';

@override
Widget build(BuildContext context) {
  final l10n = context.l10n;
  return Text(l10n.helloWorld);
}
```

### Adding Supported Locales

Update the `CFBundleLocalizations` array in the `Info.plist` at `ios/Runner/Info.plist` to include the new locale.

```xml
    ...

    <key>CFBundleLocalizations</key>
	<array>
		<string>en</string>
		<string>es</string>
	</array>

    ...
```

### Adding Translations

1. For each supported locale, add a new ARB file in `lib/l10n/arb`.

```
├── l10n
│   ├── arb
│   │   ├── app_en.arb
│   │   └── app_es.arb
```

2. Add the translated strings to each `.arb` file:

`app_en.arb`

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    }
}
```

`app_es.arb`

```arb
{
    "@@locale": "es",
    "counterAppBarTitle": "Contador",
    "@counterAppBarTitle": {
        "description": "Texto mostrado en la AppBar de la página del contador"
    }
}
```

### Generating Translations

To use the latest translations changes, you will need to generate them:

1. Generate localizations for the current project:

```sh
flutter gen-l10n --arb-dir="lib/l10n/arb"
```

Alternatively, run `flutter run` and code generation will take place automatically.

[coverage_badge]: coverage_badge.svg
[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html
[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://github.com/VeryGoodOpenSource/very_good_cli
