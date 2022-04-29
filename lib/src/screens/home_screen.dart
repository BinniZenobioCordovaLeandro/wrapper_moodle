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
      label: 'Cursos de Aprendizaje',
      key: 'Cursos de Aprendizaje',
      data: 'Cursos de Aprendizaje',
      expanded: true,
      children: [
        const Node(
          label: 'DISCIPULADO I (Junio - Agosto)',
          key: 'DISCIPULADO I (Junio - Agosto)',
          data: 'DISCIPULADO I (Junio - Agosto)',
          expanded: true,
          children: [
            Node(
              label: '<Fechas aun no disponibles>',
              key: '<Fechas aun no disponibles>',
              data: '<Fechas aun no disponibles>',
            ),
          ],
        ),
        Node(
          label: 'SANTOS ESTA SEMANA (Abril)',
          key: 'SANTOS ESTA SEMANA (Abril)',
          data: 'SANTOS ESTA SEMANA (Abril)',
          expanded: true,
          children: [
            Node(
              key: 'REFLEXION! - SERGIO HORNUNG',
              label: 'REFLEXION! - SERGIO HORNUNG',
              data: NodeDataModel(
                title: 'REFLEXION! - SERGIO HORNUNG',
                description:
                    'En esta semana santa el gran SERGIO HORNUNG nos invita a reflexionar sobre nuestras ideas e intenciones para nuestro projimo.\n\nTemas:\n-El sentir de la vida\n-Demos gracias a dios\n-Como alabar a dios\n-Los secretos de la felicidad\n-Como celebrar con respeto\n-Comparte con el projimo\n-Presta atención a tu entorno\n-Que pasa si no oramos\n-Socializar es espectacular',
                date: 'Abril 26, 2022',
                datetime: '2022-04-26',
                url:
                    'https://www.youtube.com/watch?v=KHsBZHm1DbY&list=PLH2NKiR1Ffd37DdhXE0pU8P4k1IL3zKaB',
                urlVideo:
                    'https://www.youtube.com/watch?v=KHsBZHm1DbY&list=PLH2NKiR1Ffd37DdhXE0pU8P4k1IL3zKaB',
                urlImage:
                    'https://www.aulavirtual.ccaguaviva.website/pluginfile.php/1/theme_academic/gallery1image/1640954218/Comunidad%20Cristiana%20Agua%20Viva%201.jpg',
              ),
            ),
            Node(
              key: 'PRODIGIO! - DAVID SCARPETA',
              label: 'PRODIGIO! - DAVID SCARPETA',
              data: NodeDataModel(
                title: 'PRODIGIO! - DAVID SCARPETA',
                description:
                    'En esta semana santa el gran DAVID SCARPETA nos invita a REGOSIJARNOS por todas las gracias que nos da cristo.\n\nTemas:\n-Grita al cielo\n-Sientete bendecido\n-Da honraz a dios\n-Lo mejor de latinoamerica\n-Como amar a dios\n-Como ser bendecido\n-Que hay de la familia\n-Como ser profeta\n-bendicenos por todo\n-Comparte la Iglesia',
                date: 'Abril 27, 2022',
                datetime: '2022-04-27',
                url:
                    'https://www.youtube.com/watch?v=z_ZByQiX7rs&list=PLH2NKiR1Ffd37DdhXE0pU8P4k1IL3zKaB&index=2',
                urlVideo:
                    'https://www.youtube.com/watch?v=z_ZByQiX7rs&list=PLH2NKiR1Ffd37DdhXE0pU8P4k1IL3zKaB&index=2',
                urlImage:
                    'https://www.aulavirtual.ccaguaviva.website/pluginfile.php/1/theme_academic/gallery1image/1640954218/Comunidad%20Cristiana%20Agua%20Viva%201.jpg',
              ),
            ),
            Node(
              key: 'DIGNOS! - MARIA PAULA ARRÁZOLA',
              label: 'DIGNOS! - MARIA PAULA ARRÁZOLA',
              data: NodeDataModel(
                title: 'DIGNOS! - MARIA PAULA ARRÁZOLA',
                description:
                    'En esta semana santa el gran MARIA PAULA ARRÁZOLA nos invita a sentir regocijo por ser DIGNOS de todas las gracias de DIOS\n\nTemas:\n-Demos gracias\n-Respeta a la familia\n-La dignidad ante todo\n-Comparte lo que Dios te brinda\n-Habre de la palabra de dios\n-El ser humano ante dios\n-Sientete vivo\n-Como mantener tu matrimonio\n-Los hijos son bendicion\n-Da gracias a dios',
                date: 'Abril 28, 2022',
                datetime: '2022-04-28',
                url:
                    'https://www.youtube.com/watch?v=1OJ_sKPUudg&list=PLH2NKiR1Ffd37DdhXE0pU8P4k1IL3zKaB&index=3',
                urlVideo:
                    'https://www.youtube.com/watch?v=1OJ_sKPUudg&list=PLH2NKiR1Ffd37DdhXE0pU8P4k1IL3zKaB&index=3',
                urlImage:
                    'https://www.aulavirtual.ccaguaviva.website/pluginfile.php/1/theme_academic/gallery1image/1640954218/Comunidad%20Cristiana%20Agua%20Viva%201.jpg',
              ),
            ),
            Node(
              key: 'SANTOS! - MIGUEL ARRAZOLA',
              label: 'SANTOS! - MIGUEL ARRAZOLA',
              data: NodeDataModel(
                title: 'SANTOS! - MIGUEL ARRAZOLA',
                description:
                    'En esta semana santa el gran MIGUEL ARRAZOLA nos invita a sentirnos SANTIFICADOS por haber sido elegidos como hijos de DIOS!\n\nTemas:\n-Viva el Peru\n-Los entretenimientos del hombre\n-Vicios que debemos evitar\n-Como reconocer la palabra de dios\n-Tiempo en la Iglesia\n-Bendicion de los amigos\n-Como viajar\n-Listos para la palabra del señor\n-La comunidad lo es todo\n-Los Peruanos son muy populares\n-Como ser fortificado\n-Cronicas de cristo',
                date: 'Abril 29, 2022',
                datetime: '2022-04-29',
                url:
                    'https://www.youtube.com/watch?v=lnH9xDHuHvk&list=PLH2NKiR1Ffd37DdhXE0pU8P4k1IL3zKaB&index=4',
                urlVideo:
                    'https://www.youtube.com/watch?v=lnH9xDHuHvk&list=PLH2NKiR1Ffd37DdhXE0pU8P4k1IL3zKaB&index=4',
                urlImage:
                    'https://www.aulavirtual.ccaguaviva.website/pluginfile.php/1/theme_academic/gallery1image/1640954218/Comunidad%20Cristiana%20Agua%20Viva%201.jpg',
              ),
            ),
          ],
        ),
        Node(
          label: 'CIELOS ABIERTOS (Marzo)',
          key: 'CIELOS ABIERTOS (Marzo)',
          data: 'CIELOS ABIERTOS (Marzo)',
          expanded: true,
          children: [
            Node(
              key: 'Clase 1: Como despertar de la tristeza - por CARLA HORNUNG',
              label:
                  'Clase 1: Como despertar de la tristeza - por CARLA HORNUNG',
              data: NodeDataModel(
                title:
                    'Clase 1: Como despertar de la tristeza - por CARLA HORNUNG',
                description:
                    'En esta clase aprenderás a despertar de la tristeza y a ser más feliz.\n Tomando en cuenta todas las cosas buenas que tienes y debes de disfrutar, para sentirte mejor y ser feliz como persona.\n\nTEMAS:\n-Matrimonio\n-El dia y la noche\n-Viajes de diversion\n-Relajarse es la clave\n-No a los extremos\n-La felicidad es la clave\n-Dios con nosotros',
                date: 'Marzo 1, 2022',
                datetime: '2022-03-01',
                url:
                    'https://www.youtube.com/watch?v=MBBLpFZ4N9w&list=PLH2NKiR1Ffd0PwfT7qoQaw-olqVBZs4-6&index=1',
                urlVideo:
                    'https://www.youtube.com/watch?v=MBBLpFZ4N9w&list=PLH2NKiR1Ffd0PwfT7qoQaw-olqVBZs4-6&index=1',
                urlImage:
                    'https://www.aulavirtual.ccaguaviva.website/pluginfile.php/1/theme_academic/gallery3image/1640954218/Comunidad%20Cristiana%20Agua%20Viva%203.jpg',
              ),
            ),
            Node(
              key:
                  'Clase 2: Manda el espiritu santa para EMPODERARNOS - por SERGIO HORNUNG',
              label:
                  'Clase 2: Manda el espiritu santa para EMPODERARNOS - por SERGIO HORNUNG',
              data: NodeDataModel(
                title:
                    'Clase 2: Manda el espiritu santa para EMPODERARNOS - por SERGIO HORNUNG',
                description:
                    'En esta clase aprenderás a que el espiritu santo fue mas que un regalo, fue una herramienta de empoderamiento para poder tener una voz ante todos los echos que sucitan en el mundo y con nuestros conyacientes.\n\nTemas:\n-Por que los apostoles\n-Predicar es bueno\n-El por que de las lenguas\n-La capacidad de la mente ante el cuerto\n-Importancia de la vida\n-Como no trabajar\n-Sentir el dia a dia\n-Vivir por los nuestros',
                date: 'Marzo 1, 2022',
                datetime: '2022-03-01',
                url:
                    'https://www.youtube.com/watch?v=yjxFds5RhMs&list=PLH2NKiR1Ffd0PwfT7qoQaw-olqVBZs4-6&index=2',
                urlVideo:
                    'https://www.youtube.com/watch?v=yjxFds5RhMs&list=PLH2NKiR1Ffd0PwfT7qoQaw-olqVBZs4-6&index=2',
                urlImage:
                    'https://www.aulavirtual.ccaguaviva.website/pluginfile.php/1/theme_academic/gallery3image/1640954218/Comunidad%20Cristiana%20Agua%20Viva%203.jpg',
              ),
            ),
          ],
        ),
        Node(
          label: 'TU ELECCION!, TU FUTURO! (Diciembre 2021)',
          key: 'TU ELECCION!, TU FUTURO! (Diciembre 2021)',
          data: 'TU ELECCION!, TU FUTURO! (Diciembre 2021)',
          expanded: true,
          children: [
            Node(
              key: 'Clase 1: Que hacer ante tanta incertidumbre',
              label: 'Clase 1: Que hacer ante tanta incertidumbre',
              data: NodeDataModel(
                title: 'Clase 1: Que hacer ante tanta incertidumbre',
                description:
                    'Como ser una persona justa y honesta con buen corazon, como gobernar nuestro ser de forma integra y respetandonos.\n\nTemas:\n-Como pedir ayuda\n-Los jovenes\n-La sabiduria\n-Tus relaciones\n-Lo sobrenatural\n-Encuentro de confraternidad\n-El anelo de todos\n-La vida',
                date: 'Diciembre 20, 2021',
                datetime: '2021-12-20',
                url:
                    'https://www.youtube.com/watch?v=AjcbFDdgbQ0&list=PLH2NKiR1Ffd2lMXlDdgFx0piZ23WDv6sG',
                urlVideo:
                    'https://www.youtube.com/watch?v=AjcbFDdgbQ0&list=PLH2NKiR1Ffd2lMXlDdgFx0piZ23WDv6sG',
                urlImage:
                    'https://www.aulavirtual.ccaguaviva.website/pluginfile.php/1/theme_academic/gallery2image/1640954218/Comunidad%20Cristiana%20Agua%20Viva%202.jpg',
              ),
            ),
            Node(
              key: 'Clase 2: La iglesia y tu futuro',
              label: 'Clase 2: La iglesia y tu futuro',
              data: NodeDataModel(
                title: 'Clase 2: La iglesia y tu futuro',
                description:
                    'El rencor y el odio corrompen la vida, debes de dejar de pensar en lo malo y evitar las emociones negativas antes de tomar decisiones.\n\nTemas:\n-Dominio propio\n-Despierta del enojo\n-Toma elecciones sabias\n-Ayudate a superar\n-Liberate\n-No elijas si estas triste\n-Todos los dias son malos?\n-Debes de ser feliz\n-Se feliz!',
                date: 'Diciembre 21, 2021',
                datetime: '2021-12-21',
                url:
                    'https://www.youtube.com/watch?v=T-IeqOLxsBo&list=PLH2NKiR1Ffd2lMXlDdgFx0piZ23WDv6sG&index=2',
                urlVideo:
                    'https://www.youtube.com/watch?v=T-IeqOLxsBo&list=PLH2NKiR1Ffd2lMXlDdgFx0piZ23WDv6sG&index=2',
                urlImage:
                    'https://www.aulavirtual.ccaguaviva.website/pluginfile.php/1/theme_academic/gallery2image/1640954218/Comunidad%20Cristiana%20Agua%20Viva%202.jpg',
              ),
            ),
            Node(
              key: 'Clase 3: Promesas de DIOS',
              label: 'Clase 3: Promesas de DIOS',
              data: NodeDataModel(
                title: 'Clase 3: Promesas de DIOS',
                description:
                    'Aprende que a pesar de las promesas de DIOS, nada es facil por lo que debes estar convencido que no todo es facil y requiere de ezfuerzo.\n\nTemas:\n-San pablo\n-Como no decepcionarse\n-El espiritu santo me guia\n-Da pasos firmes\n-Busca tu proposito\n-Camina a tu destino\n-Evita las carceles espirituales\n-Se bendecido\n-Camina con rumbo\n-Da pasos hacia dios',
                date: 'Diciembre 22, 2021',
                datetime: '2021-12-22',
                url:
                    'https://www.youtube.com/watch?v=_pa7wPTwkQY&list=PLH2NKiR1Ffd2lMXlDdgFx0piZ23WDv6sG',
                urlVideo:
                    'https://www.youtube.com/watch?v=_pa7wPTwkQY&list=PLH2NKiR1Ffd2lMXlDdgFx0piZ23WDv6sG',
                urlImage:
                    'https://www.aulavirtual.ccaguaviva.website/pluginfile.php/1/theme_academic/gallery2image/1640954218/Comunidad%20Cristiana%20Agua%20Viva%202.jpg',
              ),
            ),
            Node(
              key: 'Clase 4: Obediente y bendecido',
              label: 'Clase 4: Obediente y bendecido',
              data: NodeDataModel(
                title: 'Clase 4: Obediente y bendecido',
                description:
                    'Aprende a ser obediente para ser bendecido, evita que otros eligan por ti, se feliz por tu cuenta.\n\nTemas:\n-Evita el mal\n-Elije obedecer\n-Las ordenes de DIOS\n-No escojas la popular\n-Elecciones inteligentes\n-Siempre ten en cuenta la vida\n-No evites ofender por tus decisiones\n-Solo vales tu como persona\n-Siempre toma decisiones',
                date: 'Diciembre 23, 2021',
                datetime: '2021-12-23',
                url:
                    'https://www.youtube.com/watch?v=EsYeA2ETMcU&list=PLH2NKiR1Ffd2lMXlDdgFx0piZ23WDv6sG',
                urlVideo:
                    'https://www.youtube.com/watch?v=EsYeA2ETMcU&list=PLH2NKiR1Ffd2lMXlDdgFx0piZ23WDv6sG',
                urlImage:
                    'https://www.aulavirtual.ccaguaviva.website/pluginfile.php/1/theme_academic/gallery2image/1640954218/Comunidad%20Cristiana%20Agua%20Viva%202.jpg',
              ),
            ),
          ],
        ),
        Node(
          label: 'LO QUE ME PREDICO A MI MISMO (Octubre 2021)',
          key: 'LO QUE ME PREDICO A MI MISMO (Octubre 2021)',
          data: 'LO QUE ME PREDICO A MI MISMO (Octubre 2021)',
          expanded: true,
          children: [
            Node(
              key: 'Clase 1: Tu elección, tu futuro!',
              label: 'Clase 1: Tu elección, tu futuro!',
              data: NodeDataModel(
                title: 'Clase 1: Tu elección, tu futuro!',
                description:
                    'En esta clase aprenderas que cuando tienes una elección, tu futuro depende de ti. Por lo que es muy importante tener en cuenta el por que de tus acciones y tener mucha cautela en ellas, para tomar la mejor eleccion posible.\n\nTemas:\n-La juventud\n-La vitalidad\n-Que es elejir\n-Como vivir\n-Como pensar\n-Que hacer para ser mejor\n-Cada paso cuenta\n-El objetivo se cumplira\n-Toma las decisiones ya\n-Como escoger la mejor opcion\n-El matrimonio y las opciones',
                date: 'Octubre 20, 2021',
                datetime: '2021-10-20',
                url:
                    'https://www.youtube.com/watch?v=kkzdj2XCRTM&list=PLH2NKiR1Ffd2XxQwVNDl3Li8uGbJdMVxV',
                urlVideo:
                    'https://www.youtube.com/watch?v=kkzdj2XCRTM&list=PLH2NKiR1Ffd2XxQwVNDl3Li8uGbJdMVxV',
                urlImage:
                    'https://www.aulavirtual.ccaguaviva.website/pluginfile.php/1/theme_academic/gallery8image/1640954218/Comunidad%20Cristiana%20Agua%20Viva%208.jpg',
              ),
            ),
            Node(
              key: 'Clase 2: Respetate y saldras adelante.',
              label: 'Clase 2: Respetate y saldras adelante.',
              data: NodeDataModel(
                title: 'Clase 2: Respetate y saldras adelante.',
                description:
                    'En esta clase obtendras un mantra donde debes respetarte para poder salir adelante, y mejorar en las cosas que realizas en tu dia a dia para que al cabo de determinado tiempo todo sume y puedas ser un gran ser humano y manehar tus emociones.\n\nTemas:\n-Tu vida\n-Tu futuro\n-Tus elecciones\n-El mañana\n-Tu historia\n-Tu vida\n-Quien eres\n-Factores de vida\n-Lejos de la tecnologia\n-La sabiduria\n-Con la edad llega la sabiduria\n-Aprende de los mayores',
                date: 'Octubre 21, 2021',
                datetime: '2021-10-21',
                url:
                    'https://youtu.be/P6f_691B55E?list=PLH2NKiR1Ffd2XxQwVNDl3Li8uGbJdMVxV',
                urlVideo:
                    'https://youtu.be/P6f_691B55E?list=PLH2NKiR1Ffd2XxQwVNDl3Li8uGbJdMVxV',
                urlImage:
                    'https://www.aulavirtual.ccaguaviva.website/pluginfile.php/1/theme_academic/gallery8image/1640954218/Comunidad%20Cristiana%20Agua%20Viva%208.jpg',
              ),
            ),
            Node(
              key: 'Clase 3: La vida es una serie de eventos.',
              label: 'Clase 3: La vida es una serie de eventos.',
              data: NodeDataModel(
                title: 'Clase 3: La vida es una serie de eventos.',
                description:
                    'Aprende a marcar tu caminar con dios y a marcar buenas decisiones segun los pasos que dios te brinda.\n\nTemas:\n-Buenas decisiones\n-Como ir a Jerusalen\n-El espiritu santo\n-Mi vida y el valor de cristo\n-Jesus y el evangelio\n-Gracia de dios\n-El predicador apostol Pablo\n-Pasion por dios\n-Saber tomar decisiones\n-El espiritu santo ayuda\n-Dejate guiar por\n-Ve a jerusalen',
                date: 'Octubre 22, 2021',
                datetime: '2021-10-22',
                url:
                    'https://youtu.be/hgzVUYQiD9I?list=PLH2NKiR1Ffd2XxQwVNDl3Li8uGbJdMVxV',
                urlVideo:
                    'https://youtu.be/hgzVUYQiD9I?list=PLH2NKiR1Ffd2XxQwVNDl3Li8uGbJdMVxV',
                urlImage:
                    'https://www.aulavirtual.ccaguaviva.website/pluginfile.php/1/theme_academic/gallery8image/1640954218/Comunidad%20Cristiana%20Agua%20Viva%208.jpg',
              ),
            ),
          ],
        )
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
          if (widget.controller.isLogged)
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
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              AppBar(
                title: const Text('Tus cursos!'),
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
              const SizedBox(
                height: 56,
                child: Center(child: Text('Derechos reservados')),
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
                  controller: PageController(viewportFraction: 0.91),
                  itemCount: 3,
                  physics: const BouncingScrollPhysics(),
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
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      child: Card(
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
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Card(
                          child: Container(
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
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
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
                          ),
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
              SizedBox(
                width: double.infinity,
                child: Card(
                  child: Container(
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
                          SizedBox(
                            width: double.infinity,
                            child: Text(
                              'escuela@ccaguaviva.com',
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                          ),
                          Text(
                            'Jr. Risso 269 - Lince',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: TextButton.icon(
                  onPressed: () {
                    UrlLauncherProvider().makePhoneCall('+51997590457');
                  },
                  icon: const Icon(Icons.call_rounded),
                  label: const Text('+51 997 590 457'),
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
