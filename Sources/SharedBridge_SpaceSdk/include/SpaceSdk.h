#include <Foundation/Foundation.h>
#include <stdint.h>

NS_ASSUME_NONNULL_BEGIN

_Bool SpaceSdk_internal_functional_type_callee_SwiftU2EVoid__TypesOfArguments__Swift_UnsafeMutableRawPointer_ExportedKotlinPackages_com_example_spacesdk_NewsResult__(void * pointerToClosure, void * _1);

_Bool SpaceSdk_internal_functional_type_callee_SwiftU2EVoid__TypesOfArguments__Swift_UnsafeMutableRawPointer_ExportedKotlinPackages_com_example_spacesdk_PictureResult__(void * pointerToClosure, void * _1);

_Bool SpaceSdk_internal_functional_type_callee_SwiftU2EVoid__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_Optional_Swift_Error___(void * pointerToClosure, void * _Nullable _1);

void * com_example_spacesdk_MediaType_IMAGE();

void * com_example_spacesdk_MediaType_OTHER();

void * com_example_spacesdk_MediaType_VIDEO();

int32_t com_example_spacesdk_MediaType_ordinal(void * self);

void * com_example_spacesdk_NewsArticle_copy__TypesOfArguments__Swift_Int32_Swift_String_Swift_String_Swift_String_Swift_Optional_Swift_String__Swift_String_Swift_String__(void * self, int32_t id_, NSString * title, NSString * summary, NSString * url, NSString * _Nullable imageUrl, NSString * newsSite, NSString * publishedAt);

int32_t com_example_spacesdk_NewsArticle_id_get(void * self);

NSString * _Nullable com_example_spacesdk_NewsArticle_imageUrl_get(void * self);

void * com_example_spacesdk_NewsArticle_init_allocate();

_Bool com_example_spacesdk_NewsArticle_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_Int32_Swift_String_Swift_String_Swift_String_Swift_Optional_Swift_String__Swift_String_Swift_String__(void * __kt, int32_t id_, NSString * title, NSString * summary, NSString * url, NSString * _Nullable imageUrl, NSString * newsSite, NSString * publishedAt);

NSString * com_example_spacesdk_NewsArticle_newsSite_get(void * self);

NSString * com_example_spacesdk_NewsArticle_publishedAt_get(void * self);

NSString * com_example_spacesdk_NewsArticle_summary_get(void * self);

NSString * com_example_spacesdk_NewsArticle_title_get(void * self);

NSString * com_example_spacesdk_NewsArticle_url_get(void * self);

void * com_example_spacesdk_NewsResult_Failure_copy__TypesOfArguments__ExportedKotlinPackages_com_example_spacesdk_SpaceError__(void * self, void * error);

void * com_example_spacesdk_NewsResult_Failure_error_get(void * self);

void * com_example_spacesdk_NewsResult_Failure_init_allocate();

_Bool com_example_spacesdk_NewsResult_Failure_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_ExportedKotlinPackages_com_example_spacesdk_SpaceError__(void * __kt, void * error);

NSArray<id> * com_example_spacesdk_NewsResult_Success_articles_get(void * self);

void * com_example_spacesdk_NewsResult_Success_copy__TypesOfArguments__Swift_Array_ExportedKotlinPackages_com_example_spacesdk_NewsArticle___(void * self, NSArray<id> * articles);

void * com_example_spacesdk_NewsResult_Success_init_allocate();

_Bool com_example_spacesdk_NewsResult_Success_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_Array_ExportedKotlinPackages_com_example_spacesdk_NewsArticle___(void * __kt, NSArray<id> * articles);

_Bool com_example_spacesdk_NewsUseCases_latest__TypesOfArguments__Swift_Int32__(void * self, int32_t count, void * continuation, void * exception, void * cancellation);

_Bool com_example_spacesdk_NewsUseCases_refresh__TypesOfArguments__Swift_Int32__(void * self, int32_t count, void * continuation, void * exception, void * cancellation);

_Bool com_example_spacesdk_PictureOfTheDayUseCases_forDate__TypesOfArguments__Swift_Int32_Swift_Int32_Swift_Int32__(void * self, int32_t year, int32_t month, int32_t day, void * continuation, void * exception, void * cancellation);

