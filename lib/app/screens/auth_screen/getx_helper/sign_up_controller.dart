
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/enums/user_role.dart';
import '../../../models/user_model/user_model.dart';
import '../../../routes/route_paths.dart';
import '../../../services/firebase.dart';

class SignUpController extends GetxController {

  TextEditingController emailController = TextEditingController();
  TextEditingController lNameController = TextEditingController();
  TextEditingController fNameController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController userZipController = TextEditingController();
  TextEditingController userStateController = TextEditingController();
  TextEditingController userCityController = TextEditingController();
  TextEditingController socialSecurityController = TextEditingController();


  ///Business Text Field
  TextEditingController businessAddressController = TextEditingController();
  TextEditingController businessStateController = TextEditingController();
  TextEditingController businessCityController = TextEditingController();
  TextEditingController businessZIPController = TextEditingController();
  TextEditingController businessEINController = TextEditingController();
  TextEditingController businessNameController = TextEditingController();
  TextEditingController businessEmailController = TextEditingController();


  ///Checkbox
  var checkbox1 = false.obs;
  var checkbox2 = false.obs;
  var checkbox3 = false.obs;


  late UserRole userRole;

  @override
  void onInit(){
    UserRole data = Get.arguments;
    if(data == UserRole.individualRole){
      userRole = UserRole.individualRole;
    }else{
      userRole = UserRole.businessRole;
    }
    super.onInit();
  }

  Future<void> handleSignUp() async {
    try {
      // Response res = await ApiClient.to.signUp(
      //     UserModel(
      //         uid: '',
      //         firstName: fNameController.text,
      //         lastName: lNameController.text,
      //         password: passwordController.text,
      //         photoId: '',
      //         email: emailController.text,
      //         phoneNumber: phoneController.text
      //     )
      // );
      //
      // var data = res.body['data'];
      //
      // if (res.statusCode == 200) {
      //   log(res.body.toString());
      //   Get.offAllNamed(RoutePaths.homeScreen);
      // } else {
      //   Get.snackbar(
      //     'Auth',
      //     'Failed to login!!',
      //     borderRadius: 15,
      //     snackPosition: SnackPosition.BOTTOM,
      //     colorText: Colors.white,
      //     backgroundColor: const Color(0xff041c50),
      //     icon: const Icon(Icons.person),
      //     margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      //   );
      // }

      if(userRole == UserRole.individualRole){
        if(await FirebaseFireStore.to.handleEmailSignUp(
            UserModel(
                uid: '',
                photoId: '',
                firstName: fNameController.text,
                lastName: lNameController.text,
                cashboxAccount: CashBoxAccountModel(
                    cashboxEmail: emailController.text,
                    cashboxPassword: confirmPasswordController.text,
                    cashboxPhoneNumber: phoneController.text
                ),
                dob: dobController.text,
                userAddress: AddressModel(
                  userAddress: addressController.text,
                  userCity: userCityController.text,
                  userState: userStateController.text,
                  userZIPCode: userZipController.text,
                ),
                socialSecurityNumber: socialSecurityController.text,
                userRole: userRole
            )
        )){
          Get.offAllNamed(RoutePaths.homeScreen);
        }
      }else{
        if(await FirebaseFireStore.to.handleEmailSignUp(
            UserModel(
                uid: '',
                photoId: '',
                firstName: fNameController.text,
                lastName: lNameController.text,
                cashboxAccount: CashBoxAccountModel(
                    cashboxEmail: emailController.text,
                    cashboxPassword: confirmPasswordController.text,
                    cashboxPhoneNumber: phoneController.text
                ),
                dob: dobController.text,
                userAddress: AddressModel(
                  userAddress: addressController.text,
                  userCity: userCityController.text,
                  userState: userStateController.text,
                  userZIPCode: userZipController.text,
                ),
                businessDetails: BusinessDetailsModel(
                  businessAddress: businessAddressController.text,
                  businessCity: businessCityController.text,
                  businessEIN: businessEINController.text,
                  businessEmail: businessEmailController.text,
                  businessName: businessNameController.text,
                  businessState: businessStateController.text,
                  businessZIPCode: businessZIPController.text,
                ),
                socialSecurityNumber: socialSecurityController.text,
                userRole: userRole
            )
        )){
          Get.offAllNamed(RoutePaths.homeScreen);
        }
      }

    } catch (err) {
      Get.snackbar(
        'Auth',
        '$err',
        borderRadius: 15,
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.white,
        backgroundColor: const Color(0xff041c50),
        icon: const Icon(Icons.person),
      );
    }
  }

  bool validateField() {
    if(GetUtils.isEmail(emailController.text)){
      if(passwordController.text.length > 6){
        if(passwordController.text == confirmPasswordController.text){
          return true;
        }else{
          Get.snackbar(
            'Auth',
            'Password and Confirm password are not matching',
            borderRadius: 15,
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.white,
            colorText: const Color(0xff041c50),
            icon: const Icon(Icons.person),
          );
          return false;
        }
      }else{
        Get.snackbar(
          'Auth',
          'Please enter a strong password',
          borderRadius: 15,
          margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.white,
          colorText: const Color(0xff041c50),
          icon: const Icon(Icons.person),
        );
        return false;
      }
    }else{
      Get.snackbar(
        'Auth',
        'Please enter a valid email address',
        borderRadius: 15,
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.white,
        colorText: const Color(0xff041c50),
        icon: const Icon(Icons.person),
      );
      return false;
    }
  }

  toggleCheckBox1 () {
    checkbox1.value = !checkbox1.value;
  }
  toggleCheckBox2 () {
    checkbox2.value = !checkbox2.value;
  }
  toggleCheckBox3 () {
    checkbox3.value = !checkbox3.value;
  }
}