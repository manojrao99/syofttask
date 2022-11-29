class Autogenerated {
  String? userId;
  String? userFirstname;
  String? userLastname;
  String? userEmail;
  String? userPhone;
  String? userPassword;
  String? userGender;
  String? userAddress1;
  String? userAddress2;
  String? userCity;
  String? userState;
  String? userCountry;
  String? userZipcode;
  String? userPhoneverified;
  String? userEmailverified;
  String? userProfilepicture;
  String? userUserslug;
  String? userStatus;
  String? userUsertype;
  String? userLastlogin;
  String? userCreatedat;

  Autogenerated(
      {this.userId,
        this.userFirstname,
        this.userLastname,
        this.userEmail,
        this.userPhone,
        this.userPassword,
        this.userGender,
        this.userAddress1,
        this.userAddress2,
        this.userCity,
        this.userState,
        this.userCountry,
        this.userZipcode,
        this.userPhoneverified,
        this.userEmailverified,
        this.userProfilepicture,
        this.userUserslug,
        this.userStatus,
        this.userUsertype,
        this.userLastlogin,
        this.userCreatedat});

  Autogenerated.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    userFirstname = json['user_firstname'];
    userLastname = json['user_lastname'];
    userEmail = json['user_email'];
    userPhone = json['user_phone'];
    userPassword = json['user_password'];
    userGender = json['user_gender'];
    userAddress1 = json['user_address1'];
    userAddress2 = json['user_address2'];
    userCity = json['user_city'];
    userState = json['user_state'];
    userCountry = json['user_country'];
    userZipcode = json['user_zipcode'];
    userPhoneverified = json['user_phoneverified'];
    userEmailverified = json['user_emailverified'];
    userProfilepicture = json['user_profilepicture'];
    userUserslug = json['user_userslug'];
    userStatus = json['user_status'];
    userUsertype = json['user_usertype'];
    userLastlogin = json['user_lastlogin'];
    userCreatedat = json['user_createdat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['user_firstname'] = this.userFirstname;
    data['user_lastname'] = this.userLastname;
    data['user_email'] = this.userEmail;
    data['user_phone'] = this.userPhone;
    data['user_password'] = this.userPassword;
    data['user_gender'] = this.userGender;
    data['user_address1'] = this.userAddress1;
    data['user_address2'] = this.userAddress2;
    data['user_city'] = this.userCity;
    data['user_state'] = this.userState;
    data['user_country'] = this.userCountry;
    data['user_zipcode'] = this.userZipcode;
    data['user_phoneverified'] = this.userPhoneverified;
    data['user_emailverified'] = this.userEmailverified;
    data['user_profilepicture'] = this.userProfilepicture;
    data['user_userslug'] = this.userUserslug;
    data['user_status'] = this.userStatus;
    data['user_usertype'] = this.userUsertype;
    data['user_lastlogin'] = this.userLastlogin;
    data['user_createdat'] = this.userCreatedat;
    return data;
  }
}