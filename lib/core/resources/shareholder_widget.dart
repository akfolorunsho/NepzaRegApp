import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nepza/core/resources/photoBox.dart';

import 'custom_dropdown_form_field.dart';
import 'custom_text_form_field.dart';

class ShareholderWidget extends StatelessWidget {
  ShareholderWidget({super.key});
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
    return _buildForm();
  }

  Widget _buildForm() {
    List<String> meansOfId = ['Passport', 'NIN'];
    return Form(
        child: Column(
      children: [
        _buildPhoto(),
        SizedBox(
          height: 28.h,
        ),
        CustomTextFormField(
          label: 'First Name',
        ),
        SizedBox(
          height: 28.h,
        ),
        CustomTextFormField(
          label: 'Last Name',
        ),
        SizedBox(
          height: 28.h,
        ),
        CustomDropdownFormField(items: countries, labelText: 'Nationality'),
        SizedBox(
          height: 28.h,
        ),
        CustomTextFormField(
          label: 'Email',
          inputType: TextInputType.emailAddress,
        ),
        SizedBox(
          height: 28.h,
        ),
        CustomTextFormField(
          label: 'Mobile Number',
        ),
        SizedBox(
          height: 28.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 90.w),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            CustomTextFormField(
              label: 'Number of Share',
              width: 200.w,
            ),
            CustomDropdownFormField(
              items: meansOfId,
              labelText: 'Type of Share',
              width: 200.w,
            ),
          ]),
        ),
        SizedBox(
          height: 28.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 90.w),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            CustomDropdownFormField(
              items: meansOfId,
              labelText: 'Means of ID',
              width: 200.w,
            ),
            CustomTextFormField(
              label: 'ID Number',
              width: 200.w,
            )
          ]),
        ),
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
        Divider(
          color: Colors.white,
          indent: 92.w,
          endIndent: 92.w,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(Icons.picture_as_pdf),
            const Text(' '),
            TextButton(onPressed: () {}, child: const Text('Select File'))
          ],
        ),
        Divider(
          color: Colors.white,
          indent: 92.w,
          endIndent: 92.w,
        ),
        Padding(
          padding: EdgeInsets.only(right: 95.w, top: 16.h),
          child: Align(
            alignment: Alignment.centerRight,
            child: PhotoBox(
              height: 92.h,
              width: 125.w,
              isSignature: true,
            ),
          ),
        ),
        SizedBox(
          height: 68.h,
        )
      ],
    ));
  }

  Widget _buildPhoto() {
    return Padding(
      padding: EdgeInsets.only(top: 56.h),
      child: PhotoBox(),
    );
  }
}