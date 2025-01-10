import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

class CustomBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (kDebugMode) {
      log('${bloc.runtimeType} $change');
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    log('Error in ${bloc.runtimeType}: $error');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    if (kDebugMode) {
      log('  ${bloc.runtimeType} $transition');
    }
  }
  // ...existing code...
@override
void onCreate(BlocBase bloc) {
  super.onCreate(bloc);
  if (kDebugMode) {
    log('${bloc.runtimeType} created');
  }
}

@override
void onEvent(Bloc bloc, Object? event) {
  super.onEvent(bloc, event);
  if (kDebugMode) {
    log('${bloc.runtimeType} event: $event');
  }
}

@override
void onClose(BlocBase bloc) {
  super.onClose(bloc);
  if (kDebugMode) {
    log('${bloc.runtimeType} closed');
  }
}
// ...existing code...

}
