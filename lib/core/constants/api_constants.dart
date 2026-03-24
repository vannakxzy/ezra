// ignore_for_file: constant_identifier_names, unused_field
class BaseUrls {
  BaseUrls._();

  static const _LOCAL_BASE_URL = 'http://10.0.2.2:8090/api/';
  static const _DEV_BASE_URL = 'http://dev.komplech.com/api/';
  static const _UAT_BASE_URL = 'http://...UAT.../';
  static const _PROD_BASE_URL = 'https://pro.komplech.com/api/';
  static const String baseUrl = _LOCAL_BASE_URL;
}

// #### PATH ###

class ApiEndpoints {
  ApiEndpoints._();

  /// Home Endpoints
  static const question = '/question';
  static const getMySubject = '/subject/user';
  static const getQuestionBySubject = '/question/subject';
  static const likeQuestion = '/action';
  static const unLikeQuestion = '/action';
  static const postDeviceToken = '/firebasetoken';

  /// Category Endpoints
  static const GetCategoryEvent = '/category';
  static const createCategory = '/category';
  static const mergeCategroy = '/category/merge';
  static const deleteCategory = '/category/delete';
  static const editCategory = '/category/update';
  static const reorderCategory = '/category/reorder';

  static const getQuesitonInCategory = '/category/save';
  static const saveQuestiontoCateogry = '/save';
  static const deleteSaveQuestion = '/category/deleteQuestion';

  // Post Question Endpoints
  static const createQuestion = '/question';
  static const getTags = '/tags/search';
  static const createTag = '/tags';

  // OwnProfile Endpoints
  static const getProfile = '/user/profile';
  static const findProfile = '/user/find';
  static const getQuestionByUser = '/question/user';
  static const getAnswerByUser = '/answer/user';
  static const getTopTag = '/tags/top-tag';

  // Search Endpoints
  static const getpopularSearch = '/popular-search';
  static const getSearchQuestion = '/question/search';
  static const getSearchUser = '/user/search';
  static const getSearchtAnswer = '/answer/search';

  // QuestionDetail Endpoints
  static const getAnswerInQuestion = 'answer';
  static const getCommnetInQuestion = '/comment';
  static const getCommentInAnswer = '/comment';
  static const updateQuestion = '/question';
  static const getTagCount = "/tags/search-count";
  static const getquestionbyTag = "/question/tag";

  static const answer = '/answer';
  static const createComment = '/comment';
  static const deleteComment = "/comment";
  static const updateComment = "/comment";

  static const likeComment = '/action';
  static const likeAnswer = '/action';
  static const correctAnswer = '/answer/edit_correct';

  // splash page Endpoints
  static const getSlogan = '/slogan';

  // setting Endpints
  static const getSetting = '/setting';
  static const getOtherSetting = '/setting/other';

  static const updateSetting = '/setting/update';

  // create account Endpoints
  static const register = '/register';
  static const getAllSubject = '/subject';
  static const updateUserSubject = '/user/update-user-subject';

  // feedback
  static const submitFeedback = '/feedback';

  //report Endpoints
  static const createReport = '/report';
  static const getReportType = '/report-type';
  static const getReportTypeDetail = '/report-type-detail';

  // personal info Endpoints
  static const updatePersonalInfo = '/user/update';
  static const checkEmail = '/user/check-email';
  static const checkUserName = '/user/check-userName';
  static const sendOtp = '/sendOtp';
  static const verifyOtp = '/verifyOtp';

  // Other Profile
  static const getOtherProfile = '/user/profile';
  static const getOtherQuestionByUser = '/question/user';
  static const getOtherAnswerByUser = '/answer/other/user';

  // Auth
  static const login = '/login';
  static const logout = "/logout";
  static const createNewPassword = '/forgetPassword';
  static const checkUser = '/checkUser';
  static const authWithGoogle = '/loginAndRegister';
  static const user = '/user';

  // Security Login
  static const block = '/block';
  static const unBlock = '/block';
  static const createBlock = '/block';
  static const unHide = '/hide';
  static const unHideByQuestionId = '/hide/by-question';
  static const activeSession = '/active-session';
  static const deleteOtherSession = '/active-session/other';

  static const hide = '/hide';
  static const createhide = '/hide';
  static const changePassword = "/user/changePassword";
  // select avatar
  static const getAvatar = '/avatar';

  // data tag
  static const getOtherAnswerByTag = "/answer/other/tag";
  static const getOtherQuestionByTag = "/question/other/tag";
  static const getOwnAnswerByTag = "/answer/tag";
  static const getOwnQuestionByTag = "/question/tag";

  // notification
  static const notification = "/notification";
  // band
  static const band = "/bands";
  static const getQuestionInband = "/question/band";
  static const searchband = "/band/search";
  static const getbandinUser = "/band/user";
  static const joinband = "/band-member/join";
  static const requestToJoinband = "/band-member/request";
  static const approveUserInband = "/band-member/approve";
  static const rejectUserInband = "/band-member/reject";
  static const leaveband = "/band-member/leave";
  static const removeMemberband = "/band-member/remove";
  static const getOwnPermissionInband = "/band-permission";
  static const updatebandRole = "/band-role";
  static const bandPermission = "/band-permission";
  static const bandMember = "/band-member";

  ////
  static const events = "/events";

  // musics

  static const musics = "/musics";

  static const favoriteMusics = "/favorites/musics";
  static const deletefavoriteMusics = "/favorites/musics/";
}
