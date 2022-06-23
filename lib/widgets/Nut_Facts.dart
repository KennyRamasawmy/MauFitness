import 'package:flutter/material.dart';

class factsList extends StatelessWidget {
  final List<String> facts;
  final List<String> facts2;
  final List<String> facts3;
  final List<String> facts4;
  final double height;
  final double width;

  final ScrollController _scrollController = ScrollController(
    keepScrollOffset: true,
  );

  factsList({
    @required this.facts,
    @required this.facts2,
    @required this.facts3,
    @required this.facts4,
    this.height = 620.0,
    this.width = 300.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(bottom: 1.0),
      child: Scrollbar(
        isAlwaysShown: true,
        controller: _scrollController,
        child: ListView.builder(
          controller: _scrollController,
          itemBuilder: (ctx, index) => Card(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: 1,
                  ),
                  DataTable(
                    columns: [
                      DataColumn(
                          label: Text(
                        facts3[index],
                        style: const TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 16,
                        ),
                      )),
                      DataColumn(
                          label: Text(
                        facts4[index],
                        style: const TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 16,
                        ),
                      )),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text(
                          facts[index],
                          style: const TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 16,
                          ),
                        )),
                        DataCell(Text(
                          facts2[index],
                          style: const TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 16,
                          ),
                        )),
                      ]),
                    ],
                  ),
                ]),
            elevation: 10.0,
          ),
          itemCount: facts.length,
        ),
      ),
    );
  }
}
