import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nepza/core/fonts/body_txt.dart';
import 'package:nepza/core/fonts/small_title.dart';
import 'package:nepza/core/fonts/sub_title2.dart';
import 'package:nepza/core/resources/button.dart';
import 'package:nepza/core/resources/custom_text_form_field.dart';

import '../../../core/fonts/big_title.dart';
import '../../../core/fonts/sub_title1.dart';
import '../../../core/resources/colours.dart';
import '../../../core/resources/logo.dart';

class SearchCompany extends StatefulWidget {
  const SearchCompany({super.key});

  @override
  State<SearchCompany> createState() => _CompanySearchState();
}

class _CompanySearchState extends State<SearchCompany> {
  bool isSearch = false;
  String email = 'akfolorunsho@yahoo.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUi(),
    );
  }

  Widget _buildUi() {
    return SingleChildScrollView(
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(left: 48.w),
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height,
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
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              color: Colours.secondaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildTitle(),
                  _buildTokenOrSearchField(),
                  _buildButtonType(),
                  _buildInformation(),
                  _buildNextButton()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _logo() {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: const Logo(),
    );
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

  Widget _buildTitle() {
    return SmallTitle(
        txt: isSearch == false
            ? 'Token Sent to: $email'
            : 'Search for Company Name');
  }

  Widget _buildTokenOrSearchField() {
    return isSearch == false ? _buildToken() : _buildSearchField();
  }

  Widget _buildButtonType() {
    return isSearch == false ? _buildTwoButtons() : const SizedBox();
  }

  Widget _buildInformation() {
    return isSearch == false
        ? const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SubTitle2(txt: 'If you did not receive your token :'),
              BodyText(txt: '1. Please confirm that your email is correct'),
              BodyText(txt: '2. Or check your spam/junk mail folder'),
            ],
          )
        : const SizedBox();
  }

  Widget _buildToken() {
    return Padding(
      padding:
          EdgeInsets.only(top: 72.h, bottom: 48.h, right: 100.w, left: 100.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _tokenBox(),
          _tokenBox(),
          _tokenBox(),
          _tokenBox(),
          _tokenBox(),
          _tokenBox(),
        ],
      ),
    );
  }

  Widget _buildNextButton() {
    return isSearch == false
        ? const SizedBox()
        : Padding(
            padding: EdgeInsets.only(left: 60.w, right: 60.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  text: 'Back',
                  isElevated: false,
                ),
                CustomButton(text: 'Next')
              ],
            ),
          );
  }

  Widget _buildSearchField() {
    return Column(
      children: [
        SizedBox(
          height: 78.h,
        ),
        CustomTextFormField(
          label: 'Enter Company Name e.g. Vibes Vantage',
        ),
        SizedBox(
          height: 48.h,
        ),
        CustomButton(
          text: 'Search',
          isSmallButton: false,
        ),
        SizedBox(
          height: 48.h,
        ),
        const SubTitle1(txt: 'Name Available Click Next to Pick it'),
        SizedBox(
          height: 300.h,
        ),
      ],
    );
  }

  Widget _buildTwoButtons() {
    return Padding(
      padding: EdgeInsets.only(top: 28.h, bottom: 28.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            text: 'Validate Token',
          ),
          SizedBox(
            width: 28.w,
          ),
          CustomButton(
            text: 'Resend Token',
            isElevated: false,
          )
        ],
      ),
    );
  }

  Widget _tokenBox() {
    return SizedBox(
      width: 68.w,
      height: 68.w,
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: const InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(borderSide: BorderSide())),
        style: Theme.of(context).textTheme.titleLarge,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }
}
