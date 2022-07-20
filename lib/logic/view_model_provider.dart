import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lox/logic/view_model/calendar_vm.dart';

final calendarVM = ChangeNotifierProvider((_)=>CalendarVM());