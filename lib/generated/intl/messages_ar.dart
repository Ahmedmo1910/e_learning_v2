// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ar';

  static String m0(name) => "مرحباً بعودتك، كوتش ${name}!";

  static String m1(email) => "لقد أرسلنا رمزاً مكوناً من 6 أرقام إلى ${email}";

  static String m2(seconds) => "إعادة الإرسال خلال ${seconds} ثانية";

  static String m3(name) => "مرحباً بعودتك، ${name}!";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alreadyHaveAccount": MessageLookupByLibrary.simpleMessage(
      "لديك حساب بالفعل؟",
    ),
    "analytics": MessageLookupByLibrary.simpleMessage("تحليلات الأداء"),
    "analyticsDesc": MessageLookupByLibrary.simpleMessage(
      "تتبع تقييماتك، التعليقات، والمبيعات",
    ),
    "appTitle": MessageLookupByLibrary.simpleMessage("تطبيق التعلم الإلكتروني"),
    "codeHint": MessageLookupByLibrary.simpleMessage(
      "أدخل الرمز المكون من 6 أرقام",
    ),
    "codeLabel": MessageLookupByLibrary.simpleMessage("رمز التحقق"),
    "confirmPasswordHint": MessageLookupByLibrary.simpleMessage(
      "كرر كلمة المرور",
    ),
    "confirmPasswordLabel": MessageLookupByLibrary.simpleMessage(
      "تأكيد كلمة المرور",
    ),
    "createCourse": MessageLookupByLibrary.simpleMessage("إنشاء دورة جديدة"),
    "createCourseDesc": MessageLookupByLibrary.simpleMessage(
      "صمم وانشر دورة تعليمية جديدة",
    ),
    "emailHint": MessageLookupByLibrary.simpleMessage("أدخل بريدك الإلكتروني"),
    "emailInUse": MessageLookupByLibrary.simpleMessage(
      "هذا البريد الإلكتروني مسجل بالفعل",
    ),
    "emailInvalid": MessageLookupByLibrary.simpleMessage(
      "أدخل بريد إلكتروني صحيح",
    ),
    "emailLabel": MessageLookupByLibrary.simpleMessage("البريد الإلكتروني"),
    "emailNotConfirmed": MessageLookupByLibrary.simpleMessage(
      "يرجى تأكيد بريدك الإلكتروني قبل تسجيل الدخول",
    ),
    "emailRequired": MessageLookupByLibrary.simpleMessage(
      "البريد الإلكتروني مطلوب",
    ),
    "emailVerified": MessageLookupByLibrary.simpleMessage(
      "تم التحقق من البريد الإلكتروني بنجاح",
    ),
    "forgotPassword": MessageLookupByLibrary.simpleMessage("نسيت كلمة المرور؟"),
    "instructorTitle": MessageLookupByLibrary.simpleMessage("لوحة تحكم المعلم"),
    "instructorWelcome": m0,
    "invalidCode": MessageLookupByLibrary.simpleMessage("رمز التحقق غير صحيح"),
    "invalidCredentials": MessageLookupByLibrary.simpleMessage(
      "البريد الإلكتروني أو كلمة المرور غير صحيحة",
    ),
    "invalidOtp": MessageLookupByLibrary.simpleMessage(
      "الرمز غير صالح أو انتهت صلاحيته",
    ),
    "loginButton": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
    "loginSubtitle": MessageLookupByLibrary.simpleMessage(
      "سجل دخولك لمتابعة رحلة تعلمك",
    ),
    "loginTitle": MessageLookupByLibrary.simpleMessage("مرحباً بعودتك"),
    "myCourses": MessageLookupByLibrary.simpleMessage("دوراتي التعليمية"),
    "myCoursesDesc": MessageLookupByLibrary.simpleMessage(
      "عرض والوصول إلى الدورات المسجل بها",
    ),
    "myStudents": MessageLookupByLibrary.simpleMessage("طلابي"),
    "myStudentsDesc": MessageLookupByLibrary.simpleMessage(
      "إدارة ومساعدة الطلاب المسجلين لديك",
    ),
    "nameHint": MessageLookupByLibrary.simpleMessage("أدخل اسمك الكامل"),
    "nameLabel": MessageLookupByLibrary.simpleMessage("الاسم الكامل"),
    "nameRequired": MessageLookupByLibrary.simpleMessage("الاسم مطلوب"),
    "networkError": MessageLookupByLibrary.simpleMessage(
      "خطأ في الشبكة. تحقق من اتصالك.",
    ),
    "noAccount": MessageLookupByLibrary.simpleMessage("ليس لديك حساب؟"),
    "otpSubtitle": m1,
    "otpTitle": MessageLookupByLibrary.simpleMessage(
      "تحقق من البريد الإلكتروني",
    ),
    "passwordHint": MessageLookupByLibrary.simpleMessage("أدخل كلمة المرور"),
    "passwordLabel": MessageLookupByLibrary.simpleMessage("كلمة المرور"),
    "passwordLength": MessageLookupByLibrary.simpleMessage(
      "كلمة المرور يجب أن تكون 6 أحرف على الأقل",
    ),
    "passwordMismatch": MessageLookupByLibrary.simpleMessage(
      "كلمتا المرور غير متطابقتين",
    ),
    "passwordRequired": MessageLookupByLibrary.simpleMessage(
      "كلمة المرور مطلوبة",
    ),
    "passwordStrengthMedium": MessageLookupByLibrary.simpleMessage(
      "كلمه المرور متوسطة",
    ),
    "passwordStrengthStrong": MessageLookupByLibrary.simpleMessage(
      "كلمه المرور قوية",
    ),
    "passwordStrengthWeak": MessageLookupByLibrary.simpleMessage(
      "كلمه المرور ضعيفة",
    ),
    "progress": MessageLookupByLibrary.simpleMessage("تقدمي الدراسي"),
    "progressDesc": MessageLookupByLibrary.simpleMessage(
      "تتبع إنجازاتك التعليمية وما حققته",
    ),
    "rateLimitExceeded": MessageLookupByLibrary.simpleMessage(
      "محاولات كثيرة جداً. يرجى المحاولة لاحقاً",
    ),
    "registerButton": MessageLookupByLibrary.simpleMessage("إنشاء الحساب"),
    "resendButton": MessageLookupByLibrary.simpleMessage("إعادة إرسال الرمز"),
    "resendIn": m2,
    "resetPasswordFailed": MessageLookupByLibrary.simpleMessage(
      "فشل إرسال رابط استعادة كلمة المرور",
    ),
    "roleRequiredError": MessageLookupByLibrary.simpleMessage(
      "يرجى تحديد ما إذا كنت طالباً أم معلماً",
    ),
    "roleStudent": MessageLookupByLibrary.simpleMessage("طالب"),
    "roleStudentDesc": MessageLookupByLibrary.simpleMessage(
      "تعلم مهارات جديدة والتحق بالدورات",
    ),
    "roleTitle": MessageLookupByLibrary.simpleMessage("اختر نوع الحساب"),
    "roleTutor": MessageLookupByLibrary.simpleMessage("معلم"),
    "roleTutorDesc": MessageLookupByLibrary.simpleMessage(
      "شارك خبرتك ودرّس الطلاب",
    ),
    "schedule": MessageLookupByLibrary.simpleMessage("جدول الحصص"),
    "scheduleDesc": MessageLookupByLibrary.simpleMessage(
      "تحقق من الجلسات المباشرة القادمة",
    ),
    "serverError": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ في الخادم. يرجى المحاولة مجدداً.",
    ),
    "signOutFailed": MessageLookupByLibrary.simpleMessage("فشل تسجيل الخروج"),
    "signupLink": MessageLookupByLibrary.simpleMessage("إنشاء حساب"),
    "signupSubtitle": MessageLookupByLibrary.simpleMessage(
      "ابدأ رحلتك معنا اليوم",
    ),
    "signupTitle": MessageLookupByLibrary.simpleMessage("إنشاء حساب جديد"),
    "somethingWentWrong": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ ما، يرجى المحاولة لاحقاً",
    ),
    "studentTitle": MessageLookupByLibrary.simpleMessage("لوحة تحكم الطالب"),
    "studentWelcome": m3,
    "unexpectedError": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ غير متوقع.",
    ),
    "verifyButton": MessageLookupByLibrary.simpleMessage("تحقق"),
  };
}
