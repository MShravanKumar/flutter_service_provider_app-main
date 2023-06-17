const String dummytoken =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7InVzZXJfaWQiOjE2ODQ3NzUyODMyNDMsInByb2ZpbGVfaW1nIjpudWxsLCJuYW1lIjoiYWJjZCIsImVtYWlsX2lkIjoiYWJAZ21haWwuY29tIiwibW9iaWxlX25vIjo3ODk0NTYxMjM1LCJnZW5kZXIiOiJNYWxlIiwiT1RQIjo5NjE0LCJwYXNzd29yZCI6IiQyYiQxMCRaWDZ5UU41MGQ0WUtwU0E1cFhQSzRlQXZidG92ZVRVWEg0YmwxcHhSRmhKU092b1EvTHFLRyIsInNwb2tlbl9sYW5ndWFnZSI6IlsxNjg0NzUwNjY2NTE4XSIsIndvcmtfY2F0ZWdvcnkiOjE2ODQ4NjIzODE3NDksImN1c3RvbWVyX3NlcnZpY2UiOjEsImRvY19wYW4iOm51bGwsImRvY19hYWRoYXJfZnJvbnQiOm51bGwsImRvY19hYWRoYXJfYmFjayI6bnVsbCwiZG9jX3ZhY2NpbmF0aW9uX2NlcnRpZmljYXRlIjpudWxsLCJiYW5rX2RldGFpbHMiOm51bGwsImxvY2F0aW9uX2xhdCI6bnVsbCwibG9jYXRpb25fbG9uZyI6bnVsbCwic2VydmljZV9hcmVhIjpudWxsLCJyZWZlcmFsX2lkIjoiQTY2M1E1MTNKNzAwIiwidXNlcl9yb2xlIjoidXNlciIsInVzZXJfc3RhdHVzIjoicGVuZGlpbmciLCJmbGFnIjoicHJvdmlkZXIiLCJjZWF0ZWRfYXQiOiIyMDIzLTA1LTIyVDE3OjA4OjAzLjAwMFoiLCJ1cGRhdGVkX2F0IjoiMjAyMy0wNi0xMlQxNzoxMzo1Mi4wMDBaIn0sImlhdCI6MTY4NjU5MDA0NH0.4e8QRFQvptMqrYEpj90GKePhoqu7hCdOAWrbve9poJ4";
const String apiBaseUrl =
    "http://52.66.210.7:4137/";
const String apiSendOtp =
    "api/user_details/send_otp";
const String apiUserExists =
    "api/user_details/user_exits";
const String apiEncryptPassword =
    "api/user_details/encrypt_password";
const String apiVerifyOtp =
    "api/user_details/verify_otp";
const String apiLogin = "api/user_details/login";
const String apiUserRegistration =
    "api/user_details/registration";
const String apiUserlanguages =
    "api/user_details/get_user_languages";
const String updateUserLanguage =
    "api/user_details/add_language_to_user";
const String apiWorkCategory =
    "api/user_details/get_work_categories";
const String updateWorkCategory =
    "api/user_details/add_work_category_to_provider";
const String getproviderservicesbyworkcategory =
    "api/user_details/get_provider_services_by_work_category/";
const String
    updateProviderservicesbyworkcategory =
    "api/user_details/add_service_to_provider";
const String addServiceTypeProvider =
    "api/user_details/add_service_type_to_provider";
const String getProvideServiceById =
    "api/user_details/get_provider_service/";

/// services
// const String subServices =
//     "api/service_provider/get_sub_services";
// const String getbyIdSubServices =
//     "api/service_provider/get_sub_service/";
const String getProviderServicesByUserId =
    "api/user_details/get_provider_services_by_user/";
const String getSubServicesByUserIdAndServiceId =
    "api/user_details/get_sub_services_by_user_id_and_service_id";

/// add on service
const String addSUbService =
    "api/service_provider/add_sub_service";
const String addAddOnNewService =
    "api/service_provider/add_add_on_services";
const String addNewMoreInformation =
    "api/service_provider/add_more_information";
