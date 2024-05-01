import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class TimeButtonController extends GetxController {
  final RxInt _selectedTimeIndex = 0.obs;
  void setSelectedIndex(int index) {
    _selectedTimeIndex.value = index;
    print('SET Selected Index: $_selectedTimeIndex');
  }
  RxInt get selectedIndex => _selectedTimeIndex;
  List<String> timeList = [
    //nanti dinamis fetch dari db
    '08:00 - 08:10',
    '08:10 - 08:20',
    '08:20 - 08:30',
    '08:30 - 08:40',
    '08:40 - 08:50',
    '08:50 - 09:00',
    '09:00 - 09:10',
    '09:10 - 09:20',
    '09:20 - 09:30',
  ];
  bool isButtonSelected(int index) {
    //print('Selected Index from boolean: $index');
    return _selectedTimeIndex.value == index;
  }
}
