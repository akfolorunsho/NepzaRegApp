import 'package:flutter/material.dart';

import 'item_model.dart';

class AccordionWidget extends StatefulWidget {
  final List<ItemModel> panels;

  AccordionWidget({required this.panels});

  @override
  _AccordionWidgetState createState() => _AccordionWidgetState();
}

class _AccordionWidgetState extends State<AccordionWidget> {
  int? _currentPanelIndex;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList(
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            _currentPanelIndex = isExpanded ? null : index;
          });
        },
        children: widget.panels
            .asMap()
            .map<int, ExpansionPanel>((index, ItemModel item) {
              return MapEntry(
                index,
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return ListTile(
                      title: Text(item.header),
                    );
                  },
                  body: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: item.contentBuilder(),
                  ),
                  isExpanded: _currentPanelIndex == index,
                ),
              );
            })
            .values
            .toList(),
      ),
    );
  }
}
