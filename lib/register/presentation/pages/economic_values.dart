import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nepza/core/fonts/big_title.dart';
import 'package:nepza/core/fonts/sub_title1.dart';
import 'package:nepza/core/resources/button.dart';
import 'package:nepza/core/resources/colours.dart';
import 'package:nepza/core/resources/econim_value_widget.dart';
import 'package:nepza/core/resources/item_model.dart';

import '../../../core/fonts/small_title.dart';
import '../../../core/resources/custom_date_picker.dart';
import '../../../core/resources/logo.dart';
import '../../../core/resources/media.dart';

class EconomicValues extends StatefulWidget {
  const EconomicValues({super.key});

  @override
  State<EconomicValues> createState() => _EconomicValuesState();
}

class _EconomicValuesState extends State<EconomicValues> {
  bool isChecked = false;
  GlobalKey key = GlobalKey<FormFieldState>();
  List<ItemModel> economicValues = [
    ItemModel(content: EconomicValueWidget(), isExpanded: true),
    ItemModel(content: EconomicValueWidget(), isExpanded: false),
    ItemModel(content: EconomicValueWidget(), isExpanded: false),
    ItemModel(content: EconomicValueWidget(), isExpanded: false),
    ItemModel(content: EconomicValueWidget(), isExpanded: false),
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
        padding: EdgeInsets.all(28.h),
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
                      economicValues
                          .add(ItemModel(content: EconomicValueWidget()));
                    });
                  },
                  child: const SubTitle1(
                    txt: '+   Add More Years',
                  )),
            ),
            SizedBox(
              height: 72.h,
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
          const SmallTitle(txt: 'Fill 5 Years Economic Values'),
          SizedBox(
            height: 72.h,
          ),
          const CustomDatePicker(
            label: 'Target Date of Commencement',
          ),
          ExpansionPanelList(
            dividerColor: Colours.neutralTextColor,
            elevation: 0,
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                economicValues[index].isExpanded = isExpanded;
              });
            },
            children: economicValues.map<ExpansionPanel>((shareholder) {
              return ExpansionPanel(
                backgroundColor: Colours.secondaryColor,
                headerBuilder: (context, isExpanded) {
                  return SubTitle1(
                    txt: 'Year ${economicValues.indexOf(shareholder) + 1}',
                  );
                },
                body: Column(
                  children: [
                    shareholder.content,
                    economicValues.indexOf(shareholder) <= 4
                        ? const SizedBox()
                        : IconButton(
                            onPressed: () {
                              setState(() {});
                            },
                            icon: const Icon(Icons.delete),
                          ),
                  ],
                ),
                isExpanded: shareholder.isExpanded,
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
