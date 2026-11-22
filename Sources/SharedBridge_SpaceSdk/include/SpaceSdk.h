#include <Foundation/Foundation.h>
#include <stdint.h>

NS_ASSUME_NONNULL_BEGIN

_Bool SpaceSdk_internal_functional_type_callee_SwiftU2EVoid__TypesOfArguments__Swift_UnsafeMutableRawPointer_ExportedKotlinPackages_com_example_spacesdk_NewsResult__(void * pointerToClosure, void * _1);

_Bool SpaceSdk_internal_functional_type_callee_SwiftU2EVoid__TypesOfArguments__Swift_UnsafeMutableRawPointer_ExportedKotlinPackages_com_example_spacesdk_PictureOfTheDayResult__(void * pointerToClosure, void * _1);

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

void * com_example_spacesdk_NewsResult_Failure_copy__TypesOfArguments__Swift_String__(void * self, NSString * message);

void * com_example_spacesdk_NewsResult_Failure_init_allocate();

_Bool com_example_spacesdk_NewsResult_Failure_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_String__(void * __kt, NSString * message);

NSString * com_example_spacesdk_NewsResult_Failure_message_get(void * self);

NSArray<id> * com_example_spacesdk_NewsResult_Success_articles_get(void * self);

void * com_example_spacesdk_NewsResult_Success_copy__TypesOfArguments__Swift_Array_ExportedKotlinPackages_com_example_spacesdk_NewsArticle___(void * self, NSArray<id> * articles);

void * com_example_spacesdk_NewsResult_Success_init_allocate();

_Bool com_example_spacesdk_NewsResult_Success_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_Array_ExportedKotlinPackages_com_example_spacesdk_NewsArticle___(void * __kt, NSArray<id> * articles);

_Bool com_example_spacesdk_NewsStateHolder_close(void * self);

void * com_example_spacesdk_NewsStateHolder_currentState_get(void * self);

_Bool com_example_spacesdk_NewsStateHolder_refresh(void * self);

void * com_example_spacesdk_NewsStateHolder_state_get(void * self);

void * com_example_spacesdk_NewsUiState_Error_copy__TypesOfArguments__Swift_String__(void * self, NSString * message);

void * com_example_spacesdk_NewsUiState_Error_init_allocate();

_Bool com_example_spacesdk_NewsUiState_Error_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_String__(void * __kt, NSString * message);

NSString * com_example_spacesdk_NewsUiState_Error_message_get(void * self);

void * com_example_spacesdk_NewsUiState_Loading_get();

NSArray<id> * com_example_spacesdk_NewsUiState_Success_articles_get(void * self);

void * com_example_spacesdk_NewsUiState_Success_copy__TypesOfArguments__Swift_Array_ExportedKotlinPackages_com_example_spacesdk_NewsArticle___(void * self, NSArray<id> * articles);

void * com_example_spacesdk_NewsUiState_Success_init_allocate();

_Bool com_example_spacesdk_NewsUiState_Success_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_Array_ExportedKotlinPackages_com_example_spacesdk_NewsArticle___(void * __kt, NSArray<id> * articles);

void * com_example_spacesdk_PictureOfTheDayResult_Failure_copy__TypesOfArguments__Swift_String__(void * self, NSString * message);

void * com_example_spacesdk_PictureOfTheDayResult_Failure_init_allocate();

_Bool com_example_spacesdk_PictureOfTheDayResult_Failure_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_String__(void * __kt, NSString * message);

NSString * com_example_spacesdk_PictureOfTheDayResult_Failure_message_get(void * self);

void * com_example_spacesdk_PictureOfTheDayResult_NotFound_copy__TypesOfArguments__Swift_String__(void * self, NSString * date);

NSString * com_example_spacesdk_PictureOfTheDayResult_NotFound_date_get(void * self);

void * com_example_spacesdk_PictureOfTheDayResult_NotFound_init_allocate();

_Bool com_example_spacesdk_PictureOfTheDayResult_NotFound_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_String__(void * __kt, NSString * date);

void * com_example_spacesdk_PictureOfTheDayResult_Success_copy__TypesOfArguments__ExportedKotlinPackages_com_example_spacesdk_PictureOfTheDay__(void * self, void * picture);

void * com_example_spacesdk_PictureOfTheDayResult_Success_init_allocate();

_Bool com_example_spacesdk_PictureOfTheDayResult_Success_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_ExportedKotlinPackages_com_example_spacesdk_PictureOfTheDay__(void * __kt, void * picture);

void * com_example_spacesdk_PictureOfTheDayResult_Success_picture_get(void * self);

_Bool com_example_spacesdk_PictureOfTheDayStateHolder_close(void * self);

