//로그인 유효성 검사 파일

class ValidatorUtil {
  static String? validatorId(String? value) {
    if (value?.trim().isEmpty ?? true) {
      //'앞 뒤의 공백을 다 제거 했을 때 비어있다면' 이라는 유효성 검사
      return "아이디를 입력해주세요";
    }
    if (value!.length < 2) {
      return "아이디는 2글자 이상이여야합니다";
    }
    return null;
  }

  static String? validatorNickname(String? value) {
    if (value!.length < 2) {
      return "닉네임을 입력해주세요";
    }
    return null;
  }

  static String? validarotPassword(String? value) {
    if (value?.trim().isEmpty ?? true) {
      //'앞 뒤의 공백을 다 제거 했을 때 비어있다면' 이라는 유효성 검사
      return "비밀번호를 입력해주세요";
    }
    if (value!.length < 2) {
      return "비밀번호는 2글자 이상이여야합니다";
    }
    return null;
  }
}
 
//validatorUtil.validarotId()
//-> static String? validatorId 이렇게 static 붙여놓으면 
//클래스를 새로 생성하지 않아도 되기 때문에 static 붙여서 쓰는거임