_Bool com_example_spacesdk_PictureOfTheDayUseCases_today(void * self, void * continuation, void * exception, void * cancellation);

NSString * com_example_spacesdk_PictureOfTheDay_altText_get(void * self);

void * com_example_spacesdk_PictureOfTheDay_copy__TypesOfArguments__Swift_String_Swift_Int32_Swift_Int32_Swift_Int32_Swift_String_Swift_String_ExportedKotlinPackages_com_example_spacesdk_MediaType_Swift_Optional_Swift_String__Swift_String_Swift_String_Swift_String__(void * self, NSString * date, int32_t year, int32_t month, int32_t day, NSString * title, NSString * explanation, void * mediaType, NSString * _Nullable imageUrl, NSString * pageUrl, NSString * credit, NSString * altText);

NSString * com_example_spacesdk_PictureOfTheDay_credit_get(void * self);

NSString * com_example_spacesdk_PictureOfTheDay_date_get(void * self);

int32_t com_example_spacesdk_PictureOfTheDay_day_get(void * self);

NSString * com_example_spacesdk_PictureOfTheDay_explanation_get(void * self);

NSString * _Nullable com_example_spacesdk_PictureOfTheDay_imageUrl_get(void * self);

void * com_example_spacesdk_PictureOfTheDay_init_allocate();

_Bool com_example_spacesdk_PictureOfTheDay_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_String_Swift_Int32_Swift_Int32_Swift_Int32_Swift_String_Swift_String_ExportedKotlinPackages_com_example_spacesdk_MediaType_Swift_Optional_Swift_String__Swift_String_Swift_String_Swift_String__(void * __kt, NSString * date, int32_t year, int32_t month, int32_t day, NSString * title, NSString * explanation, void * mediaType, NSString * _Nullable imageUrl, NSString * pageUrl, NSString * credit, NSString * altText);

void * com_example_spacesdk_PictureOfTheDay_mediaType_get(void * self);

int32_t com_example_spacesdk_PictureOfTheDay_month_get(void * self);

NSString * com_example_spacesdk_PictureOfTheDay_pageUrl_get(void * self);

NSString * com_example_spacesdk_PictureOfTheDay_title_get(void * self);

int32_t com_example_spacesdk_PictureOfTheDay_year_get(void * self);

void * com_example_spacesdk_PictureResult_Failure_copy__TypesOfArguments__ExportedKotlinPackages_com_example_spacesdk_SpaceError__(void * self, void * error);

void * com_example_spacesdk_PictureResult_Failure_error_get(void * self);

void * com_example_spacesdk_PictureResult_Failure_init_allocate();

_Bool com_example_spacesdk_PictureResult_Failure_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_ExportedKotlinPackages_com_example_spacesdk_SpaceError__(void * __kt, void * error);

void * com_example_spacesdk_PictureResult_Success_copy__TypesOfArguments__ExportedKotlinPackages_com_example_spacesdk_PictureOfTheDay__(void * self, void * picture);

void * com_example_spacesdk_PictureResult_Success_init_allocate();

_Bool com_example_spacesdk_PictureResult_Success_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_ExportedKotlinPackages_com_example_spacesdk_PictureOfTheDay__(void * __kt, void * picture);

void * com_example_spacesdk_PictureResult_Success_picture_get(void * self);

void * com_example_spacesdk_SpaceError_INVALID_DATE();

void * com_example_spacesdk_SpaceError_NETWORK();

void * com_example_spacesdk_SpaceError_NOT_FOUND();

void * com_example_spacesdk_SpaceError_SERVER();

int32_t com_example_spacesdk_SpaceError_ordinal(void * self);

void * com_example_spacesdk_SpaceSdk_init_allocate();

_Bool com_example_spacesdk_SpaceSdk_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer__(void * __kt);

void * com_example_spacesdk_SpaceSdk_news_get(void * self);

void * com_example_spacesdk_SpaceSdk_pictureOfTheDay_get(void * self);

NS_ASSUME_NONNULL_END
