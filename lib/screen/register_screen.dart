// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:mobiletest/data/constants.dart';
import 'package:mobiletest/widget/custom_text.dart';
import 'package:mobiletest/widget/custom_text_field_form.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Positioned(
            //     right: 0,
            //     child: Image.asset(
            //       Images.BACKGROUND,
            //       scale: 4.5,
            //     )),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: 'Hai, ',
                        style: TextStyle(
                            color: CustomColors.BASE_COLOR,
                            fontSize: 28,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: 'Selamat Datang',
                        style: TextStyle(
                            color: CustomColors.BASE_COLOR,
                            fontSize: 28,
                            fontWeight: FontWeight.bold)),
                  ])),
                  const Text('Silahkan login untuk melanjutkan',
                      style: TextStyle(
                          color: CustomColors.BASE_COLOR,
                          fontSize: 12,
                          fontWeight: FontWeight.w600)),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      'assets/images/login_logo.png',
                      scale: 3.5,
                    ),
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Nama Depan',
                              color: CustomColors.BASE_COLOR,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Material(
                              elevation: 8,
                              shadowColor: Colors.white38,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              child: CustomTextFieldForm(
                                keyboardType: TextInputType.text,
                                // color: ,
                                isDense: false,
                                isAll: true,
                                hintText: 'Masukkan Nama depan',
                                // controller: _Nama,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Nama tidak boleh kosong';
                                  }
                                  return '';
                                },
                                onSaved: (value) {
                                  // _payload.fullName = value;
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Nama Belakang',
                              color: CustomColors.BASE_COLOR,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Material(
                              elevation: 8,
                              shadowColor: Colors.white38,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              child: CustomTextFieldForm(
                                keyboardType: TextInputType.text,
                                // color: ,
                                isDense: false,
                                isAll: true,
                                hintText: 'Masukkan Nama Belakang ',
                                // controller: _email,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Nama tidak boleh kosong';
                                  }
                                  return '';
                                },
                                onSaved: (value) {
                                  // _payload.fullName = value;
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  CustomText(
                    text: 'No. KTP',
                    color: CustomColors.BASE_COLOR,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Material(
                    elevation: 8,
                    shadowColor: Colors.white38,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: CustomTextFieldForm(
                      keyboardType: TextInputType.text,
                      // color: AppUtil().parseHexColor(CustomColors.MORTAR),
                      isDense: false,
                      isObscure: true,
                      // isAll: true,
                      hintText: 'Masukkan No. KTP anda',

                      // controller: _password,

                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'No. KTP harus di isi!';
                        }
                        return '';
                      },
                      onSaved: (value) {
                        // _payload.fullName = value;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  CustomText(
                    text: 'Email',
                    color: CustomColors.BASE_COLOR,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Material(
                    elevation: 8,
                    shadowColor: Colors.white38,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: CustomTextFieldForm(
                      keyboardType: TextInputType.text,
                      // color: AppUtil().parseHexColor(CustomColors.MORTAR),
                      isDense: false,
                      isObscure: true,
                      // isAll: true,
                      hintText: 'Masukkan Email anda',

                      // controller: _password,

                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Email harus di isi!';
                        }
                        return '';
                      },
                      onSaved: (value) {
                        // _payload.fullName = value;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  CustomText(
                    text: 'No. Telpon',
                    color: CustomColors.BASE_COLOR,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Material(
                    elevation: 8,
                    shadowColor: Colors.white38,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: CustomTextFieldForm(
                      keyboardType: TextInputType.text,
                      // color: AppUtil().parseHexColor(CustomColors.MORTAR),
                      isDense: false,
                      isObscure: true,
                      // isAll: true,
                      hintText: 'Masukkan No. Telpon anda',

                      // controller: _password,

                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'No. Telpon harus di isi!';
                        }
                        return '';
                      },
                      onSaved: (value) {
                        // _payload.fullName = value;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  CustomText(
                    text: 'Password',
                    color: CustomColors.BASE_COLOR,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Material(
                    elevation: 8,
                    shadowColor: Colors.white38,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: CustomTextFieldForm(
                      keyboardType: TextInputType.text,
                      // color: AppUtil().parseHexColor(CustomColors.MORTAR),
                      isDense: false,
                      isObscure: true,
                      // isAll: true,
                      hintText: 'Masukkan Password anda',

                      // controller: _password,

                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'No. Telpon harus di isi!';
                        }
                        return '';
                      },
                      onSaved: (value) {
                        // _payload.fullName = value;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  CustomText(
                    text: 'Konfirmasi Password',
                    color: CustomColors.BASE_COLOR,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Material(
                    elevation: 8,
                    shadowColor: Colors.white38,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: CustomTextFieldForm(
                      keyboardType: TextInputType.text,
                      // color: AppUtil().parseHexColor(CustomColors.MORTAR),
                      isDense: false,
                      isObscure: true,
                      // isAll: true,
                      hintText: 'Masukkan Password anda',

                      // controller: _password,

                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'No. Telpon harus di isi!';
                        }
                        return '';
                      },
                      onSaved: (value) {
                        // _payload.fullName = value;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    // margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.only(right: 12),
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xff002060)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text('Register',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.7,
                        ),
                        const Icon(Icons.arrow_forward, color: Colors.white)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Center(
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Sudah punya akun ? ',
                          style: TextStyle(
                              color: Colors.grey.withOpacity(0.6),
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                      const TextSpan(
                          text: 'Login Sekarang',
                          style: TextStyle(
                              color: CustomColors.BASE_COLOR,
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                    ])),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.copyright,
                        size: 15,
                        color: Color(0xffBEBEBE),
                      ),
                      Text(
                        '  SILK. all right reserved.',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xffBEBEBE)),
                      ),
                    ],
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
