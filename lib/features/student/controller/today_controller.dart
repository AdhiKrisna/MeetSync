import 'package:get/get.dart';

class TodayController extends GetxController{
  final RxBool _isCheckMeeting = false.obs;
  RxBool get isCheckMeeting => _isCheckMeeting;
  void setIsMeeting(){
    _isCheckMeeting.value = !_isCheckMeeting.value;
  }
}