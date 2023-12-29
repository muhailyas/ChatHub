class AuthenticationParams {
  final String mobile;
  AuthenticationParams({required this.mobile});
}

class VerificationParams {
  final String otp;
  final String validationId;
  VerificationParams({required this.otp, required this.validationId});
}
