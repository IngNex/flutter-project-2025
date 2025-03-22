// import 'package:flutter/material.dart';

// class OnboardingPage extends StatefulWidget {
//   const OnboardingPage({super.key});

//   @override
//   State<OnboardingPage> createState() => _OnboardingPageState();
// }

// class _OnboardingPageState extends State<OnboardingPage> {
//   // Mover la declaración de _currentIndex fuera de build
//   int _currentIndex = 0;
//   final PageController _controller = PageController();

//   final List<String> _titles = [
//     "Bienvenido a Nex",
//     "Explora nuestras funciones",
//     "Comienza tu experiencia"
//   ];

//   final List<String> _descriptions = [
//     "Descubre todo lo que nuestra app puede ofrecerte.",
//     "Navega fácilmente y encuentra lo que necesitas.",
//     "Crea tu cuenta y empieza ahora."
//   ];

//   final List<String> _images = [
//     "avengers.jpg",
//     "sonic.jpg",
//     "squid.jpg",
//   ];

//   void _onPageChanged(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }

//   @override
//   void dispose() {
//     _controller.dispose(); // No olvides liberar el PageController
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     //final width = MediaQuery.of(context).size.width;
//     final height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: Stack(
//         children: [
//           // PageView para navegar entre las páginas
//           PageView.builder(
//             controller: _controller,
//             onPageChanged: _onPageChanged,
//             itemCount: _titles.length,
//             itemBuilder: (context, index) {
//               return Stack(
//                 children: [
//                   Container(
//                     height: height * 0.65,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         fit: BoxFit.cover,
//                         image:
//                             AssetImage('assets/onboarding/${_images[index]}'),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     top: height * 0.55,
//                     left: 0,
//                     right: 0,
//                     child: Container(
//                       width: double.infinity,
//                       height: height * 0.45,
//                       padding: EdgeInsets.all(25),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(25),
//                           topRight: Radius.circular(25),
//                         ),
//                         color: Colors.white,
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             _titles[index],
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontSize: 35,
//                             ),
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Text(
//                             _descriptions[index],
//                             textAlign: TextAlign.center,
//                             style: TextStyle(fontSize: 16),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               );
//             },
//           ),
//           Positioned(
//             top: height * 0.58,
//             left: 0,
//             right: 0,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: List.generate(_titles.length, (index) {
//                 return Container(
//                   margin: EdgeInsets.symmetric(horizontal: 4),
//                   width: _currentIndex == index ? 12 : 8,
//                   height: _currentIndex == index ? 12 : 8,
//                   decoration: BoxDecoration(
//                     color: _currentIndex == index ? Colors.red : Colors.grey,
//                     shape: BoxShape.circle,
//                   ),
//                 );
//               }),
//             ),
//           ),
//           Positioned(
//               bottom: 25,
//               left: 15,
//               right: 15,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   TextButton(
//                     onPressed: () {
//                       Navigator.pushReplacementNamed(context, '/');
//                     },
//                     child: Text("Omitir"),
//                   ),
//                   ElevatedButton(
//                     style: ButtonStyle(
//                       backgroundColor: WidgetStateProperty.all(Colors.red),
//                     ),
//                     onPressed: () {
//                       if (_currentIndex == _titles.length - 1) {
//                         // Última página: ingresar a la app
//                         Navigator.pushReplacementNamed(context, '/');
//                       } else {
//                         // Avanzar a la siguiente página
//                         _controller.nextPage(
//                           duration: Duration(milliseconds: 300),
//                           curve: Curves.easeInOut,
//                         );
//                       }
//                     },
//                     child: Text(
//                       _currentIndex == _titles.length - 1
//                           ? "Comenzar"
//                           : "Siguiente",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ],
//               )),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int _currentIndex = 0;
  final PageController _controller = PageController();

  final List<String> _titles = [
    "Bienvenido a Nex",
    "Explora nuestras funciones",
    "Comienza tu experiencia"
  ];

  final List<String> _descriptions = [
    "Descubre todo lo que nuestra app puede ofrecerte.",
    "Navega fácilmente y encuentra lo que necesitas.",
    "Crea tu cuenta y empieza ahora."
  ];

  final List<String> _images = [
    "avengers.jpg",
    "sonic.jpg",
    "squid.jpg",
  ];

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: SizedBox(
              height: screenHeight * 0.7,
              child: PageView.builder(
                controller: _controller,
                onPageChanged: _onPageChanged,
                itemCount: _titles.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    'assets/onboarding/${_images[index]}',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  );
                },
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: screenHeight * 0.4,
              padding:
                  EdgeInsets.only(top: 35, left: 25, right: 25, bottom: 25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // 🔵 Indicadores de página
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(_titles.length, (index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        width: _currentIndex == index ? 12 : 8,
                        height: _currentIndex == index ? 12 : 8,
                        decoration: BoxDecoration(
                          color:
                              _currentIndex == index ? Colors.red : Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: 15),
                  // ✅ Animación de título
                  AnimatedSwitcher(
                    duration: Duration(milliseconds: 500),
                    transitionBuilder: (child, animation) {
                      // return SlideTransition(
                      //   position: Tween<Offset>(
                      //     begin: Offset(0.0, 1.0),
                      //     end: Offset(0.0, 0.0),
                      //   ).animate(animation),
                      //   child: child,
                      // );
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                    child: Text(
                      _titles[_currentIndex],
                      key: ValueKey(_titles[_currentIndex]),
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 15),
                  // ✅ Animación de descripción
                  AnimatedSwitcher(
                    duration: Duration(milliseconds: 500),
                    transitionBuilder: (child, animation) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                    child: Text(
                      _descriptions[_currentIndex],
                      key: ValueKey(_descriptions[_currentIndex]),
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ),

                  Spacer(),

                  // 🔘 Botones de navegación
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () =>
                            Navigator.pushReplacementNamed(context, '/'),
                        child: Text("Omitir"),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Colors.red),
                        ),
                        onPressed: () {
                          if (_currentIndex == _titles.length - 1) {
                            Navigator.pushReplacementNamed(context, '/');
                          } else {
                            _controller.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                        child: Text(
                          _currentIndex == _titles.length - 1
                              ? "Comenzar"
                              : "Siguiente",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //),
        ],
      ),
    );
  }
}

// 🔵 CustomClipper para darle diseño ovalado al Container
class OvalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.75);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height * 0.75);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
