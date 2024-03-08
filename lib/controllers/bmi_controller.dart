import 'package:get/get.dart';

class BMIController extends GetxController {
  RxString gender = ''.obs;

  RxInt weight = 10.obs;
  RxInt age = 10.obs;

  RxDouble height = 170.0.obs;

  // method to change gender
  void changeGender(String selectedGender) {
    gender.value = selectedGender;
  }

  // method to increment in weight
  void incrementWeight() {
    weight.value++;
  }

  // method to decrement in weight
  void decrementWeight() {
    if (weight.value > 0) {
      weight.value--;
    }
  }

  // method to increment in age
  void incrementAge() {
    age.value++;
  }

  // method to decrement in age
  void decrementAge() {
    if (age.value > 0) {
      age.value--;
    }
  }
}