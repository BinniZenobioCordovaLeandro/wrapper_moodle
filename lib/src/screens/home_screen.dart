import 'package:ccaguaviva/src/models/node_data_model.dart';
import 'package:ccaguaviva/src/providers/url_launcher_provider.dart';
import 'package:ccaguaviva/src/screens/login_screen.dart';
import 'package:ccaguaviva/src/screens/node_screen.dart';
import 'package:ccaguaviva/src/settings/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_treeview/flutter_treeview.dart';

class HomeScreen extends StatefulWidget {
  final SettingsController controller;

  const HomeScreen({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  final List<Node> nodes = [
    Node(
      label: 'Cursos',
      key: 'Cursos',
      data: 'Cursos',
      children: [
        Node(
          label: 'ADN DEL LIDER-2022-1 (Enero - Junio)',
          key: 'ADN DEL LIDER-2022-1 (Enero - Junio)',
          data: 'ADN DEL LIDER-2022-1 (Enero - Junio)',
          children: [
            Node(
              label:
                  'Clase 1: La iglesia de Hechos era llena del Espíritu Santo',
              key: 'Clase 1: La iglesia de Hechos era llena del Espíritu Santo',
              data: NodeDataModel(
                title:
                    'Clase 1: La iglesia de Hechos era llena del Espíritu Santo',
                description: 'En este curso ',
                date: 'Enero - Junio',
                url: 'https://www.ccaguaviva.com/video',
                urlVideo: 'https://www.ccaguaviva.com/video',
                urlImage: 'https://www.ccaguaviva.com/image',
              ),
            ),
            Node(
              label: 'Clase 2: El Líder Palmera',
              key: 'Clase 2: El Líder Palmera',
              data: NodeDataModel(
                title: 'Clase 2: El Líder Palmera',
                description: 'En este curso ',
                date: 'Enero - Junio',
                url: 'https://www.ccaguaviva.com/video',
                urlVideo: 'https://www.ccaguaviva.com/video',
                urlImage: 'https://www.ccaguaviva.com/image',
              ),
            ),
            Node(
              label: 'Clase 3: El Líder Samurai',
              key: 'Clase 3: El Líder Samurai',
              data: NodeDataModel(),
            ),
            Node(
              label: 'Clase 4: El Líder Pacificador',
              key: 'Clase 4: El Líder Pacificador',
              data: NodeDataModel(),
            ),
            Node(
              label: 'Clase 5: El lider planificador',
              key: 'Clase 5: El lider planificador',
              data: NodeDataModel(),
            ),
            Node(
              label: 'Clase 7: El Líder Entrenador',
              key: 'Clase 7: El Líder Entrenador',
              data: NodeDataModel(),
            ),
            Node(
              label: 'Clase 8: El Líder Guerrero',
              key: 'Clase 8: El Líder Guerrero',
              data: NodeDataModel(),
            ),
            Node(
              label: 'Clase 9: El Líder Matagigantes',
              key: 'Clase 9: El Líder Matagigantes',
              data: NodeDataModel(),
            ),
          ],
        ),
        Node(
          label: 'ADN DEL LIDER-2022-2 (Julio - Diciembre)',
          key: 'ADN DEL LIDER-2022-2 (Julio - Diciembre)',
          data: 'ADN DEL LIDER-2022-2 (Julio - Diciembre)',
          children: [
            Node(
              label:
                  'Clase 1: La iglesia de Hechos era llena del Espíritu Santo',
              key: 'Clase 1: La iglesia de Hechos era llena del Espíritu Santo',
              data: NodeDataModel(),
            ),
            Node(
              label: 'Clase 2: El Líder Palmera',
              key: 'Clase 2: El Líder Palmera',
              data: NodeDataModel(),
            ),
            Node(
              label: 'Clase 3: El Líder Samurai',
              key: 'Clase 3: El Líder Samurai',
              data: NodeDataModel(),
            ),
            Node(
              label: 'Clase 4: El Líder Pacificador',
              key: 'Clase 4: El Líder Pacificador',
              data: NodeDataModel(),
            ),
            Node(
              label: 'Clase 5: El lider planificador',
              key: 'Clase 5: El lider planificador',
              data: NodeDataModel(),
            ),
            Node(
              label: 'Clase 7: El Líder Entrenador',
              key: 'Clase 7: El Líder Entrenador',
              data: NodeDataModel(),
            ),
            Node(
              label: 'Clase 8: El Líder Guerrero',
              key: 'Clase 8: El Líder Guerrero',
              data: NodeDataModel(),
            ),
            Node(
              label: 'Clase 9: El Líder Matagigantes',
              key: 'Clase 9: El Líder Matagigantes',
              data: NodeDataModel(),
            ),
          ],
        ),
      ],
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.whatsapp,
        ),
        onPressed: () {
          UrlLauncherProvider().launchInBrowser(
              'https://web.whatsapp.com/send?phone=51997590457');
        },
      ),
      appBar: AppBar(
        leading: FractionallySizedBox(
          widthFactor: 0.8,
          child: Image.network(
            'https://www.aulavirtual.ccaguaviva.website/pluginfile.php/1/theme_academic/logo/1640954218/Comunidad-Cristiana-Agua-Viva-Logo-Aula-Virtual.png',
            width: 200,
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : null,
          ),
        ),
        title: const Text('Agua Viva'),
        actions: [
          if (!widget.controller.isLogged)
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(
                      controller: widget.controller,
                    ),
                  ),
                );
              },
              icon: const Icon(
                Icons.login,
              ),
              tooltip: 'Acceder',
            ),
          // if (widget.controller.isLogged)
          IconButton(
            onPressed: () {
              _scaffoldKey.currentState?.openEndDrawer();
            },
            icon: const Icon(
              Icons.menu,
            ),
            tooltip: 'Acceder',
          ),
        ],
      ),
      endDrawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                title: const Text('Agua Viva'),
                actions: [
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(
                      Icons.close,
                    ),
                  )
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.8,
                child: TreeView(
                  controller: TreeViewController(children: nodes),
                  onNodeTap: (key) {
                    var _treeViewController =
                        TreeViewController(children: nodes);
                    Node selectedNode = _treeViewController.getNode(key)!;
                    var selectedModel = selectedNode.data;
                    if (selectedModel is NodeDataModel) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NodeScreen(
                            controller: widget.controller,
                            nodeData: selectedModel,
                          ),
                        ),
                      );
                    }
                  },
                ),
              ),
              const SafeArea(
                child: Text('Derechos reservados'),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Wrap(
            spacing: 16,
            runSpacing: 16,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 3 / 1,
                child: PageView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    final data = [
                      {
                        "background":
                            'https://www.aulavirtual.ccaguaviva.website/theme/image.php/academic/theme/1640954218/banner1image',
                        "title":
                            'La Educación No Es Un Problema, La Educación Es Una Oportunidad',
                      },
                      {
                        "background":
                            'https://www.aulavirtual.ccaguaviva.website/theme/image.php/academic/theme/1640954218/banner2image',
                        "title": 'Mejor Educación Para Un Mundo Mejor',
                      },
                      {
                        "background":
                            'https://www.aulavirtual.ccaguaviva.website/theme/image.php/academic/theme/1640954218/banner3image',
                        "title": 'Encuentra Los Mejores Cursos',
                      },
                    ];
                    return SizedBox(
                      child: Stack(
                        children: [
                          Image.network(
                            data[index]['background']!,
                            fit: BoxFit.cover,
                          ),
                          Center(
                            child: FractionallySizedBox(
                              widthFactor: 0.9,
                              child: Text(
                                data[index]['title']!,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    ?.copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              AspectRatio(
                aspectRatio: 6 / 5,
                child: PageView.builder(
                  controller: PageController(viewportFraction: 0.8),
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    final data = [
                      {
                        "image":
                            "https://www.aulavirtual.ccaguaviva.website/pluginfile.php/1/theme_academic/course9image/1640954218/Comunidad%20Cristiana%20Agua%20Viva%20-%20Vida%20Abundante.jpg",
                        "title": 'Vida abundante',
                        "description":
                            "En este seminario aprenderás los principios básicos para tener una economía sana y libre de deudas..."
                      },
                      {
                        "image":
                            "https://www.aulavirtual.ccaguaviva.website/pluginfile.php/1/theme_academic/course10image/1640954218/Comunidad%20Cristiana%20Agua%20Viva%20-%20Introducci%C3%B3n%20A%20Los%20Dones%20Del%20Esp%C3%ADritu%20Santo.jpg",
                        "title": 'Introducción A Los Dones Del Espíritu Santo',
                        "description":
                            "En este seminario aprenderás todo lo concerniente a los dones espirituales..."
                      },
                      {
                        "image":
                            "https://www.aulavirtual.ccaguaviva.website/pluginfile.php/1/theme_academic/course12image/1640954218/Comunidad%20Cristiana%20Agua%20Viva%20-%20Escuela%20Para%20Padres.jpg",
                        "title": 'Escuela para padres',
                        "description":
                            "En este seminario aprenderás cómo edificar en tu hogar la cultura de fe con Dios como prioridad de tu familia..."
                      },
                    ];
                    return Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.black.withOpacity(0.3),
                      ),
                      margin: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Column(
                        children: [
                          AspectRatio(
                            aspectRatio: 2 / 1,
                            child: Image.network(
                              data[index]['image']!,
                              fit: BoxFit.cover,
                            ),
                          ),
                          FractionallySizedBox(
                            widthFactor: 0.95,
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    data[index]['title']!,
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    data[index]['description']!,
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Comunidad Cristiana Agua Viva',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      'Servicios que ofrecemos a nuestra comunidad',
                      style: Theme.of(context).textTheme.subtitle1,
                    )
                  ],
                ),
              ),
              AspectRatio(
                aspectRatio: 4 / 5,
                child: FractionallySizedBox(
                  widthFactor: 0.9,
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    primary: false,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 4,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      final data = [
                        {
                          "image":
                              "https://www.aulavirtual.ccaguaviva.website/theme/image.php/academic/theme/1640954218/icon1",
                          "title":
                              "Cursos donde se aporta gran valor de calidad",
                          "description":
                              "Cursos donde se aporta gran valor de calidad",
                        },
                        {
                          "image":
                              "https://www.aulavirtual.ccaguaviva.website/theme/image.php/academic/theme/1640954218/icon2",
                          "title": "Notificación",
                          "description":
                              "Por cada nuevo curso se le notificara",
                        },
                        {
                          "image":
                              "https://www.aulavirtual.ccaguaviva.website/theme/image.php/academic/theme/1640954218/icon3",
                          "title": "Sesiones de audio y video",
                          "description":
                              "Cursos emitidos con buena calidad de audio y video",
                        },
                        {
                          "image":
                              "https://www.aulavirtual.ccaguaviva.website/theme/image.php/academic/theme/1640954218/icon4",
                          "title": "Sin barreras geográficas",
                          "description":
                              "Personas de cualquier país lo puede visualizar",
                        },
                      ];
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: [
                            AspectRatio(
                              aspectRatio: 3 / 1,
                              child: Image.network(
                                data[index]['image']!,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                data[index]['title']!,
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                data[index]['description']!,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontStyle: FontStyle.italic,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Sobre Nosotros',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      'Brindamos cursos de calidad',
                      style: Theme.of(context).textTheme.subtitle1,
                    )
                  ],
                ),
              ),
              AspectRatio(
                aspectRatio: 4 / 5,
                child: FractionallySizedBox(
                  widthFactor: 0.9,
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    primary: false,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 4,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0,
                    ),
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      final colors = [
                        Colors.red.withOpacity(0.3),
                        Colors.orange.withOpacity(0.3),
                        Colors.green.withOpacity(0.3),
                        Colors.cyan.withOpacity(0.3),
                      ];
                      final data = [
                        {
                          "image":
                              "https://www.aulavirtual.ccaguaviva.website/theme/image.php/academic/theme/1640954218/header-block-icon1",
                          "title": "¿Quiénes somos?",
                          "description":
                              "Somos una Comunidad Cristiana que trabajamos para compartir las Buenas Nuevas de Jesucristo",
                        },
                        {
                          "image":
                              "https://www.aulavirtual.ccaguaviva.website/theme/image.php/academic/theme/1640954218/header-block-icon2",
                          "title": "Enseñanzas",
                          "description":
                              "En Comunidad Cristiana Agua Viva Encuentras las mejores enseñanzas de vida ",
                        },
                        {
                          "image":
                              "https://www.aulavirtual.ccaguaviva.website/theme/image.php/academic/theme/1640954218/header-block-icon3",
                          "title": "Certificación",
                          "description":
                              "Cada curso brindado por nuestra Comunidad Cristiana Agua Viva recibirá un certificado",
                        },
                        {
                          "image":
                              "https://www.aulavirtual.ccaguaviva.website/theme/image.php/academic/theme/1640954218/header-block-icon4",
                          "title": "Aula Virtual",
                          "description":
                              "Brindamos cursos de calidad, diseñados para ti para que desarrolle una vida de Cristo Céntrica",
                        },
                      ];
                      return Container(
                        decoration: BoxDecoration(
                          color: colors[index],
                        ),
                        padding: const EdgeInsets.all(16),
                        child: Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: [
                            AspectRatio(
                              aspectRatio: 3 / 1,
                              child: Image.network(
                                data[index]['image']!,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                data[index]['title']!,
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                data[index]['description']!,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontStyle: FontStyle.italic,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      'NUESTRA GALERIA',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      'Galería de nuestra Comunidad Cristiana Agua Viva',
                      style: Theme.of(context).textTheme.subtitle2,
                    )
                  ],
                ),
              ),
              Center(
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    Image.network(
                      "https://www.aulavirtual.ccaguaviva.website/pluginfile.php/1/theme_academic/gallery1image/1640954218/Comunidad%20Cristiana%20Agua%20Viva%201.jpg",
                      fit: BoxFit.fitHeight,
                    ),
                    Image.network(
                      "https://www.aulavirtual.ccaguaviva.website/pluginfile.php/1/theme_academic/gallery2image/1640954218/Comunidad%20Cristiana%20Agua%20Viva%202.jpg",
                      fit: BoxFit.fitHeight,
                    ),
                    Image.network(
                      "https://www.aulavirtual.ccaguaviva.website/pluginfile.php/1/theme_academic/gallery3image/1640954218/Comunidad%20Cristiana%20Agua%20Viva%203.jpg",
                      fit: BoxFit.fitHeight,
                    ),
                    Image.network(
                      "https://www.aulavirtual.ccaguaviva.website/pluginfile.php/1/theme_academic/gallery4image/1640954218/Comunidad%20Cristiana%20Agua%20Viva%204.jpg",
                      fit: BoxFit.fitHeight,
                    ),
                    Image.network(
                      "https://www.aulavirtual.ccaguaviva.website/pluginfile.php/1/theme_academic/gallery5image/1640954218/Comunidad%20Cristiana%20Agua%20Viva%205.jpg",
                      fit: BoxFit.fitHeight,
                    ),
                    Image.network(
                      "https://www.aulavirtual.ccaguaviva.website/pluginfile.php/1/theme_academic/gallery6image/1640954218/Comunidad%20Cristiana%20Agua%20Viva%206.jpg",
                      fit: BoxFit.fitHeight,
                    ),
                    Image.network(
                      "https://www.aulavirtual.ccaguaviva.website/pluginfile.php/1/theme_academic/gallery7image/1640954218/Comunidad%20Cristiana%20Agua%20Viva%207.jpg",
                      fit: BoxFit.fitHeight,
                    ),
                    Image.network(
                      "https://www.aulavirtual.ccaguaviva.website/pluginfile.php/1/theme_academic/gallery8image/1640954218/Comunidad%20Cristiana%20Agua%20Viva%208.jpg",
                      fit: BoxFit.fitHeight,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.grey.withOpacity(0.3),
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: FractionallySizedBox(
                  widthFactor: 0.9,
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      Text(
                        'NUESTRA ACADEMIA',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        'Desarrolla una vida de Cristo Céntrica a través de nuestros cursos diseñados para ti, avanza en el propósito que Dios tiene para tu vida',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      Text(
                        'escuela@ccaguaviva.com',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      Text(
                        '+51 997 590 457',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      Text(
                        'Jr. Risso 269 - Lince',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ],
                  ),
                ),
              ),
              const Center(
                child: Text('Copyright © 2022 Comunidad Cristiana Agua Viva'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
