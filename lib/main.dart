import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card/counter.dart';
import 'package:flutter_card/entry/card_list_entity.dart';
import 'package:flutter_card/entry/post_entity.dart';
import 'package:flutter_card/http/dio_util.dart';
import 'package:flutter_card/r.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page123'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = Get.put(CounterController());
  List<CardListEntity> cardList = [];

  void getHttp() async {
    cardList = await DioUtil().request<List<CardListEntity>>('/list/card');
  }

  void getPost() async {
    final post = await DioUtil().request<PostEntity>('/error-data/mock');
  }

  @override
  void initState() {
    super.initState();

    getHttp();

    getPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text("${cardList[index].name}"),
                  );
                },
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: cardList.length,
              ),
              InkWell(
                child: const Text('asd'),
                onTap: () {},
              ),
              const Text(
                'You have pushed the button this many times:',
              ),
              Obx(
                () => Text(
                  '${controller.counter.value}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              DecoratedBox(
                decoration: ShapeDecoration(
                  shape: const CircleBorder(
                    side: BorderSide(
                      width: 5,
                      color: Colors.blue,
                    ),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      R.assetsImagesAvatar,
                    ),
                  ),
                ),
                child: const SizedBox(width: 100, height: 100),
              ),
              const DecoratedBox(
                decoration: UnderlineTabIndicator(
                  insets: EdgeInsets.symmetric(horizontal: 5, vertical: -5),
                  borderSide: BorderSide(color: Colors.orange, width: 2),
                ),
                child: Icon(Icons.ac_unit, color: Colors.blue, size: 40),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.add,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({
    super.key,
  });

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CustomNavigationBar(
      selectedColor: const Color(0xff0c18fb),
      strokeColor: const Color(0x300c18fb),
      unSelectedColor: Colors.grey[600],
      backgroundColor: Colors.white,
      borderRadius: const Radius.circular(20.0),
      items: [
        CustomNavigationBarItem(icon: const Icon(Icons.home)),
        CustomNavigationBarItem(icon: const Icon(Icons.shop)),
        CustomNavigationBarItem(icon: const Icon(Icons.access_alarms)),
        CustomNavigationBarItem(icon: const Icon(Icons.search)),
        CustomNavigationBarItem(
          icon: const Icon(Icons.portable_wifi_off_outlined),
        )
      ],
      currentIndex: tabIndex,
      onTap: (index) {
        setState(() {
          tabIndex = index;
        });
      },
      isFloating: true,
    );
  }
}
