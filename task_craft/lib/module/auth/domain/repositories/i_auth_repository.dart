import 'package:task_craft/core/schema.graphql.dart';
import 'package:task_craft/module/auth/data/services/remote/auth_schema.graphql.dart';

abstract class IAuthRepository {
  Future<Mutation$CreateDeviceUuid$createDeviceUuid?> createDeviceUuid({
    required Input$CreateDeviceUuidInput deviceInfo,
  });

  Future<Mutation$RefreshToken$refreshToken?> refreshToken({
    required Input$RefreshTokenInput refreshTokenInput,
  });

  Future<Mutation$RequestOtp$reqOtp?> requestOtp({
    required Input$RequestOtpInput requestOtpInput,
  });
}
