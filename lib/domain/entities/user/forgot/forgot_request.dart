import '../../../../data/models/user/forgot/forgot_input_model.dart';
import '../../../../data/models/user/forgot/forgot_output_model.dart';

class ForgotInput {
  const ForgotInput({
    required this.email,
  });

  final String email;
  ForgotInputModel toForgotInputModel() => ForgotInputModel(
        email: email,
      );
}

class ForgotOutput {
  const ForgotOutput();

  ForgotOutputModel toForgotOutputModel() => const ForgotOutputModel(data: '');
}
