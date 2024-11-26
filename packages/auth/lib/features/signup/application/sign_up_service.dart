
import 'package:common/exception/failure.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:auth/features/signup/application/isign_up_service.dart';
import 'package:auth/features/signup/data/dto/request/sign_up_request.dart';
import 'package:auth/features/signup/data/dto/response/sign_up_response.dart';
import 'package:auth/features/signup/data/repository/isign_up_repository.dart';
import 'package:auth/features/signup/data/repository/sign_up_repository.dart';
import 'package:auth/features/signup/domain/mapper/isign_up_model_mapper.dart';
import 'package:auth/features/signup/domain/model/sign_up_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final signUpServiceProvider = Provider.autoDispose<ISignUpService>((ref) {
  final signUpRepository = ref.watch(signUpRepositoryProvider);

  return SignUpService(signUpRepository);

});

final class SignUpService implements ISignUpService, ISignUpModelMapper {
  final ISignUpRepository _signUpRepository;

  SignUpService(this._signUpRepository);

  @override
  Future<Result<SignUpModel,Failure>> signUp(SignUpRequest data) async {
    try {

      final response = await _signUpRepository.signUp(data);

      final model = mapToSignUpModel(response);

      return Success(model);
      
    } on Failure catch (e) {
      return Error(e);
    } catch (e) {
      return Error(Failure(message: e.toString()));
    }
  }

  @override
  SignUpModel mapToSignUpModel(SignUpResponse response) {
    final user = response.data.user;

    return SignUpModel(
      name: user.name,
      email: user.email,
      isSugnUpSuccess: true,
    );
  }
  
}