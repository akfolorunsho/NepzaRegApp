import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nepza/core/fonts/big_title.dart';
import 'package:nepza/core/fonts/body_txt.dart';
import 'package:nepza/core/fonts/small_title.dart';
import 'package:nepza/core/resources/button.dart';
import 'package:nepza/core/resources/colours.dart';
import 'package:nepza/core/resources/custom_dropdown_form_field.dart';
import 'package:nepza/core/resources/custom_text_form_field.dart';

import '../../../core/resources/logo.dart';
import '../../../core/resources/media.dart';

class CompanyInfo extends StatefulWidget {
  const CompanyInfo({super.key});

  @override
  State<CompanyInfo> createState() => _CompanyInfo();
}

class _CompanyInfo extends State<CompanyInfo> {
  bool isChecked = false;
  GlobalKey key = GlobalKey<FormFieldState>();
  List<String> activities = [
    'Manufacturing',
    'Warehousing',
    'Banking & Financial Services',
    'Stock Exchange',
    'Insurance & Re-Insurance',
    'International Commercial Arbitration Services',
    'Medical & Pharmaceutical',
    'Development and Operation of Ports',
    'Oil & Gas',
    'Petrochemical',
    'ICT'
  ];
  List<String> regType = [
    'Free Zone Management Company',
    'Free Zone Enterprise'
  ];

