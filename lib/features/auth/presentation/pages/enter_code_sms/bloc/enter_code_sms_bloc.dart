import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'enter_code_sms_event.dart';
part 'enter_code_sms_state.dart';

class EnterCodeSmsBloc extends Bloc<EnterCodeSmsEvent, EnterCodeSmsState> {
  EnterCodeSmsBloc() : super(EnterCodeSmsInitial()) {
    on<EnterCodeSmsEvent>((event, emit) {

    });
  }
}
