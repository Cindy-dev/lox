// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:lox/data/model/calendar_event.dart';
//
// class CalendarEventEdit extends StatefulWidget {
//   final CalendarEvent? event;
//   const CalendarEventEdit({Key? key, this.event}) : super(key: key);
//
//   @override
//   State<CalendarEventEdit> createState() => _CalendarEventEditState();
// }
//
// class _CalendarEventEditState extends State<CalendarEventEdit> {
//   GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   TextEditingController titleController = TextEditingController();
//   late DateTime fromDate;
//   late DateTime toDate;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     if (widget.event == null) {
//       fromDate = DateTime.now();
//       toDate = DateTime.now().add(Duration(hours: 2));
//     }
//   }
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     titleController;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           leading: IconButton(
//             icon: const Icon(
//               Icons.arrow_back,
//               color: Color(0xff1648CE),
//             ),
//             onPressed: () {},
//           ),
//           actions: [
//             IconButton(
//               icon: const Icon(
//                 Icons.save,
//                 color: Color(0xff1648CE),
//               ),
//               onPressed: () {},
//             ),
//           ],
//         ),
//         body: SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             padding: const EdgeInsets.all(10),
//             child: Form(
//               key: formKey,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   TextFormField(
//                     controller: titleController,
//                     decoration: const InputDecoration(
//                         hintText: 'Add Title', border: UnderlineInputBorder()),
//                     onFieldSubmitted: (_) {},
//                     validator: (title) => title != null && title.isEmpty
//                         ? 'Title cannot be Empty'
//                         : null,
//                   ),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   Text('From'),
//                   Row(children: [
//                     Expanded(child: DateFormat.yMMMEd().format(DateTime()))
//                   ],),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   Text('To')
//                 ],
//               ),
//             )));
//   }
// }
