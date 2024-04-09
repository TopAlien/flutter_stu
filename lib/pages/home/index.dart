import 'package:flutter/material.dart';
import 'package:flutter_card/entry/card_list_entity.dart';
import 'package:flutter_card/http/api.dart';
import 'package:flutter_card/http/dio_util.dart';
import 'package:flutter_card/utils/log.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  List<CardListEntity> list = [];

  void getCardList() async {
    final res = await DioUtil().request<List<CardListEntity>>(API.list_card);

    setState(() {
      list = res;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getCardList();
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("首页"),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("${list[index].name} - ${list[index].fs}"),
              subtitle: Text("${list[index].createTime}"),
            );
          },
          shrinkWrap: true,
          itemCount: list.length,
        ),
      ),
    );
  }
}
