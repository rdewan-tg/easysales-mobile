import 'package:common/exception/failure.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:auth/features/forgot_password/application/iforgot_password_service.dart';
import 'package:auth/features/forgot_password/data/dto/request/forgot_password_request.dart';
import 'package:auth/features/forgot_password/data/repository/forgot_password_repository.dart';
import 'package:auth/features/forgot_password/data/repository/iforgot_password_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final forgotPasswordServiceProvider =
    Provider.autoDispose<IForgotPasswordService>((ref) {
      final forgotPasswordRepository = ref.watch(
        forgotPasswordRepositoryProvider,
      );

      return ForgotPasswordService(forgotPasswordRepository);
    });

final class ForgotPasswordService implements IForgotPasswordService {
  final IForgotPasswordRepository _forgotPasswordRepository;

  ForgotPasswordService(this._forgotPasswordRepository);

  @override
  Future<Result<bool, Failure>> forgotPassword(
    ForgotPasswordRequest data,
  ) async {
    try {
      final response = await _forgotPasswordRepository.forgotPassword(data);

      return Success(response.data.emailSent);
    } on Failure catch (e) {
      return Error(e);
    } catch (e) {
      return Error(Failure(message: e.toString()));
    }
  }
}
