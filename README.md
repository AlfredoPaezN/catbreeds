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
<img src="https://i.postimg.cc/J7x4dq5S/android.gif" alt="demo2" border="0" width="130" />
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
## Architecture 🏗️
<p float="left" >


<img src="https://i.ibb.co/rmTB5Lk/Whats-App-Image-2024-02-04-at-02-19-10.jpg" alt="Screenshot-1707025601" border="0"  height="700"  width="350" />

1. *bootstrap.dart:*
   - Inicialización de la aplicación.

2. *core:*
   - Constantes, Errores, HTTP.

3. *injection_container.dart:*
   - Contenedor de Inyección de Dependencias.

4. *l10n:*
   - Internacionalización, Traducciones.

5. *main_development.dart, main_production.dart, main_staging.dart:*
   - Puntos de entrada de configuración.

6. *modules:*
   - Datos, Dominio, Presentación.

7. *routes:*
   - Definición de Rutas.

</p>

## Running Tests 🧪

<img src="https://s13.gifyu.com/images/SCQqz.gif" alt="demo2" border="0"/>
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


Alternatively, run `flutter run` and code generation will take place automatically.

[coverage_badge]: coverage_badge.svg
[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html
[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://github.com/VeryGoodOpenSource/very_good_cli
