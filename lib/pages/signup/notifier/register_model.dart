class RegisterState{
  final String userName;
  final String email;
  final String password;
  final String rePassword;
  
  RegisterState({
      this.userName="",
      this.email="",
      this.password="",
      this.rePassword=""
  });
  RegisterState copyWith({String? userName,String? email,String? password,String? repassword,}){
    return RegisterState(
      userName:userName??this.userName,
      email:email??this.email,
      password:userName??this.password,
      rePassword:userName??this.rePassword,
    );
  }
}