  List<String> regZones = [
    'Abuja Technology Village FZ',
    'AHL Energy FTZ',
    'ALSCON EPZ',
    'Badagry Creek Integrated Park',
    'Banki Border Free Zone',
    'Bonny Kingdom FTZ',
    'Brass LNG FZ',
    'Bundu Free Zone',
    'Calabar Free Trade Zone',
    'Celplas Industries Free Zone',
    'Centenary Economic City',
    ' Dangote Industry (FTZ)',
    'Deep Blue FZ',
    'Delta State Special Economic Zones',
    'Eko Atlantic FTZ',
    'Ekiti Knowledge FZ',
    'Enugu Industrial Park FTZ',
    'Enyimba Economic City',
    'Flour Mill Nigeria FTZ',
    'GC Export FZ',
    'Green Economic Zone',
    'Hydropolis Free Zone',
    'Ibom Industrial FZ',
    'Ibom Science & Technological Park',
    'Indorama Free Zone',
    'Industrial Platform Remo (IPR) Free Zone',
    'Kano FTZ',
    'Koko Beach & Wellness Value Chain Resort FTZ',
    'Kwara FZ',
    'Ladol FTZ',
    'Lagos FTZ',
    'Lekki FTZ',
    'Maigatari Boarder FTZ',
    'Maritime  Africa Economic City',
    'NASCO Free Trade Zone',
    'Newrest Airline Services & Logistics FTZ',
    'Nigeria Aviation Handling Company (NACHO FTZ)',
    'Nigeria Navy Industrial Park (Ogogoro)',
    'Ogidigben Gas Revolution & Industrial Park (GRIP)',
    'Ogun Guangdong FTZ',
    'Olokola FTZ (OKFTZC)',
    'Oluyole FZ',
    'Omoluabi Free Trade Zone',
    'Ondo Industrial City',
    'Premier Industrial FZ',
    'Quits Aviation Services (FTZ)',
    'Sebore Farms EPZ',
    'Snake Island Integrated FZ',
    'Specialize Ogun Railway Industrial FTZ',
    'Tinapa Free trade Zone',
    'Tomaro Industrial Park'
  ];
  List<String> countries = [
    'Afghanistan',
    'Albania',
    'Algeria',
    'Andorra',
    'Angola',
    'Antigua and Barbuda',
    'Argentina',
    'Armenia',
    'Australia',
    'Austria',
    'Azerbaijan',
    'Bahamas',
    'Bahrain',
    'Bangladesh',
    'Barbados',
    'Belarus',
    'Belgium',
    'Belize',
    'Benin',
    'Bhutan',
    'Bolivia',
    'Bosnia and Herzegovina',
    'Botswana',
    'Brazil',
    'Brunei',
    'Bulgaria',
    'Burkina Faso',
    'Burundi',
    'Cabo Verde',
    'Cambodia',
    'Cameroon',
    'Canada',
    'Central African Republic',
    'Chad',
    'Chile',
    'China',
    'Colombia',
    'Comoros',
    'Congo, Democratic Republic of the',
    'Congo, Republic of the',
    'Costa Rica',
    'Croatia',
    'Cuba',
    'Cyprus',
    'Czech Republic',
    'Denmark',
    'Djibouti',
    'Dominica',
    'Dominican Republic',
    'East Timor (Timor-Leste)',
    'Ecuador',
    'Egypt',
    'El Salvador',
    'Equatorial Guinea',
    'Eritrea',
    'Estonia',
    'Eswatini',
    'Ethiopia',
    'Fiji',
    'Finland',
    'France',
    'Gabon',
    'Gambia',
    'Georgia',
    'Germany',
    'Ghana',
    'Greece',
    'Grenada',
    'Guatemala',
    'Guinea',
    'Guinea-Bissau',
    'Guyana',
    'Haiti',
    'Honduras',
    'Hungary',
    'Iceland',
    'India',
    'Indonesia',
    'Iran',
    'Iraq',
    'Ireland',
    'Israel',
    'Italy',
    'Ivory Coast',
    'Jamaica',
    'Japan',
    'Jordan',
    'Kazakhstan',
    'Kenya',
    'Kiribati',
    'Korea, North',
    'Korea, South',
    'Kosovo',
    'Kuwait',
    'Kyrgyzstan',
    'Laos',
    'Latvia',
    'Lebanon',
    'Lesotho',
    'Liberia',
    'Libya',
    'Liechtenstein',
    'Lithuania',
    'Luxembourg',
    'Madagascar',
    'Malawi',
    'Malaysia',
    'Maldives',
    'Mali',
    'Malta',
    'Marshall Islands',
    'Mauritania',
    'Mauritius',
    'Mexico',
    'Micronesia',
    'Moldova',
    'Monaco',
    'Mongolia',
    'Montenegro',
    'Morocco',
    'Mozambique',
    'Myanmar (Burma)',
    'Namibia',
    'Nauru',
    'Nepal',
    'Netherlands',
    'New Zealand',
    'Nicaragua',
    'Niger',
    'Nigeria',
    'North Macedonia',
    'Norway',
    'Oman',
    'Pakistan',
    'Palau',
    'Panama',
    'Papua New Guinea',
    'Paraguay',
    'Peru',
    'Philippines',
    'Poland',
    'Portugal',
    'Qatar',
    'Romania',
    'Russia',
    'Rwanda',
    'Saint Kitts and Nevis',
    'Saint Lucia',
    'Saint Vincent and the Grenadines',
    'Samoa',
    'San Marino',
    'Sao Tome and Principe',
    'Saudi Arabia',
    'Senegal',
    'Serbia',
    'Seychelles',
    'Sierra Leone',
    'Singapore',
    'Slovakia',
    'Slovenia',
    'Solomon Islands',
    'Somalia',
    'South Africa',
    'South Sudan',
    'Spain',
    'Sri Lanka',
    'Sudan',
    'Suriname',
    'Sweden',
    'Switzerland',
    'Syria',
    'Taiwan',
    'Tajikistan',
    'Tanzania',
    'Thailand',
    'Togo',
    'Tonga',
    'Trinidad and Tobago',
    'Tunisia',
    'Turkey',
    'Turkmenistan',
    'Tuvalu',
    'Uganda',
    'Ukraine',
    'United Arab Emirates',
    'United Kingdom',
    'United States',
    'Uruguay',
    'Uzbekistan',
    'Vanuatu',
    'Vatican City',
    'Venezuela',
    'Vietnam',
    'Yemen',
    'Zambia',
    'Zimbabwe'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUi(),
    );
  }

  Widget _buildUi() {
    return SingleChildScrollView(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildInfoCol(),
          _buildFormColumn(),
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

  Widget _buildInfoCol() {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.all(50.sp),
        child: Column(
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
      ),
    );
  }

  Widget _buildFormColumn() {
    return Expanded(
      flex: 2,
      child: Container(
          width: MediaQuery.sizeOf(context).width,
          color: Colours.secondaryColor,
          child: Padding(
            padding: EdgeInsets.all(24.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTitleAndForm(),
                _buildButton(),
              ],
            ),
          )),
    );
  }

  Widget _buildTitleAndForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SmallTitle(txt: 'Enterprise Information'),
        _buildForm(),
      ],
    );
  }

  Widget _buildForm() {
    return Form(
        child: Column(
      children: [
        SizedBox(
          height: 28.h,
        ),
        const BodyText(
          txt: 'In accordance with NEPZA Act CAP N107 LFN 2004:',
          fontWeight: FontWeight.w600,
        ),
        SizedBox(
          height: 28.h,
        ),
        CustomTextFormField(
          label: 'Enter the objects of the company',
          minLines: 5,
          maxLines: 50,
          inputType: TextInputType.multiline,
        ),
        SizedBox(
          height: 28.h,
        ),
        CustomDropdownFormField(
            items: activities, labelText: 'Select proposed activity'),
        SizedBox(
          height: 28.h,
        ),
        CustomDropdownFormField(items: regType, labelText: 'Registration Type'),
        SizedBox(
          height: 28.h,
        ),
        CustomDropdownFormField(items: regZones, labelText: 'Zone of Interest'),
        SizedBox(
          height: 28.h,
        ),
        CustomTextFormField(
          label: 'Current Address',
          minLines: 3,
          maxLines: 3,
          inputType: TextInputType.streetAddress,
        ),
        SizedBox(
          height: 28.h,
        ),
        CustomDropdownFormField(
            items: countries, labelText: 'Promoter(s) Country of Origin'),
        SizedBox(
          height: 28.h,
        ),
        SizedBox(
          height: 28.h,
        ),
      ],
    ));
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
