import 'package:get/get.dart';

class AddressController extends GetxController {
  // Track the index of the selected address
  var selectedAddressIndex = 0.obs;

  // Function to change the selected address
  void selectAddress(int index) {
    selectedAddressIndex.value = index;
  }
}
