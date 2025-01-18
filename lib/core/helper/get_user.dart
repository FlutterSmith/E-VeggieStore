import 'dart:convert';

import 'package:fruits_hub/core/services/shared_preferences_singleton.dart';
import 'package:fruits_hub/features/auth/data/models/user_model.dart';
import 'package:fruits_hub/features/auth/domain/entites/user_entity.dart';

import '../../constants.dart';

UserEntity getUser() 
{
  var jsonString = Prefs.getString(kUserData);
 var  userEntity = UserModel.fromJson(jsonDecode(jsonString));

  return userEntity;
}