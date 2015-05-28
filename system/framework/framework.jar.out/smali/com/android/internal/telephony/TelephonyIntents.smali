.class public Lcom/android/internal/telephony/TelephonyIntents;
.super Ljava/lang/Object;
.source "TelephonyIntents.java"


# static fields
.field public static final ACTION_ANY_DATA_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.ANY_DATA_STATE"

.field public static final ACTION_CARRIER_SETUP:Ljava/lang/String; = "android.intent.action.ACTION_CARRIER_SETUP"

.field public static final ACTION_DATA_CONNECTION_CONNECTED_TO_PROVISIONING_APN:Ljava/lang/String; = "android.intent.action.DATA_CONNECTION_CONNECTED_TO_PROVISIONING_APN"

.field public static final ACTION_DATA_CONNECTION_FAILED:Ljava/lang/String; = "android.intent.action.DATA_CONNECTION_FAILED"

.field public static final ACTION_DEACTIVATE_TETHERING:Ljava/lang/String; = "com.sonymobile.intent.action.DEACTIVATE_TETHERING"

.field public static final ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

.field public static final ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED"

.field public static final ACTION_DEFAULT_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

.field public static final ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

.field public static final ACTION_EMERGENCY_CALLBACK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

.field public static final ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION:Ljava/lang/String; = "android.intent.action.ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION"

.field public static final ACTION_IMS_SERVICE_STATE_CHANGED:Ljava/lang/String; = "com.sonymobile.intent.action.IMS_SERVICE_STATE_CHANGED"

.field public static final ACTION_MANAGED_ROAMING_IND:Ljava/lang/String; = "codeaurora.intent.action.ACTION_MANAGED_ROAMING_IND"

.field public static final ACTION_NETWORK_SET_TIME:Ljava/lang/String; = "android.intent.action.NETWORK_SET_TIME"

.field public static final ACTION_NETWORK_SET_TIMEZONE:Ljava/lang/String; = "android.intent.action.NETWORK_SET_TIMEZONE"

.field public static final ACTION_PRECISE_CALL_STATE_EXTENDED_CHANGED:Ljava/lang/String; = "com.sonymobile.intent.action.PRECISE_CALL_STATE_CHANGED"

.field public static final ACTION_RADIO_TECHNOLOGY_CHANGED:Ljava/lang/String; = "android.intent.action.RADIO_TECHNOLOGY"

.field public static final ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SERVICE_STATE"

.field public static final ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS:Ljava/lang/String; = "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

.field public static final ACTION_SIGNAL_STRENGTH_CHANGED:Ljava/lang/String; = "android.intent.action.SIG_STR"

.field public static final ACTION_SIM2_STATE_CHANGED:Ljava/lang/String; = "com.sonymobile.intent.action.SIM2_STATE_CHANGED"

.field public static final ACTION_SIMINFO_CONTENT_CHANGE:Ljava/lang/String; = "android.intent.action.ACTION_SIMINFO_CONTENT_CHANGE"

.field public static final ACTION_SIMINFO_UPDATED:Ljava/lang/String; = "android.intent.action.ACTION_SIMINFO_UPDATED"

.field public static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final ACTION_SUBINFO_CONTENT_CHANGE:Ljava/lang/String; = "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

.field public static final ACTION_SUBINFO_RECORD_UPDATED:Ljava/lang/String; = "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

.field public static final ACTION_SUBSCRIPTION_SET_UICC_RESULT:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_SUBSCRIPTION_SET_UICC_RESULT"

.field public static final EXTRA_BACKGROUND_CALL_STATE_EXTENDED:Ljava/lang/String; = "background_state"

.field public static final EXTRA_BACKGROUND_NUMBER_EXTENDED:Ljava/lang/String; = "background_number"

.field public static final EXTRA_COLUMN_NAME:Ljava/lang/String; = "columnName"

.field public static final EXTRA_FOREGROUND_CALL_STATE_EXTENDED:Ljava/lang/String; = "foreground_state"

.field public static final EXTRA_FOREGROUND_NUMBER_EXTENDED:Ljava/lang/String; = "foreground_number"

.field public static final EXTRA_IMS_SERVICE_STATE:Ljava/lang/String; = "imsreg_state"

.field public static final EXTRA_INT_CONTENT:Ljava/lang/String; = "intContent"

.field public static final EXTRA_MPDN_SUPPORT:Ljava/lang/String; = "mpdnSupport"

.field public static final EXTRA_NEW_SUB_STATE:Ljava/lang/String; = "newSubState"

.field public static final EXTRA_PLMN:Ljava/lang/String; = "plmn"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "operationResult"

.field public static final EXTRA_RINGING_CALL_STATE_EXTENDED:Ljava/lang/String; = "ringing_state"

.field public static final EXTRA_RINGING_NUMBER_EXTENDED:Ljava/lang/String; = "ringing_number"

.field public static final EXTRA_SHOW_PLMN:Ljava/lang/String; = "showPlmn"

.field public static final EXTRA_SHOW_SPN:Ljava/lang/String; = "showSpn"

.field public static final EXTRA_SPN:Ljava/lang/String; = "spn"

.field public static final EXTRA_STRING_CONTENT:Ljava/lang/String; = "stringContent"

.field public static final INTENT_DATA_TOGGLE:Ljava/lang/String; = "com.sonymobile.intent.telephony.DATA_TOGGLE"

.field public static final MPDN_SUPPORT_CHANGED_ACTION:Ljava/lang/String; = "com.sonymobile.intent.action.Telephony.MPDN_SUPPORT_CHANGED_ACTION"

.field public static final SECRET_CODE_ACTION:Ljava/lang/String; = "android.provider.Telephony.SECRET_CODE"

.field public static final SPN2_STRINGS_UPDATED_ACTION:Ljava/lang/String; = "com.sonymobile.provider.Telephony.SPN2_STRINGS_UPDATED"

.field public static final SPN_STRINGS_UPDATED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SPN_STRINGS_UPDATED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