void * com_example_spacesdk_PictureOfTheDayStateHolder_currentState_get(void * self);

_Bool com_example_spacesdk_PictureOfTheDayStateHolder_load__TypesOfArguments__Swift_String__(void * self, NSString * date);

_Bool com_example_spacesdk_PictureOfTheDayStateHolder_loadLatest(void * self);

void * com_example_spacesdk_PictureOfTheDayStateHolder_state_get(void * self);

void * com_example_spacesdk_PictureOfTheDayUiState_Error_copy__TypesOfArguments__Swift_String__(void * self, NSString * message);

void * com_example_spacesdk_PictureOfTheDayUiState_Error_init_allocate();

_Bool com_example_spacesdk_PictureOfTheDayUiState_Error_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_String__(void * __kt, NSString * message);

NSString * com_example_spacesdk_PictureOfTheDayUiState_Error_message_get(void * self);

void * com_example_spacesdk_PictureOfTheDayUiState_Loading_get();

void * com_example_spacesdk_PictureOfTheDayUiState_NotFound_copy__TypesOfArguments__Swift_String__(void * self, NSString * date);

NSString * com_example_spacesdk_PictureOfTheDayUiState_NotFound_date_get(void * self);

void * com_example_spacesdk_PictureOfTheDayUiState_NotFound_init_allocate();

_Bool com_example_spacesdk_PictureOfTheDayUiState_NotFound_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_String__(void * __kt, NSString * date);

void * com_example_spacesdk_PictureOfTheDayUiState_Success_copy__TypesOfArguments__ExportedKotlinPackages_com_example_spacesdk_PictureOfTheDay__(void * self, void * picture);

void * com_example_spacesdk_PictureOfTheDayUiState_Success_init_allocate();

_Bool com_example_spacesdk_PictureOfTheDayUiState_Success_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_ExportedKotlinPackages_com_example_spacesdk_PictureOfTheDay__(void * __kt, void * picture);

void * com_example_spacesdk_PictureOfTheDayUiState_Success_picture_get(void * self);

NSString * com_example_spacesdk_PictureOfTheDay_altText_get(void * self);

void * com_example_spacesdk_PictureOfTheDay_copy__TypesOfArguments__Swift_String_Swift_String_Swift_String_ExportedKotlinPackages_com_example_spacesdk_MediaType_Swift_Optional_Swift_String__Swift_String_Swift_String_Swift_String__(void * self, NSString * date, NSString * title, NSString * explanation, void * mediaType, NSString * _Nullable imageUrl, NSString * pageUrl, NSString * credit, NSString * altText);

NSString * com_example_spacesdk_PictureOfTheDay_credit_get(void * self);

NSString * com_example_spacesdk_PictureOfTheDay_date_get(void * self);

NSString * com_example_spacesdk_PictureOfTheDay_explanation_get(void * self);

NSString * _Nullable com_example_spacesdk_PictureOfTheDay_imageUrl_get(void * self);

void * com_example_spacesdk_PictureOfTheDay_init_allocate();

_Bool com_example_spacesdk_PictureOfTheDay_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer_Swift_String_Swift_String_Swift_String_ExportedKotlinPackages_com_example_spacesdk_MediaType_Swift_Optional_Swift_String__Swift_String_Swift_String_Swift_String__(void * __kt, NSString * date, NSString * title, NSString * explanation, void * mediaType, NSString * _Nullable imageUrl, NSString * pageUrl, NSString * credit, NSString * altText);

void * com_example_spacesdk_PictureOfTheDay_mediaType_get(void * self);

NSString * com_example_spacesdk_PictureOfTheDay_pageUrl_get(void * self);

NSString * com_example_spacesdk_PictureOfTheDay_title_get(void * self);

void * com_example_spacesdk_SpaceSdk_createNews__TypesOfArguments__Swift_Int32__(void * self, int32_t limit);

void * com_example_spacesdk_SpaceSdk_createPictureOfTheDay(void * self);

_Bool com_example_spacesdk_SpaceSdk_getLatestNews__TypesOfArguments__Swift_Int32__(void * self, int32_t limit, void * continuation, void * exception, void * cancellation);

_Bool com_example_spacesdk_SpaceSdk_getPictureOfTheDay(void * self, void * continuation, void * exception, void * cancellation);

_Bool com_example_spacesdk_SpaceSdk_getPictureOfTheDay__TypesOfArguments__Swift_String__(void * self, NSString * date, void * continuation, void * exception, void * cancellation);

void * com_example_spacesdk_SpaceSdk_init_allocate();

_Bool com_example_spacesdk_SpaceSdk_init_initialize__TypesOfArguments__Swift_UnsafeMutableRawPointer__(void * __kt);

NS_ASSUME_NONNULL_END
