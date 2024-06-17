import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nepza/core/fonts/big_title.dart';
import 'package:nepza/core/fonts/small_title.dart';
import 'package:nepza/core/fonts/sub_title1.dart';
import 'package:nepza/core/resources/button.dart';
import 'package:nepza/core/resources/colours.dart';
import 'package:nepza/core/resources/item_model.dart';

import '../../../core/resources/director_widget.dart';
import '../../../core/resources/logo.dart';
import '../../../core/resources/media.dart';

class ShareholdersDetails extends StatefulWidget {
  const ShareholdersDetails({super.key});

  @override
  State<ShareholdersDetails> createState() => _ShareholdersDetailsState();
}

class _ShareholdersDetailsState extends State<ShareholdersDetails> {
  bool isChecked = false;
  GlobalKey key = GlobalKey<FormFieldState>();
  List<ItemModel> directors = [
    ItemModel(content: const DirectorWidget(), isExpanded: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUi(),
    );
  }

  Widget _buildUi() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: _buildInfoCol(),
              ),
              Expanded(
                flex: 2,
                child: _buildFormColumn(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCol() {
    return Padding(
      padding: EdgeInsets.all(50.sp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _logo(),
          SizedBox(
            height: 72.sp,
          ),
          _title(),
          SizedBox(
            height: 72.sp,
          ),
          _storySet()
        ],
      ),
    );
  }

  Widget _logo() {
    return const Logo();
  }

  Widget _title() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BigTitle(txt: 'Register Your Business with Ease'),
        Container(
          width: 247.w,
          height: 11.h,
          color: Colors.green[900],
        )
      ],
    );
  }

  Widget _storySet() {
    return SvgPicture.asset(
      Media.homeStory,
      width: 530.47.w,
      height: 497.86.h,
    );
  }

  Widget _buildFormColumn() {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colours.secondaryColor,
      child: Padding(
        padding: EdgeInsets.all(24.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildTitleAndForm(),
            Align(
              heightFactor: 2.h,
              alignment: Alignment.centerLeft,
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      directors.add(ItemModel(content: const DirectorWidget()));
                    });
                  },
                  child: const SubTitle1(
                    txt: '+   Add a Director',
                  )),
            ),
            SizedBox(
              height: 72.h,
            ),
            _buildButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildTitleAndForm() {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colours.secondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SmallTitle(txt: 'Fill Director(s) Details'),
          SizedBox(
            height: 72.h,
          ),
          ExpansionPanelList(
            dividerColor: Colours.neutralTextColor,
            elevation: 0,
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                directors[index].isExpanded = isExpanded;
              });
            },
            children: directors.map<ExpansionPanel>((director) {
              return ExpansionPanel(
                backgroundColor: Colours.secondaryColor,
                headerBuilder: (context, isExpanded) {
                  return SubTitle1(
                    txt: '${directors.indexOf(director) + 1}. Director',
                  );
                },
                body: Column(
                  children: [
                    director.content,
                    directors.indexOf(director) == 0
                        ? const SizedBox()
                        : IconButton(
                            onPressed: () {
                              setState(() {});
                            },
                            icon: const Icon(Icons.delete),
                          ),
                  ],
                ),
                isExpanded: director.isExpanded,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButton(
          text: 'Back',
          isElevated: false,
        ),
        SizedBox(
          width: 28.w,
        ),
        CustomButton(
          text: 'Next',
        ),
      ],
    );
  }
}
