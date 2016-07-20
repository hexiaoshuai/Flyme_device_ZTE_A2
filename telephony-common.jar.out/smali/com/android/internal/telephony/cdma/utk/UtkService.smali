.class public Lcom/android/internal/telephony/cdma/utk/UtkService;
.super Landroid/os/Handler;
.source "UtkService.java"

# interfaces
.implements Lcom/android/internal/telephony/cdma/utk/AppInterface;
.implements Lcom/mediatek/internal/telephony/cdma/IUtkService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/utk/UtkService$4;,
        Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;
    }
.end annotation


# static fields
.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_EARPIECE:I = 0x3

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field public static final ENVELOPE_MENU_SELECTION:I = 0xff

.field static final EVENT_LIST_BROWSER_TERMINATION:I = 0x8

.field static final EVENT_LIST_CALL_CONNECTED:I = 0x1

.field static final EVENT_LIST_CALL_DISCONNECTED:I = 0x2

.field static final EVENT_LIST_CARD_READER_STATUS:I = 0x6

.field static final EVENT_LIST_CHANNEL_STATUS:I = 0xa

.field static final EVENT_LIST_DATA_AVAILABLE:I = 0x9

.field static final EVENT_LIST_IDLE_SCREEN_AVAILABLE:I = 0x5

.field static final EVENT_LIST_LANGUAGE_SELECTION:I = 0x7

.field static final EVENT_LIST_LOCATION_STATUS:I = 0x3

.field static final EVENT_LIST_MT_CALL:I = 0x0

.field static final EVENT_LIST_USER_ACTIVITY:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "UtkService"

.field private static LTE_UTK_DBG:Z = false

.field static final MSG_ID_CALL_SETUP:I = 0x4

.field public static final MSG_ID_CLOSED_CHANNEL:I = 0x17

.field static final MSG_ID_CMD_LOCAL_INFO:I = 0xc

.field static final MSG_ID_EVENT_DOWNLOAD:I = 0x8

.field static final MSG_ID_EVENT_LOCAL_INFO:I = 0xe

.field static final MSG_ID_EVENT_NOTIFY:I = 0x3

.field public static final MSG_ID_GET_CHANNEL_STATUS:I = 0x18

.field static final MSG_ID_ICC_CHANGED:I = 0xb

.field public static final MSG_ID_MENU_INFO:I = 0x1e

.field public static final MSG_ID_OPENED_CHANNEL:I = 0x14

.field static final MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field static final MSG_ID_RADIO_OFF_OR_UNAVAILABLE:I = 0xf

.field public static final MSG_ID_RECEIVED_DATA:I = 0x16

.field static final MSG_ID_REFRESH:I = 0x5

.field static final MSG_ID_RESPONSE:I = 0x6

.field static final MSG_ID_RIL_MSG_DECODED:I = 0xa

.field static final MSG_ID_RIL_REFRESH_RESULT:I = 0xd

.field static final MSG_ID_RUIM_READY:I = 0x7

.field public static final MSG_ID_SENT_DATA:I = 0x15

.field static final MSG_ID_SESSION_END:I = 0x1

.field public static final MSG_ID_TIMER_MANAGEMENT_TIMEOUT:I = 0x1a

.field public static final MSG_ID_TIMER_TICK:I = 0x19

.field static final UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

.field public static final UTK_CARD_TYPE_UIM_AND_USIM:I = 0x2

.field public static final UTK_CARD_TYPE_UIM_ONLY:I = 0x1

.field public static final UTK_CARD_TYPE_UNKNOW:I = 0x0

.field static final UTK_DEFAULT:Ljava/lang/String; = "Defualt Message"

.field public static final UTK_ENV:I = 0x2

.field public static final UTK_NPS_ENV:I = 0x4

.field public static final UTK_NPS_TR:I = 0x2

.field public static final UTK_PS_ENV:I = 0x3

.field public static final UTK_PS_TR:I = 0x1

.field private static final UTK_TIMEUPDATE_PERIOD:I = 0x3e8

.field public static final UTK_TR:I = 0x1

.field private static final WP2_LOG_TAG:Ljava/lang/String; = "Wp2UtkService"

.field private static final mEsnTrackUtkMenuSelect:Ljava/lang/String; = "com.android.internal.telephony.cdma.utk.ESN_MENU_SELECTION"

.field private static mIccRecordsSim1:Lcom/android/internal/telephony/uicc/IccRecords;

.field private static mIccRecordsSim2:Lcom/android/internal/telephony/uicc/IccRecords;

.field public static mQueryMenuFlag:Z

.field private static mUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private static mUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private static sActiveInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

.field private static sActiveUtkId:I

.field public static sCdmaPhoneId:I

.field private static final sInstanceLock:Ljava/lang/Object;

.field private static sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

.field private static sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

.field private static sLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

.field private static sLtePhone:Lcom/android/internal/telephony/PhoneBase;

.field public static sLtePhoneProxyId:I

.field private static sRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

.field private static sRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;


# instance fields
.field final UTK_TIMER_MAX:I

.field private mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

.field private mCatchChannelCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

.field private mCatchLocalInfoCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

.field private mEventList:[B

.field private final mIRStateChangeFilter:Landroid/content/IntentFilter;

.field private final mIRStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

.field private mLocationStatusString:Ljava/lang/String;

.field private mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mMenuCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

.field private mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

.field private mMutliSimType:I

.field private mPendingRilMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/RilMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I

.field private mRilMsgDecoding:Z

.field private final mSIMStateChangeFilter:Landroid/content/IntentFilter;

.field private final mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceReceiver:Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;

.field private mServiceState:I

.field private mSimId:I

.field private mTimerLock:Ljava/lang/Object;

.field private mTimerManagementHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;",
            ">;"
        }
    .end annotation
.end field

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUtkTicker:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 210
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceLock:Ljava/lang/Object;

    .line 229
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    .line 234
    sput-boolean v3, Lcom/android/internal/telephony/cdma/utk/UtkService;->LTE_UTK_DBG:Z

    .line 236
    sput-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 238
    sput-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    .line 249
    sput v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLtePhoneProxyId:I

    .line 250
    sput v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->sCdmaPhoneId:I

    .line 251
    sput-boolean v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->mQueryMenuFlag:Z

    .line 252
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 320
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "gsm.ril.uicctype"

    aput-object v1, v0, v2

    const-string v1, "gsm.ril.uicctype.2"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "gsm.ril.uicctype.3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gsm.ril.uicctype.4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 7
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "ca"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p3, "ir"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p6, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 385
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 207
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 216
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 217
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMenuCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 219
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchLocalInfoCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 222
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchChannelCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 231
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 233
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/utk/LocalInfo;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    .line 235
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMutliSimType:I

    .line 239
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 271
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRilMsgDecoding:Z

    .line 272
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPendingRilMsgList:Ljava/util/ArrayList;

    .line 276
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    .line 277
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->UTK_TIMER_MAX:I

    .line 279
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    .line 281
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerLock:Ljava/lang/Object;

    .line 282
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    .line 284
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceReceiver:Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;

    .line 285
    iput v5, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    .line 286
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocationStatusString:Ljava/lang/String;

    .line 332
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mSIMStateChangeFilter:Landroid/content/IntentFilter;

    .line 334
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/UtkService$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/utk/UtkService$1;-><init>(Lcom/android/internal/telephony/cdma/utk/UtkService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 352
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.mediatek.intent.action.FINISH_SWITCH_ROAMING_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mIRStateChangeFilter:Landroid/content/IntentFilter;

    .line 355
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/UtkService$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/utk/UtkService$2;-><init>(Lcom/android/internal/telephony/cdma/utk/UtkService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mIRStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 387
    const-string v1, "UtkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ci"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ca "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fh "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-nez p6, :cond_1

    .line 391
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Service: Input parameters must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 395
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 396
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    .line 398
    invoke-virtual {p6}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhoneId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    .line 400
    const-string v1, "UtkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " UtkService constructor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 402
    sget-boolean v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->LTE_UTK_DBG:Z

    if-eqz v1, :cond_2

    .line 403
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getMutliSimType()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMutliSimType:I

    .line 404
    const-string v1, "UtkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mMutliSimType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMutliSimType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-static {p0, p5, v1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 411
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-static {p4, p0, v1}, Lcom/android/internal/telephony/cdma/utk/BipService;->getInstance(Landroid/content/Context;Landroid/os/Handler;I)Lcom/android/internal/telephony/cdma/utk/BipService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    .line 412
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;-><init>(Lcom/android/internal/telephony/cdma/utk/UtkService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceReceiver:Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;

    .line 413
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 414
    .local v0, "intent":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceReceiver:Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 419
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 420
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v1, :cond_4

    .line 421
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v2, 0xb

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 422
    const-string v1, "mUiccController != null, register for icc change successly"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    if-nez v1, :cond_5

    .line 429
    sput-object p3, Lcom/android/internal/telephony/cdma/utk/UtkService;->mIccRecordsSim1:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 430
    sput-object p2, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 431
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0, v6, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 440
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnUtkSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 441
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnUtkProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 442
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnUtkEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 445
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xf

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 447
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 451
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mSIMStateChangeFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 453
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mIRStateChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mIRStateChangeFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 456
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->reportUtkServiceIsRunning(Landroid/os/Message;)V

    .line 457
    const-string v1, "UtkService v1.9.0 is running"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    return-void

    .line 424
    :cond_4
    const-string v1, "mUiccController = null, cant register for icc change"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 433
    :cond_5
    sput-object p3, Lcom/android/internal/telephony/cdma/utk/UtkService;->mIccRecordsSim2:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 434
    sput-object p2, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 435
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0, v6, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/utk/UtkService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/UtkService;

    .prologue
    .line 197
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    return v0
.end method

.method static synthetic access$100()Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    return-object v0
.end method

.method static synthetic access$200()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    .line 197
    sput-object p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    return-object p0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 197
    sget v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/utk/UtkService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/UtkService;

    .prologue
    .line 197
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/cdma/utk/UtkService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/UtkService;
    .param p1, "x1"    # I

    .prologue
    .line 197
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cdma/utk/UtkService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/utk/UtkService;

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->checkLocationEvent()V

    return-void
.end method

.method static synthetic access$600()Lcom/android/internal/telephony/cdma/utk/UtkService;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    return-object v0
.end method

.method private addTimerManagement(I[B)V
    .locals 4
    .param p1, "timerId"    # I
    .param p2, "bcdData"    # [B

    .prologue
    .line 1816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTimerManagement id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1818
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;-><init>(Landroid/os/Handler;I[B)V

    .line 1819
    .local v0, "td":Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    monitor-enter v2

    .line 1821
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    monitor-exit v2

    .line 1824
    return-void

    .line 1823
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static bcdToDigit([B)[B
    .locals 6
    .param p0, "bcd"    # [B

    .prologue
    const/4 v4, 0x0

    .line 1841
    if-nez p0, :cond_1

    move-object v0, v4

    .line 1856
    :cond_0
    :goto_0
    return-object v0

    .line 1844
    :cond_1
    array-length v5, p0

    new-array v0, v5, [B

    .line 1846
    .local v0, "digit":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, p0

    if-ge v2, v5, :cond_0

    .line 1847
    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0xf

    int-to-byte v3, v5

    .line 1848
    .local v3, "l":B
    const/16 v5, 0x9

    if-le v3, v5, :cond_2

    move-object v0, v4

    .line 1849
    goto :goto_0

    .line 1851
    :cond_2
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v5, v5, 0x4

    int-to-byte v1, v5

    .line 1853
    .local v1, "h":B
    mul-int/lit8 v5, v3, 0xa

    add-int/2addr v5, v1

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 1846
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private broadcastEventlist()V
    .locals 4

    .prologue
    .line 1996
    const/4 v1, 0x0

    .line 1997
    .local v1, "st":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 1998
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastEventlist mEventList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1999
    if-eqz v1, :cond_0

    .line 2000
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.utk.setup_event_list"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2001
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "PHONE_ID"

    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2002
    const-string v2, "UTK_EVENTS"

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2003
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2005
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private checkBipEvent()V
    .locals 7

    .prologue
    .line 1966
    const-string v5, "checkBipEvent"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1967
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1969
    .local v2, "mSb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 1970
    .local v4, "st":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1971
    const-string v5, "09"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1972
    const-string v5, "Bip event data available"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1973
    const-string v5, "09"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1975
    :cond_0
    const-string v5, "0a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1976
    const-string v5, "Bip event channel status"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1977
    const-string v5, "0a"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1980
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1981
    .local v1, "mEvents":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkBipEvent: mEvents = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1982
    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1983
    const/4 v3, 0x0

    .line 1984
    .local v3, "mUtkEvents":[B
    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1985
    if-eqz v3, :cond_2

    .line 1986
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkBipEvent: mUtkEvents = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1987
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.utk.setup_event_list"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1988
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "PHONE_ID"

    iget v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1989
    const-string v5, "UTK_EVENTS"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1990
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1993
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "mUtkEvents":[B
    :cond_2
    return-void
.end method

.method private checkLocationEvent()V
    .locals 3

    .prologue
    .line 1956
    const-string v1, "checkLocationEvent"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1958
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 1959
    .local v0, "st":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1960
    const-string v1, "getUtkLocalInfo"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1961
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getUtkLocalInfo(Landroid/os/Message;)V

    .line 1963
    :cond_0
    return-void
.end method

.method public static digitTobcd([B)[B
    .locals 5
    .param p0, "digit"    # [B

    .prologue
    .line 1860
    if-nez p0, :cond_1

    .line 1861
    const/4 v0, 0x0

    .line 1872
    :cond_0
    return-object v0

    .line 1863
    :cond_1
    array-length v4, p0

    new-array v0, v4, [B

    .line 1865
    .local v0, "bcd":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_0

    .line 1866
    aget-byte v4, p0, v2

    rem-int/lit8 v4, v4, 0xa

    int-to-byte v3, v4

    .line 1867
    .local v3, "l":B
    aget-byte v4, p0, v2

    div-int/lit8 v4, v4, 0xa

    int-to-byte v1, v4

    .line 1869
    .local v1, "h":B
    shl-int/lit8 v4, v3, 0x4

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 1865
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private eventDownload(III[BZ)V
    .locals 9
    .param p1, "event"    # I
    .param p2, "sourceId"    # I
    .param p3, "destinationId"    # I
    .param p4, "additionalInfo"    # [B
    .param p5, "oneShot"    # Z

    .prologue
    .line 1044
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1046
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x9

    if-eq v6, p1, :cond_4

    .line 1047
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    array-length v6, v6

    if-nez v6, :cond_1

    .line 1048
    :cond_0
    const-string v6, "eventDownload mEventList null"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1111
    :goto_0
    return-void

    .line 1052
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "eventDownload events="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " current event="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1055
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    array-length v6, v6

    if-ge v3, v6, :cond_2

    .line 1056
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    aget-byte v6, v6, v3

    if-ne v6, p1, :cond_3

    .line 1057
    if-eqz p5, :cond_2

    .line 1058
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    const/4 v7, 0x0

    aput-byte v7, v6, v3

    .line 1064
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    array-length v6, v6

    if-ne v3, v6, :cond_4

    .line 1065
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "eventDownload not wanted event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1055
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1071
    .end local v3    # "index":I
    :cond_4
    const/16 v6, 0xd6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1074
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1077
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1078
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1079
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1082
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1083
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1084
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1085
    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1088
    if-eqz p4, :cond_5

    .line 1089
    const/4 v6, 0x0

    array-length v7, p4

    invoke-virtual {v0, p4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1092
    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 1095
    .local v5, "rawData":[B
    array-length v6, v5

    add-int/lit8 v4, v6, -0x2

    .line 1096
    .local v4, "len":I
    const/4 v6, 0x1

    int-to-byte v7, v4

    aput-byte v7, v5, v6

    .line 1098
    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 1100
    .local v2, "hexString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sending event envelope hexString:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1102
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x2

    iget v7, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMutliSimType:I

    if-ne v6, v7, :cond_6

    .line 1104
    const/4 v6, 0x2

    invoke-direct {p0, v6, p1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getSvlteUtkCommandType(II)I

    move-result v1

    .line 1105
    .local v1, "cmdType":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UTK LTE: event download through lte ril arbitrator, event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cmdType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1107
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/UtkService;->sRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMutliSimType:I

    invoke-interface {v6, v2, v7, v1, v8}, Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 1109
    .end local v1    # "cmdType":I
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public static getActiveUtkId()I
    .locals 3

    .prologue
    .line 2224
    const-string v0, "UtkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return active utk id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    sget v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    return v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/cdma/utk/AppInterface;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1222
    invoke-static {v0, v0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/cdma/utk/UtkService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(I)Lcom/android/internal/telephony/cdma/utk/AppInterface;
    .locals 1
    .param p0, "phoneId"    # I

    .prologue
    .line 1231
    if-nez p0, :cond_0

    .line 1232
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

    .line 1236
    :goto_0
    return-object v0

    .line 1233
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p0, :cond_1

    .line 1234
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

    goto :goto_0

    .line 1236
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/cdma/utk/UtkService;
    .locals 11
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 1124
    const-string v1, "UtkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getInstance ic "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    const/4 v2, 0x0

    .line 1127
    .local v2, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v5, 0x0

    .line 1128
    .local v5, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const/4 v3, 0x0

    .line 1130
    .local v3, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v7, -0x1

    .line 1132
    .local v7, "tempPhoneId":I
    if-eqz p2, :cond_0

    .line 1137
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 1138
    if-eqz v2, :cond_0

    .line 1139
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v5

    .line 1140
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    .line 1142
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhoneId()I

    move-result v7

    .line 1143
    const-string v1, "Wp2UtkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " tempPhoneId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    :cond_0
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1147
    if-nez v7, :cond_1

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

    if-eqz v1, :cond_2

    :cond_1
    if-ne v10, v7, :cond_7

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

    if-nez v1, :cond_7

    .line 1149
    :cond_2
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz v2, :cond_3

    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    const/4 v1, -0x1

    if-ne v7, v1, :cond_4

    .line 1151
    :cond_3
    const-string v1, "UtkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getInstance ca "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ir "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " fh "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    monitor-exit v9

    move-object v1, v8

    .line 1211
    :goto_0
    return-object v1

    .line 1157
    :cond_4
    const/4 v0, 0x0

    .line 1158
    .local v0, "tempInstance":Lcom/android/internal/telephony/cdma/utk/UtkService;
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/UtkService;

    .end local v0    # "tempInstance":Lcom/android/internal/telephony/cdma/utk/UtkService;
    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/utk/UtkService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccCard;)V

    .line 1159
    .restart local v0    # "tempInstance":Lcom/android/internal/telephony/cdma/utk/UtkService;
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    .line 1160
    if-nez v7, :cond_5

    .line 1161
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

    .line 1162
    sput v7, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    .line 1163
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new sInstance"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1164
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

    monitor-exit v9

    goto :goto_0

    .line 1213
    .end local v0    # "tempInstance":Lcom/android/internal/telephony/cdma/utk/UtkService;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1165
    .restart local v0    # "tempInstance":Lcom/android/internal/telephony/cdma/utk/UtkService;
    :cond_5
    if-ne v10, v7, :cond_6

    .line 1166
    :try_start_1
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

    .line 1167
    sput v7, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    .line 1168
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new sInstance"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1169
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

    monitor-exit v9

    goto :goto_0

    .line 1171
    :cond_6
    const-string v1, "Wp2UtkService"

    const-string v4, "Invalid phone ID and return null instance"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    monitor-exit v9

    move-object v1, v8

    goto :goto_0

    .line 1174
    .end local v0    # "tempInstance":Lcom/android/internal/telephony/cdma/utk/UtkService;
    :cond_7
    if-nez v7, :cond_b

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

    if-eqz v1, :cond_b

    .line 1175
    if-eqz v2, :cond_9

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v2, :cond_9

    .line 1176
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_8

    .line 1177
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 1179
    :cond_8
    sput-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1180
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const/4 v6, 0x7

    const/4 v8, 0x0

    invoke-virtual {v1, v4, v6, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1181
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string v4, "sInstanceSim1 reinitialize with new ca"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1183
    :cond_9
    if-eqz v3, :cond_a

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mIccRecordsSim1:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v1, v3, :cond_a

    .line 1184
    sput-object v3, Lcom/android/internal/telephony/cdma/utk/UtkService;->mIccRecordsSim1:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1185
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string v4, "sInstanceSim1 reinitialize with new ir"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1187
    :cond_a
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string v4, "Return current sInstanceSim1"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1188
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

    sput-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    .line 1189
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    .line 1190
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

    monitor-exit v9

    goto/16 :goto_0

    .line 1191
    :cond_b
    if-ne v10, v7, :cond_f

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

    if-eqz v1, :cond_f

    .line 1192
    if-eqz v2, :cond_d

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v2, :cond_d

    .line 1193
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_c

    .line 1194
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 1196
    :cond_c
    sput-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1197
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const/4 v6, 0x7

    const/4 v8, 0x0

    invoke-virtual {v1, v4, v6, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1198
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string v4, "sInstanceSim2 reinitialize with new ca"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1200
    :cond_d
    if-eqz v3, :cond_e

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mIccRecordsSim2:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v1, v3, :cond_e

    .line 1201
    sput-object v3, Lcom/android/internal/telephony/cdma/utk/UtkService;->mIccRecordsSim2:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1202
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string v4, "sInstanceSim2 reinitialize with new ir"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1204
    :cond_e
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

    const-string v4, "Return current sInstanceSim2"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1205
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

    sput-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    .line 1206
    const/4 v1, 0x1

    sput v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    .line 1207
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

    monitor-exit v9

    goto/16 :goto_0

    .line 1209
    :cond_f
    const-string v1, "Wp2UtkService"

    const-string v4, " Return active sInstance"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    const-string v1, "Wp2UtkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " sActiveUtkId is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private getModelMessage()Ljava/lang/String;
    .locals 12

    .prologue
    .line 2241
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2242
    .local v0, "data":Ljava/lang/StringBuffer;
    const/4 v10, 0x1

    new-array v2, v10, [B

    .line 2243
    .local v2, "mCharEncoding":[B
    const/4 v10, 0x1

    new-array v3, v10, [B

    .line 2244
    .local v3, "mLangIndicator":[B
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2245
    .local v6, "mModel":Ljava/lang/String;
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2246
    .local v4, "mManufacturer":Ljava/lang/String;
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 2247
    .local v8, "mSwVersion":Ljava/lang/String;
    const/16 v7, 0x20

    .line 2248
    .local v7, "mModelMaxLength":I
    const/16 v5, 0x20

    .line 2249
    .local v5, "mManufacturerMaxLength":I
    const/16 v9, 0x3c

    .line 2251
    .local v9, "mSwVersionMaxLength":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getModelMessage mModel = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mManufacturer = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mSwVersion = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2255
    const/4 v10, 0x0

    const/4 v11, 0x2

    aput-byte v11, v2, v10

    .line 2256
    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2257
    const/4 v10, 0x0

    const/4 v11, 0x1

    aput-byte v11, v3, v10

    .line 2258
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2259
    const/16 v10, 0x20

    invoke-direct {p0, v6, v10}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getformattedCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2261
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x20

    if-ge v10, v11, :cond_0

    .line 2262
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    rsub-int/lit8 v10, v10, 0x20

    if-ge v1, v10, :cond_0

    .line 2263
    const-string v10, "FF"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2262
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2266
    .end local v1    # "i":I
    :cond_0
    const/16 v10, 0x20

    invoke-direct {p0, v4, v10}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getformattedCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2268
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x20

    if-ge v10, v11, :cond_1

    .line 2269
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    rsub-int/lit8 v10, v10, 0x20

    if-ge v1, v10, :cond_1

    .line 2270
    const-string v10, "FF"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2269
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2273
    .end local v1    # "i":I
    :cond_1
    const/16 v10, 0x3c

    invoke-direct {p0, v8, v10}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getformattedCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2275
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x3c

    if-ge v10, v11, :cond_2

    .line 2276
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    rsub-int/lit8 v10, v10, 0x3c

    if-ge v1, v10, :cond_2

    .line 2277
    const-string v10, "FF"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2276
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2280
    .end local v1    # "i":I
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getModelMessage data = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2281
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method private getMutliSimType()I
    .locals 4

    .prologue
    .line 2067
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 2068
    .local v1, "phoneNum":I
    new-array v0, v1, [I

    .line 2069
    .local v0, "cardType":[I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 2070
    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    aget v2, v0, v3

    .line 2071
    .local v2, "targetCardType":I
    and-int/lit8 v3, v2, 0x4

    if-gtz v3, :cond_0

    and-int/lit8 v3, v2, 0x8

    if-lez v3, :cond_1

    :cond_0
    and-int/lit8 v3, v2, 0x2

    if-lez v3, :cond_1

    .line 2074
    const/4 v3, 0x2

    .line 2079
    :goto_0
    return v3

    .line 2075
    :cond_1
    and-int/lit8 v3, v2, 0x4

    if-gtz v3, :cond_2

    and-int/lit8 v3, v2, 0x8

    if-lez v3, :cond_3

    .line 2077
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 2079
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getRecodeLocalinfo()Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    .locals 7

    .prologue
    .line 1740
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/utk/LocalInfo;-><init>()V

    .line 1742
    .local v0, "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->copyFrom(Lcom/android/internal/telephony/cdma/utk/LocalInfo;)V

    .line 1744
    const/16 v4, 0xa

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 1745
    .local v3, "myMap":[I
    iget v1, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1746
    .local v1, "mcc":I
    iget v2, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 1748
    .local v2, "mnc":I
    const-string v4, "LocalInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLocalInfo MCC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IMSI:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    const/16 v4, 0x3e8

    if-ge v1, v4, :cond_0

    .line 1752
    div-int/lit8 v4, v1, 0x64

    aget v4, v3, v4

    mul-int/lit8 v4, v4, 0x64

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1753
    rem-int/lit8 v1, v1, 0x64

    .line 1754
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    div-int/lit8 v5, v1, 0xa

    aget v5, v3, v5

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1755
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    rem-int/lit8 v5, v1, 0xa

    aget v5, v3, v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1767
    :goto_0
    const/16 v4, 0x64

    if-ge v2, v4, :cond_1

    .line 1769
    div-int/lit8 v4, v2, 0xa

    aget v4, v3, v4

    mul-int/lit8 v4, v4, 0xa

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 1770
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    rem-int/lit8 v5, v2, 0xa

    aget v5, v3, v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 1778
    :goto_1
    return-object v0

    .line 1759
    :cond_0
    div-int/lit16 v4, v1, 0x3e8

    aget v4, v3, v4

    mul-int/lit16 v4, v4, 0x3e8

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1760
    rem-int/lit16 v1, v1, 0x3e8

    .line 1761
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    div-int/lit8 v5, v1, 0x64

    aget v5, v3, v5

    mul-int/lit8 v5, v5, 0x64

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1762
    rem-int/lit8 v1, v1, 0x64

    .line 1763
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    div-int/lit8 v5, v1, 0xa

    aget v5, v3, v5

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1764
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    rem-int/lit8 v5, v1, 0xa

    aget v5, v3, v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    goto :goto_0

    .line 1772
    :cond_1
    div-int/lit8 v4, v2, 0x64

    aget v4, v3, v4

    mul-int/lit8 v4, v4, 0x64

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 1773
    rem-int/lit8 v2, v2, 0x64

    .line 1774
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    div-int/lit8 v5, v2, 0xa

    aget v5, v3, v5

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 1775
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    rem-int/lit8 v5, v2, 0xa

    aget v5, v3, v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    goto :goto_1

    .line 1744
    :array_0
    .array-data 4
        0x9
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method private getSvlteUtkCommandType(II)I
    .locals 4
    .param p1, "res"    # I
    .param p2, "typeOfCmd"    # I

    .prologue
    .line 2135
    const/4 v1, 0x0

    .line 2136
    .local v1, "utkCmdType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTK LTE: res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " typeOfCmd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2138
    const/4 v2, 0x1

    if-ne v2, p1, :cond_0

    .line 2139
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v0

    .line 2140
    .local v0, "cmdType":Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getUtkTrType(Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;)I

    move-result v1

    .line 2147
    .end local v0    # "cmdType":Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTK LTE: utkCmdType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2148
    return v1

    .line 2141
    :cond_0
    const/4 v2, 0x2

    if-ne v2, p1, :cond_1

    .line 2142
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getUtkEnvType(I)I

    move-result v1

    goto :goto_0

    .line 2144
    :cond_1
    const-string v2, "UTK LTE: inValid commands type"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getTimerManagement(I)Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;
    .locals 3
    .param p1, "timerId"    # I

    .prologue
    .line 1835
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    monitor-enter v1

    .line 1836
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;

    monitor-exit v1

    return-object v0

    .line 1837
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getUtkEnvType(I)I
    .locals 5
    .param p1, "env"    # I

    .prologue
    .line 2111
    const/4 v1, 0x0

    .line 2113
    .local v1, "isPSCmd":Z
    const/4 v3, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 2118
    .local v2, "mPSEnvCmdTable":[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UTK LTE: env = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 2121
    aget v3, v2, v0

    if-ne p1, v3, :cond_1

    .line 2122
    const/4 v1, 0x1

    .line 2127
    :cond_0
    const/4 v3, 0x1

    if-ne v3, v1, :cond_2

    .line 2128
    const/4 v3, 0x3

    .line 2130
    :goto_1
    return v3

    .line 2120
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2130
    :cond_2
    const/4 v3, 0x4

    goto :goto_1

    .line 2113
    :array_0
    .array-data 4
        0x9
        0xa
    .end array-data
.end method

.method private getUtkTrType(Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;)I
    .locals 7
    .param p1, "cmdType"    # Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2084
    const/4 v1, 0x0

    .line 2086
    .local v1, "isPSCmd":Z
    const/4 v5, 0x5

    new-array v2, v5, [Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const/4 v5, 0x0

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    aput-object v6, v2, v5

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    aput-object v5, v2, v3

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    aput-object v5, v2, v4

    const/4 v5, 0x3

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    aput-object v6, v2, v5

    const/4 v5, 0x4

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    aput-object v6, v2, v5

    .line 2094
    .local v2, "mPsCmdTable":[Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UTK LTE: cmdType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2096
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    .line 2097
    aget-object v5, v2, v0

    if-ne p1, v5, :cond_1

    .line 2098
    const/4 v1, 0x1

    .line 2103
    :cond_0
    if-ne v3, v1, :cond_2

    .line 2106
    :goto_1
    return v3

    .line 2096
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    .line 2106
    goto :goto_1
.end method

.method private getformattedCode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "max"    # I

    .prologue
    .line 2229
    if-eqz p1, :cond_1

    .line 2230
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 2231
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2236
    .end local p1    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "str":Ljava/lang/String;
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private handleCmdResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V
    .locals 10
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 1636
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->validateResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1637
    const-string v0, "handleCmdResponse:validateResponse"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1737
    :goto_0
    return-void

    .line 1640
    :cond_0
    const/4 v5, 0x0

    .line 1641
    .local v5, "resp":Lcom/android/internal/telephony/cdma/utk/ResponseData;
    const/4 v6, 0x0

    .line 1642
    .local v6, "helpRequired":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-result-object v1

    .line 1643
    .local v1, "cmdDet":Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCmdResponse:resMsg.resCode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1644
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService$4;->$SwitchMap$com$android$internal$telephony$cdma$utk$ResultCode:[I

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1646
    :pswitch_0
    const/4 v6, 0x1

    .line 1658
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCmdResponse cmd = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1660
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService$4;->$SwitchMap$com$android$internal$telephony$cdma$utk$AppInterface$CommandType:[I

    iget v2, v1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    sparse-switch v0, :sswitch_data_0

    .line 1735
    :cond_1
    :goto_1
    :sswitch_0
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 1736
    iput-object v9, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto :goto_0

    .line 1662
    :sswitch_1
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    if-ne v0, v2, :cond_2

    const/4 v6, 0x1

    .line 1663
    :goto_2
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersMenuSelection:I

    invoke-direct {p0, v0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendMenuSelection(IZ)V

    goto :goto_0

    :cond_2
    move v6, v3

    .line 1662
    goto :goto_2

    .line 1666
    :sswitch_2
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/SelectItemResponseData;

    .end local v5    # "resp":Lcom/android/internal/telephony/cdma/utk/ResponseData;
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersMenuSelection:I

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cdma/utk/SelectItemResponseData;-><init>(I)V

    .line 1667
    .restart local v5    # "resp":Lcom/android/internal/telephony/cdma/utk/ResponseData;
    goto :goto_1

    .line 1670
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geInput()Lcom/android/internal/telephony/cdma/utk/Input;

    move-result-object v7

    .line 1671
    .local v7, "input":Lcom/android/internal/telephony/cdma/utk/Input;
    iget-boolean v0, v7, Lcom/android/internal/telephony/cdma/utk/Input;->yesNo:Z

    if-nez v0, :cond_3

    .line 1674
    if-nez v6, :cond_1

    .line 1675
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;

    .end local v5    # "resp":Lcom/android/internal/telephony/cdma/utk/ResponseData;
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersInput:Ljava/lang/String;

    iget-boolean v2, v7, Lcom/android/internal/telephony/cdma/utk/Input;->ucs2:Z

    iget-boolean v4, v7, Lcom/android/internal/telephony/cdma/utk/Input;->packed:Z

    invoke-direct {v5, v0, v2, v4}, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    .restart local v5    # "resp":Lcom/android/internal/telephony/cdma/utk/ResponseData;
    goto :goto_1

    .line 1679
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;

    .end local v5    # "resp":Lcom/android/internal/telephony/cdma/utk/ResponseData;
    iget-boolean v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersYesNoSelection:Z

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cdma/utk/GetInkeyInputResponseData;-><init>(Z)V

    .line 1682
    .restart local v5    # "resp":Lcom/android/internal/telephony/cdma/utk/ResponseData;
    goto :goto_1

    .line 1687
    .end local v7    # "input":Lcom/android/internal/telephony/cdma/utk/Input;
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersConfirm:Z

    invoke-interface {v0, v2, v9}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromUim(ZLandroid/os/Message;)V

    .line 1691
    iput-object v9, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 1695
    :sswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " usersConfirm:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersConfirm:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1698
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    if-ne v0, v2, :cond_1

    .line 1699
    iget-boolean v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->usersConfirm:Z

    if-eqz v0, :cond_7

    .line 1700
    const/4 v8, 0x0

    .line 1701
    .local v8, "p":Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v2

    if-eq v0, v2, :cond_6

    .line 1703
    :cond_4
    const-string v0, "mCurrntCmd is null , and use mCatchChannelCmd"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1704
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchChannelCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-nez v0, :cond_5

    .line 1705
    const-string v0, "mCurrntCmd is null , and mCatchChannelCmd is null"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1706
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    goto/16 :goto_1

    .line 1709
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchChannelCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getOpenChannelSettings()Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    move-result-object v8

    .line 1714
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/cdma/utk/BipService;->openChannel(Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;)V

    goto/16 :goto_0

    .line 1711
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getOpenChannelSettings()Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    move-result-object v8

    goto :goto_3

    .line 1717
    .end local v8    # "p":Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->resCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 1718
    iput-object v9, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchChannelCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_1

    .line 1730
    :pswitch_2
    const/4 v5, 0x0

    .line 1731
    goto/16 :goto_1

    .line 1644
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1660
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_3
        0xd -> :sswitch_4
        0x14 -> :sswitch_5
    .end sparse-switch
.end method

.method private handleEventDownload(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V
    .locals 6
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    .prologue
    .line 1783
    iget v1, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->event:I

    iget v2, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->sourceId:I

    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->destinationId:I

    iget-object v4, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->additionalInfo:[B

    iget-boolean v5, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->oneShot:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->eventDownload(III[BZ)V

    .line 1785
    return-void
.end method

.method private handleProactiveCommand(Lcom/android/internal/telephony/cdma/utk/CommandParams;)V
    .locals 30
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .prologue
    .line 657
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;->getCommandType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    new-instance v12, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandParams;)V

    .line 661
    .local v12, "cmdMsg":Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleProactiveCommand "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;->getCommandType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/UtkService$4;->$SwitchMap$com$android$internal$telephony$cdma$utk$AppInterface$CommandType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;->getCommandType()Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 858
    const-string v4, "Unsupported command"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 866
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :cond_0
    :goto_0
    return-void

    .line 665
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :pswitch_0
    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->getMenu()Lcom/android/internal/telephony/cdma/utk/Menu;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkService;->removeMenu(Lcom/android/internal/telephony/cdma/utk/Menu;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 666
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMenuCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 670
    :goto_1
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 861
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :cond_1
    :goto_2
    :pswitch_1
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 862
    new-instance v14, Landroid/content/Intent;

    const-string v4, "android.intent.action.utk.command"

    invoke-direct {v14, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 863
    .local v14, "intent":Landroid/content/Intent;
    const-string v4, "UTK CMD"

    invoke-virtual {v14, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 864
    const-string v4, "PHONE_ID"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-virtual {v14, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 865
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 668
    .end local v14    # "intent":Landroid/content/Intent;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :cond_2
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMenuCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto :goto_1

    .line 676
    :pswitch_2
    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cdma/utk/TextMessage;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/internal/telephony/cdma/utk/TextMessage;->responseNeeded:Z

    if-nez v4, :cond_1

    .line 677
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_2

    .line 684
    :pswitch_3
    const-string v4, "UtkService handleProactiveCommand Do refresh"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    const/16 v26, 0x1

    .line 686
    .local v26, "type":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 687
    const/16 v26, 0x1

    .line 696
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move/from16 v0, v26

    invoke-interface {v4, v0, v5}, Lcom/android/internal/telephony/CommandsInterface;->requestUtkRefresh(ILandroid/os/Message;)V

    .line 699
    new-instance v19, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;-><init>()V

    .line 700
    .local v19, "rsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    move-object/from16 v0, v19

    iput v4, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    .line 701
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    if-nez v4, :cond_8

    sget-object v17, Lcom/android/internal/telephony/cdma/utk/UtkService;->mIccRecordsSim1:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 702
    .local v17, "mIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_4
    const/16 v4, 0x1f

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 703
    .local v16, "m":Landroid/os/Message;
    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 704
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->sendToTarget()V

    .line 706
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    goto/16 :goto_2

    .line 688
    .end local v16    # "m":Landroid/os/Message;
    .end local v17    # "mIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v19    # "rsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    :cond_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 689
    const/16 v26, 0x2

    goto :goto_3

    .line 690
    :cond_5
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 691
    const/16 v26, 0x3

    goto :goto_3

    .line 692
    :cond_6
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    if-eqz v4, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 694
    :cond_7
    const/16 v26, 0x4

    goto :goto_3

    .line 701
    .restart local v19    # "rsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    :cond_8
    sget-object v17, Lcom/android/internal/telephony/cdma/utk/UtkService;->mIccRecordsSim2:Lcom/android/internal/telephony/uicc/IccRecords;

    goto :goto_4

    .line 713
    .end local v19    # "rsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    .end local v26    # "type":I
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto/16 :goto_2

    .line 729
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto/16 :goto_0

    .line 735
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    if-eqz v4, :cond_9

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_a

    .line 737
    :cond_9
    const-string v4, "Local information get AT data"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 738
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getUtkLocalInfo(Landroid/os/Message;)V

    .line 739
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 740
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchLocalInfoCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 742
    :cond_a
    const-string v4, "handleCmdResponse Local info"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 743
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-direct {v9, v4, v0}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;-><init>(ILcom/android/internal/telephony/cdma/utk/LocalInfo;)V

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 745
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v4, p1

    .line 751
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;

    iget v0, v4, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;->timeUnit:I

    move/from16 v23, v0

    .local v23, "timeUnit":I
    move-object/from16 v4, p1

    .line 752
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;

    iget v0, v4, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;->timeInterval:I

    move/from16 v22, v0

    .line 753
    .local v22, "timeInterval":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " timeUnit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timeInterval="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 755
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/android/internal/telephony/cdma/utk/PollIntervalResponseData;

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-direct {v9, v0, v1}, Lcom/android/internal/telephony/cdma/utk/PollIntervalResponseData;-><init>(II)V

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 757
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .end local v22    # "timeInterval":I
    .end local v23    # "timeUnit":I
    :pswitch_8
    move-object/from16 v4, p1

    .line 760
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;

    iget v0, v4, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;->timerId:I

    move/from16 v25, v0

    .local v25, "timerId":I
    move-object/from16 v4, p1

    .line 761
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;

    iget v0, v4, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;->timerAction:I

    move/from16 v24, v0

    .local v24, "timerAction":I
    move-object/from16 v4, p1

    .line 762
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;

    iget-object v10, v4, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;->dataRaw:[B

    .line 764
    .local v10, "bcdData":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " timerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timerAction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bcdData="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 767
    if-nez v24, :cond_c

    .line 768
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->startUtkTimer()V

    .line 769
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1, v10}, Lcom/android/internal/telephony/cdma/utk/UtkService;->addTimerManagement(I[B)V

    .line 771
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;

    move/from16 v0, v25

    invoke-direct {v9, v0}, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;-><init>(I)V

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 798
    :cond_b
    :goto_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 773
    :cond_c
    const/4 v4, 0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_e

    .line 774
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getTimerManagement(I)Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;

    move-result-object v21

    .line 775
    .local v21, "td":Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;
    if-eqz v21, :cond_d

    .line 776
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->getRemaining()J

    move-result-wide v28

    move/from16 v0, v25

    move-wide/from16 v1, v28

    invoke-direct {v9, v0, v1, v2}, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;-><init>(IJ)V

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 778
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->removeTimerManagement(I)V

    goto :goto_5

    .line 780
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " timermanagement "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 782
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CONTRADICTION_WITH_TIMER:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_5

    .line 785
    .end local v21    # "td":Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;
    :cond_e
    const/4 v4, 0x2

    move/from16 v0, v24

    if-ne v0, v4, :cond_b

    .line 786
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getTimerManagement(I)Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;

    move-result-object v21

    .line 788
    .restart local v21    # "td":Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;
    if-eqz v21, :cond_f

    .line 789
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->getRemaining()J

    move-result-wide v28

    move/from16 v0, v25

    move-wide/from16 v1, v28

    invoke-direct {v9, v0, v1, v2}, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;-><init>(IJ)V

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto/16 :goto_5

    .line 792
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " timermanagement "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 794
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CONTRADICTION_WITH_TIMER:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto/16 :goto_5

    .end local v10    # "bcdData":[B
    .end local v21    # "td":Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;
    .end local v24    # "timerAction":I
    .end local v25    # "timerId":I
    :pswitch_9
    move-object/from16 v4, p1

    .line 801
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/SetupEventListParams;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/utk/SetupEventListParams;->eventList:[B

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    .line 802
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " set mEventList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mEventList:[B

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 803
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 805
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->checkLocationEvent()V

    .line 806
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 807
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->checkBipEvent()V

    .line 810
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v4, :cond_0

    .line 811
    const-string v4, " SET_UP_EVENT_LIST: mCurrntCmd != null"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 815
    :pswitch_a
    const-string v4, " OPEN_CHANNEL: cache this cmd"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 816
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchChannelCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_2

    :pswitch_b
    move-object/from16 v4, p1

    .line 821
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;

    iget v11, v4, Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;->chId:I

    .line 824
    .local v11, "chId":I
    check-cast p1, Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;->isListen:Z

    .line 825
    .local v15, "listen":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-virtual {v4, v11, v15}, Lcom/android/internal/telephony/cdma/utk/BipService;->closeChannel(IZ)V

    goto/16 :goto_2

    .end local v11    # "chId":I
    .end local v15    # "listen":Z
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :pswitch_c
    move-object/from16 v4, p1

    .line 830
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;

    iget v11, v4, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;->chId:I

    .line 831
    .restart local v11    # "chId":I
    check-cast p1, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;->reqDataLength:I

    move/from16 v18, v0

    .line 834
    .local v18, "reqDataLength":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    move/from16 v0, v18

    invoke-virtual {v4, v11, v0}, Lcom/android/internal/telephony/cdma/utk/BipService;->receiveData(II)V

    goto/16 :goto_2

    .end local v11    # "chId":I
    .end local v18    # "reqDataLength":I
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :pswitch_d
    move-object/from16 v4, p1

    .line 839
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/SendDataParams;

    iget v11, v4, Lcom/android/internal/telephony/cdma/utk/SendDataParams;->chId:I

    .restart local v11    # "chId":I
    move-object/from16 v4, p1

    .line 840
    check-cast v4, Lcom/android/internal/telephony/cdma/utk/SendDataParams;

    iget-object v13, v4, Lcom/android/internal/telephony/cdma/utk/SendDataParams;->channelData:[B

    .line 841
    .local v13, "data":[B
    check-cast p1, Lcom/android/internal/telephony/cdma/utk/SendDataParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/utk/SendDataParams;->sendImmediately:Z

    move/from16 v20, v0

    .line 845
    .local v20, "sendImmediately":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    move/from16 v0, v20

    invoke-virtual {v4, v11, v13, v0}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendData(I[BZ)V

    goto/16 :goto_2

    .line 850
    .end local v11    # "chId":I
    .end local v13    # "data":[B
    .end local v20    # "sendImmediately":Z
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    :pswitch_e
    check-cast p1, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusParams;->chId:I

    .line 852
    .restart local v11    # "chId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/cdma/utk/BipService;->getChannelStatus(I)V

    goto/16 :goto_2

    .line 663
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V
    .locals 9
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cdma/utk/RilMessage;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 588
    if-nez p1, :cond_1

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    const/4 v7, 0x0

    .line 595
    .local v7, "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRilMsg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    iget v1, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mId:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 642
    :sswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleSessionEnd()V

    goto :goto_0

    .line 599
    :sswitch_1
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    if-ne v1, v2, :cond_0

    .line 600
    iget-object v7, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mData:Ljava/lang/Object;

    .end local v7    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 601
    .restart local v7    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    if-eqz v7, :cond_0

    .line 602
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleProactiveCommand(Lcom/android/internal/telephony/cdma/utk/CommandParams;)V

    goto :goto_0

    .line 610
    :sswitch_2
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mData:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRilMsg cmdParams!=null ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v7, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rilMsg.mResCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    if-eqz v7, :cond_0

    .line 624
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    if-ne v1, v2, :cond_3

    .line 625
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleProactiveCommand(Lcom/android/internal/telephony/cdma/utk/CommandParams;)V

    goto :goto_0

    .line 611
    :catch_0
    move-exception v8

    .line 613
    .local v8, "e":Ljava/lang/ClassCastException;
    const-string v1, "Fail to parse proactive command"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 615
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v1, :cond_0

    .line 616
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_0

    .end local v8    # "e":Ljava/lang/ClassCastException;
    :cond_2
    move v1, v4

    .line 621
    goto :goto_1

    .line 630
    :cond_3
    iget-object v2, v7, Lcom/android/internal/telephony/cdma/utk/CommandParams;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mResCode:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto/16 :goto_0

    .line 636
    :sswitch_3
    iget-object v7, p1, Lcom/android/internal/telephony/cdma/utk/RilMessage;->mData:Ljava/lang/Object;

    .end local v7    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 637
    .restart local v7    # "cmdParams":Lcom/android/internal/telephony/cdma/utk/CommandParams;
    if-eqz v7, :cond_0

    .line 638
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleProactiveCommand(Lcom/android/internal/telephony/cdma/utk/CommandParams;)V

    goto/16 :goto_0

    .line 597
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x5 -> :sswitch_3
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method private handleSessionEnd()V
    .locals 3

    .prologue
    .line 891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SESSION END on mPhoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 893
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->resetCurrentCmd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 894
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMenuCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 896
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.utk.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 897
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "PHONE_ID"

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 898
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 899
    return-void
.end method

.method private handleUtkTimerTick()V
    .locals 6

    .prologue
    .line 1797
    const-string v2, "handleUtkTimerTick"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1800
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    .line 1801
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getTimerManagement(I)Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;

    move-result-object v1

    .line 1802
    .local v1, "td":Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;
    if-eqz v1, :cond_0

    .line 1803
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->timerTick()V

    .line 1804
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->getRemaining()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1805
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;->getTimerId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkService;->removeTimerManagement(I)V

    .line 1800
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1810
    .end local v1    # "td":Lcom/android/internal/telephony/cdma/utk/UtkTimerManagementData;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 1811
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->stopUtkTimer()V

    .line 1813
    :cond_2
    return-void
.end method

.method private isBusyOnCall()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 2008
    const-string v6, "isBusyOnCall"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2011
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 2013
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    .line 2023
    .local v4, "s":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2025
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2026
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 2027
    .local v1, "inDataCall":Z
    if-eqz v2, :cond_0

    .line 2028
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 2031
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inDataCall: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2033
    if-nez v1, :cond_1

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v6, :cond_2

    :cond_1
    const/4 v5, 0x1

    :cond_2
    return v5
.end method

.method private locationStatusEventDownload()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 1909
    const-string v0, "locationStatusEventDownload"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1910
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1911
    .local v6, "buf":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 1914
    .local v7, "isRightFillLocInfo":Z
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->LOCATION_STATUS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1915
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mServiceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1920
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    if-nez v0, :cond_0

    .line 1922
    const-string v0, "locationStatusEventDownload v2.0 "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1923
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getRecodeLocalinfo()Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    move-result-object v8

    .line 1924
    .local v8, "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lc.MCC = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lc.IMSI_11_12 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1925
    iget v0, v8, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    if-eqz v0, :cond_0

    iget v0, v8, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    if-eqz v0, :cond_0

    .line 1926
    invoke-virtual {v6, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1927
    const-string v0, "locationStatusEventDownload include localInfo"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1928
    invoke-virtual {v8, v6}, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->localInfoFormat(Ljava/io/ByteArrayOutputStream;)V

    .line 1929
    const/4 v7, 0x1

    .line 1935
    .end local v8    # "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRightFillLocInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1936
    if-nez v7, :cond_1

    .line 1937
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1940
    :cond_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 1942
    .local v4, "additionalInfo":[B
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocationStatusString:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocationStatusString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 1944
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->isBusyOnCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1945
    const-string v0, "phone is busy, event download abort"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1953
    :goto_0
    return-void

    .line 1947
    :cond_3
    const/4 v1, 0x3

    const/16 v2, 0x82

    const/16 v3, 0x81

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->eventDownload(III[BZ)V

    .line 1948
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocationStatusString:Ljava/lang/String;

    goto :goto_0

    .line 1951
    :cond_4
    const-string v0, "the location status already download"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeMenu(Lcom/android/internal/telephony/cdma/utk/Menu;)Z
    .locals 5
    .param p1, "menu"    # Lcom/android/internal/telephony/cdma/utk/Menu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1615
    :try_start_0
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/utk/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/utk/Menu;->items:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_0

    .line 1622
    :goto_0
    return v1

    .line 1618
    :catch_0
    move-exception v0

    .line 1619
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "Unable to get Menu\'s items size"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    move v1, v2

    .line 1622
    goto :goto_0
.end method

.method private removeTimerManagement(I)V
    .locals 3
    .param p1, "timerId"    # I

    .prologue
    .line 1827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeTimerManagement id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1829
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    monitor-enter v1

    .line 1830
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerManagementHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1831
    monitor-exit v1

    .line 1832
    return-void

    .line 1831
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private resetCurrentCmd()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 869
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-nez v2, :cond_0

    .line 882
    :goto_0
    return v1

    .line 873
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v0

    .line 875
    .local v0, "type":Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService$4;->$SwitchMap$com$android$internal$telephony$cdma$utk$AppInterface$CommandType:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 880
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 875
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private sendMenuSelection(IZ)V
    .locals 11
    .param p1, "menuId"    # I
    .param p2, "helpRequired"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 989
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 992
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0xd3

    .line 993
    .local v5, "tag":I
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 996
    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 999
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v5

    .line 1000
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1001
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1002
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1003
    const/16 v6, 0x81

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1006
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v5

    .line 1007
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1008
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1009
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1012
    if-eqz p2, :cond_0

    .line 1013
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v5

    .line 1014
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1015
    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1018
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 1021
    .local v4, "rawData":[B
    array-length v6, v4

    add-int/lit8 v3, v6, -0x2

    .line 1022
    .local v3, "len":I
    int-to-byte v6, v3

    aput-byte v6, v4, v7

    .line 1024
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 1026
    .local v2, "hexString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sending menu selection envelope: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1027
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMutliSimType:I

    if-ne v8, v6, :cond_2

    .line 1029
    const/16 v6, 0xff

    invoke-direct {p0, v8, v6}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getSvlteUtkCommandType(II)I

    move-result v1

    .line 1030
    .local v1, "cmdType":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UTK LTE: sendMenuSelection through lte ril arbitrator, cmdType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1032
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/UtkService;->sRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    iget v7, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMutliSimType:I

    invoke-interface {v6, v2, v10, v1, v7}, Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;II)V

    .line 1036
    .end local v1    # "cmdType":I
    :goto_0
    const-string v6, "persist.sys.esn_track_switch"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1037
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.internal.telephony.cdma.utk.ESN_MENU_SELECTION"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1039
    :cond_1
    return-void

    .line 1034
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, v2, v10}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V
    .locals 10
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .param p2, "resultCode"    # Lcom/android/internal/telephony/cdma/utk/ResultCode;
    .param p3, "includeAdditionalInfo"    # Z
    .param p4, "additionalInfo"    # I
    .param p5, "resp"    # Lcom/android/internal/telephony/cdma/utk/ResponseData;

    .prologue
    .line 905
    if-nez p1, :cond_0

    .line 984
    :goto_0
    return-void

    .line 909
    :cond_0
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v7

    iget v8, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    if-ne v7, v8, :cond_1

    sget-boolean v7, Lcom/android/internal/telephony/cdma/utk/UtkService;->mQueryMenuFlag:Z

    if-eqz v7, :cond_1

    .line 910
    const-string v7, "Ignore response from query menu case"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 911
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/internal/telephony/cdma/utk/UtkService;->mQueryMenuFlag:Z

    goto :goto_0

    .line 914
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 917
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v6

    .line 918
    .local v6, "tag":I
    iget-boolean v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->compRequired:Z

    if-eqz v7, :cond_2

    .line 919
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v7

    or-int/lit16 v6, v7, 0x80

    .line 921
    :cond_2
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 922
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 923
    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 924
    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 925
    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 928
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v6

    .line 929
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 930
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 931
    const/16 v7, 0x82

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 932
    const/16 v7, 0x81

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 935
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v7

    or-int/lit16 v6, v7, 0x80

    .line 936
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 937
    if-eqz p3, :cond_5

    const/4 v4, 0x2

    .line 938
    .local v4, "length":I
    :goto_1
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 939
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/utk/ResultCode;->value()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 942
    if-eqz p3, :cond_3

    .line 943
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 947
    :cond_3
    if-eqz p5, :cond_4

    .line 949
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->LOCAL_INFO:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v7

    iget v8, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    if-ne v7, v8, :cond_8

    .line 950
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendTerminalResponse : mServiceState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 951
    iget v7, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    if-eqz v7, :cond_6

    .line 969
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 970
    .local v5, "rawData":[B
    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 972
    .local v2, "hexString":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TERMINAL RESPONSE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 975
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x2

    iget v8, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMutliSimType:I

    if-ne v7, v8, :cond_9

    .line 977
    const/4 v7, 0x1

    iget v8, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-direct {p0, v7, v8}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getSvlteUtkCommandType(II)I

    move-result v1

    .line 978
    .local v1, "cmdType":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UTK LTE: send terminal response through lte ril arbitrator, cmdType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 980
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/UtkService;->sRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMutliSimType:I

    invoke-interface {v7, v2, v8, v1, v9}, Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 937
    .end local v1    # "cmdType":I
    .end local v2    # "hexString":Ljava/lang/String;
    .end local v4    # "length":I
    .end local v5    # "rawData":[B
    :cond_5
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 955
    .restart local v4    # "length":I
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getRecodeLocalinfo()Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    move-result-object v3

    .line 956
    .local v3, "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    iget v7, v3, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    if-nez v7, :cond_7

    iget v7, v3, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    if-nez v7, :cond_7

    .line 957
    const-string v7, "sendTerminalResponse ignore invalid local info value"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 961
    :cond_7
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cdma/utk/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_2

    .line 965
    .end local v3    # "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    :cond_8
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cdma/utk/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_2

    .line 982
    .restart local v2    # "hexString":Ljava/lang/String;
    .restart local v5    # "rawData":[B
    :cond_9
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x0

    invoke-interface {v7, v2, v8}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method private startUtkTimer()V
    .locals 7

    .prologue
    .line 2037
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2038
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 2039
    const-string v0, " get new mUtkTicker"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2041
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    .line 2042
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    new-instance v1, Lcom/android/internal/telephony/cdma/utk/UtkService$3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/utk/UtkService$3;-><init>(Lcom/android/internal/telephony/cdma/utk/UtkService;)V

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 2050
    :goto_0
    monitor-exit v6

    .line 2051
    return-void

    .line 2048
    :cond_0
    const-string v0, "mUtkTicker already running"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2050
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopUtkTimer()V
    .locals 2

    .prologue
    .line 2054
    const-string v0, "stopUtkTimer"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2056
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mTimerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2057
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2058
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2059
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 2060
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUtkTicker:Ljava/util/Timer;

    .line 2062
    :cond_0
    monitor-exit v1

    .line 2063
    return-void

    .line 2062
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateIccStatus(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x7

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 533
    const-string v2, "updateIccStatus"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v2, :cond_0

    .line 535
    const-string v2, "mUiccController == null, cant do nothing"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 585
    :goto_0
    return-void

    .line 539
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 540
    .local v1, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v1, :cond_1

    .line 541
    const-string v2, "uiccCard == null, cant do nothing"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 544
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 547
    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newUiccApplication "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    if-nez p1, :cond_5

    .line 550
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v2, v0, :cond_3

    .line 551
    const-string v2, "mUiccApplicationSim1 have changed!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_2

    .line 553
    const-string v2, "mUiccApplicationSim1 unregisterForReady!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 555
    sput-object v4, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 557
    :cond_2
    if-eqz v0, :cond_4

    .line 558
    const-string v2, "mUiccApplicationSim1 registerForReady successly"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    sput p1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    .line 560
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 561
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2, p0, v6, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 584
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current active utk phone Id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 563
    :cond_4
    sput v5, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    goto :goto_1

    .line 567
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v2, v0, :cond_3

    .line 568
    const-string v2, "mUiccApplicationSim2 have changed!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_6

    .line 570
    const-string v2, "mUiccApplicationSim2 unregisterForReady!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 572
    sput-object v4, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 574
    :cond_6
    if-eqz v0, :cond_7

    .line 575
    const-string v2, "mUiccApplicationSim2 registerForReady successly"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    sput p1, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    .line 577
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 578
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2, p0, v6, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    .line 580
    :cond_7
    sput v5, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveUtkId:I

    goto :goto_1
.end method

.method private validateResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)Z
    .locals 3
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    .prologue
    const/4 v0, 0x1

    .line 1597
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1598
    const-string v1, "Uncheck open channel cmd"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1610
    :goto_0
    return v0

    .line 1601
    :cond_0
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    sget-object v2, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1602
    const-string v1, "Uncheck display text cmd"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1605
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v0, :cond_2

    .line 1606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "validateResponse resMsg.cmdDet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "validateResponse mCurrntCmd.mCmdDet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1608
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;->cmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->compareTo(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)Z

    move-result v0

    goto :goto_0

    .line 1610
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 464
    const-string v1, "dispose+"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.utk.service_dispose"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 469
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->stopUtkTimer()V

    .line 471
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/BipService;->dispose()V

    .line 475
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUtkSessionEnd(Landroid/os/Handler;)V

    .line 476
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUtkProactiveCmd(Landroid/os/Handler;)V

    .line 477
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUtkEvent(Landroid/os/Handler;)V

    .line 479
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceReceiver:Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 481
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->unRegisterLteRilEvents()V

    .line 487
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mSIMStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 488
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mIRStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 490
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    if-eqz v1, :cond_2

    .line 491
    const-string v1, "Wp2UtkService"

    const-string v2, "mMsgDecoder dispose"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->dispose(I)V

    .line 493
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 495
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v1, :cond_3

    .line 496
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 497
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 499
    :cond_3
    const-string v1, "UtkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dispose UtkService instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_4

    .line 501
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 502
    sput-object v4, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim1:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 509
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 513
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    if-nez v1, :cond_6

    .line 514
    sput-object v4, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim1:Lcom/android/internal/telephony/cdma/utk/UtkService;

    .line 520
    :goto_1
    sput-object v4, Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;

    .line 521
    const-string v1, "Wp2UtkService"

    const-string v2, "dispose-"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    return-void

    .line 503
    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    if-ne v5, v1, :cond_5

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_5

    .line 504
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 505
    sput-object v4, Lcom/android/internal/telephony/cdma/utk/UtkService;->mUiccApplicationSim2:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    goto :goto_0

    .line 507
    :cond_5
    const-string v1, "Wp2UtkService"

    const-string v2, "invalid ca dispose"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :cond_6
    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    if-ne v5, v1, :cond_7

    .line 516
    sput-object v4, Lcom/android/internal/telephony/cdma/utk/UtkService;->sInstanceSim2:Lcom/android/internal/telephony/cdma/utk/UtkService;

    goto :goto_1

    .line 518
    :cond_7
    const-string v1, "Wp2UtkService"

    const-string v2, "invalid utk dispose"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 525
    const-string v0, "Service finalized"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 49
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ril message arrived : ["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "] from Phone "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1243
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1578
    :pswitch_0
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized UTK command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1250
    :pswitch_1
    const-string v3, "ril message arrived "

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1251
    const/16 v36, 0x0

    .line 1252
    .local v36, "data":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 1253
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/AsyncResult;

    .line 1254
    .local v33, "ar":Landroid/os/AsyncResult;
    if-eqz v33, :cond_0

    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 1256
    :try_start_0
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v36, v0

    .end local v36    # "data":Ljava/lang/String;
    check-cast v36, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    .end local v33    # "ar":Landroid/os/AsyncResult;
    .restart local v36    # "data":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRilMsgDecoding:Z

    if-eqz v3, :cond_2

    .line 1263
    const-string v3, "ril message delay..."

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPendingRilMsgList:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v36

    invoke-direct {v7, v8, v0}, Lcom/android/internal/telephony/cdma/utk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1580
    .end local v36    # "data":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1257
    .restart local v33    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v37

    .line 1258
    .local v37, "e":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1267
    .end local v33    # "ar":Landroid/os/AsyncResult;
    .end local v37    # "e":Ljava/lang/ClassCastException;
    .restart local v36    # "data":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRilMsgDecoding:Z

    .line 1269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    new-instance v7, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v36

    invoke-direct {v7, v8, v0}, Lcom/android/internal/telephony/cdma/utk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    .line 1270
    const/16 v3, 0x1e

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    if-ne v3, v7, :cond_1

    .line 1271
    const-string v3, "Ignore response from query menu case"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1272
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/telephony/cdma/utk/UtkService;->mQueryMenuFlag:Z

    goto :goto_0

    .line 1276
    .end local v36    # "data":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRilMsgDecoding:Z

    if-eqz v3, :cond_3

    .line 1277
    const-string v3, "ril message delay..."

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPendingRilMsgList:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/android/internal/telephony/cdma/utk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1281
    :cond_3
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRilMsgDecoding:Z

    .line 1283
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    new-instance v7, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/android/internal/telephony/cdma/utk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    goto :goto_0

    .line 1286
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 1287
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/AsyncResult;

    .line 1288
    .restart local v33    # "ar":Landroid/os/AsyncResult;
    const/16 v39, -0x1

    .line 1289
    .local v39, "index":I
    if-eqz v33, :cond_4

    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    .line 1290
    move-object/from16 v0, v33

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v39

    .line 1291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_ID_ICC_CHANGED, index = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " and mPhoneId = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1296
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    move/from16 v0, v39

    if-ne v0, v3, :cond_1

    .line 1297
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->updateIccStatus(I)V

    goto/16 :goto_0

    .line 1294
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_ID_ICC_CHANGED, no index and mPhoneId = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1302
    .end local v33    # "ar":Landroid/os/AsyncResult;
    .end local v39    # "index":I
    :pswitch_4
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMutliSimType:I

    if-ne v3, v7, :cond_5

    .line 1304
    const-string v3, "utk MSG_ID_RUIM_READY registerLteRilEvents"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1305
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->registerLteRilEvents()V

    .line 1309
    :cond_5
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/UtkService;->UICCCARD_PROPERTY_RIL_UICC_TYPE:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    aget-object v3, v3, v7

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 1311
    .local v43, "mUiccType":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPhoneId: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " mUiccType: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1313
    if-eqz v43, :cond_6

    const-string v3, "RUIM"

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1314
    const/16 v4, 0xd6

    .line 1315
    .local v4, "mUpdateBinary":I
    const/16 v5, 0x6f90

    .line 1316
    .local v5, "mfileid":I
    const-string v6, "3F007F25"

    .line 1317
    .local v6, "mEfModelPath":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getModelMessage()Ljava/lang/String;

    move-result-object v10

    .line 1318
    .local v10, "mModelMessage":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 1319
    const-string v3, "utk write EF_Model"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1320
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7e

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1325
    .end local v4    # "mUpdateBinary":I
    .end local v5    # "mfileid":I
    .end local v6    # "mEfModelPath":Ljava/lang/String;
    .end local v10    # "mModelMessage":Ljava/lang/String;
    :cond_6
    const-string v3, "utk profileDownload"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const-string v7, ""

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->profileDownload(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1329
    .end local v43    # "mUiccType":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleRilMsg(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPendingRilMsgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 1332
    const-string v3, " decoding pending ril msg"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPendingRilMsgList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/internal/telephony/cdma/utk/RilMessage;

    .line 1335
    .local v45, "r":Lcom/android/internal/telephony/cdma/utk/RilMessage;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPendingRilMsgList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMsgDecoder:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    move-object/from16 v0, v45

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cdma/utk/RilMessage;)V

    .line 1341
    .end local v45    # "r":Lcom/android/internal/telephony/cdma/utk/RilMessage;
    :goto_2
    const-string v3, " decoding pending ril msg done"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1339
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mRilMsgDecoding:Z

    goto :goto_2

    .line 1344
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleCmdResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V

    goto/16 :goto_0

    .line 1348
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/AsyncResult;

    .line 1349
    .local v34, "aresult":Landroid/os/AsyncResult;
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_8

    .line 1350
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v40, v3

    check-cast v40, [I

    .line 1351
    .local v40, "info":[I
    move-object/from16 v0, v40

    array-length v3, v0

    const/16 v7, 0x8

    if-ne v3, v7, :cond_a

    .line 1352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v7, 0x0

    aget v7, v40, v7

    iput v7, v3, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->Technology:I

    .line 1353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v7, 0x1

    aget v7, v40, v7

    iput v7, v3, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    .line 1354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v7, 0x2

    aget v7, v40, v7

    iput v7, v3, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    .line 1355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v7, 0x3

    aget v7, v40, v7

    iput v7, v3, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->SID:I

    .line 1356
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v7, 0x4

    aget v7, v40, v7

    iput v7, v3, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->NID:I

    .line 1357
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v7, 0x5

    aget v7, v40, v7

    iput v7, v3, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_ID:I

    .line 1358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v7, 0x6

    aget v7, v40, v7

    iput v7, v3, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LAT:I

    .line 1359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLocalInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    const/4 v7, 0x7

    aget v7, v40, v7

    iput v7, v3, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->BASE_LONG:I

    .line 1365
    .end local v40    # "info":[I
    :cond_8
    :goto_3
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v7, 0xc

    if-ne v3, v7, :cond_e

    .line 1366
    const-string v3, "response cmd local info"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1368
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->getRecodeLocalinfo()Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    move-result-object v42

    .line 1370
    .local v42, "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    sget-object v13, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 1371
    .local v13, "resCode":Lcom/android/internal/telephony/cdma/utk/ResultCode;
    const/4 v14, 0x0

    .line 1372
    .local v14, "includeAdditionalInfo":Z
    const/4 v15, 0x0

    .line 1374
    .local v15, "additionalInfo":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "response cmd local info : mServiceState = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1375
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mServiceState:I

    if-eqz v3, :cond_b

    .line 1376
    sget-object v13, Lcom/android/internal/telephony/cdma/utk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 1377
    const/4 v14, 0x1

    .line 1378
    const/4 v15, 0x4

    .line 1386
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchLocalInfoCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v3, :cond_c

    .line 1387
    const-string v3, "response cmd local info: mCatchLocalInfoCmd != null! "

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchLocalInfoCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v12, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    new-instance v16, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchLocalInfoCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    move-object/from16 v0, v16

    move-object/from16 v1, v42

    invoke-direct {v0, v3, v1}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;-><init>(ILcom/android/internal/telephony/cdma/utk/LocalInfo;)V

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 1402
    :goto_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 1361
    .end local v13    # "resCode":Lcom/android/internal/telephony/cdma/utk/ResultCode;
    .end local v14    # "includeAdditionalInfo":Z
    .end local v15    # "additionalInfo":I
    .end local v42    # "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    .restart local v40    # "info":[I
    :cond_a
    const-string v3, "MSG_GET_LOCAL_INFO error"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 1380
    .end local v40    # "info":[I
    .restart local v13    # "resCode":Lcom/android/internal/telephony/cdma/utk/ResultCode;
    .restart local v14    # "includeAdditionalInfo":Z
    .restart local v15    # "additionalInfo":I
    .restart local v42    # "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    :cond_b
    move-object/from16 v0, v42

    iget v3, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->MCC:I

    if-nez v3, :cond_9

    move-object/from16 v0, v42

    iget v3, v0, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->IMSI_11_12:I

    if-nez v3, :cond_9

    .line 1381
    sget-object v13, Lcom/android/internal/telephony/cdma/utk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 1382
    const/4 v14, 0x1

    .line 1383
    const/4 v15, 0x4

    goto :goto_4

    .line 1392
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v3, :cond_d

    sget-object v3, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->LOCAL_INFO:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v7, v7, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    if-ne v3, v7, :cond_d

    .line 1394
    const-string v3, "response cmd local info: mCurrntCmd != null! "

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v12, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    new-instance v16, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    move-object/from16 v0, v16

    move-object/from16 v1, v42

    invoke-direct {v0, v3, v1}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;-><init>(ILcom/android/internal/telephony/cdma/utk/LocalInfo;)V

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_5

    .line 1400
    :cond_d
    const-string v3, "Both mCurrntCmd and mCatchLocalInfoCmd are null"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 1405
    .end local v13    # "resCode":Lcom/android/internal/telephony/cdma/utk/ResultCode;
    .end local v14    # "includeAdditionalInfo":Z
    .end local v15    # "additionalInfo":I
    .end local v42    # "lc":Lcom/android/internal/telephony/cdma/utk/LocalInfo;
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->locationStatusEventDownload()V

    goto/16 :goto_0

    .line 1409
    .end local v34    # "aresult":Landroid/os/AsyncResult;
    :pswitch_8
    const-string v3, "MSG_ID_RIL_REFRESH_RESULT  Complete! "

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1410
    new-instance v41, Landroid/content/Intent;

    invoke-direct/range {v41 .. v41}, Landroid/content/Intent;-><init>()V

    .line 1411
    .local v41, "intent":Landroid/content/Intent;
    const-string v3, "com.android.contacts.action.CONTACTS_INIT_RETRY_ACTION"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->value()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    iget v7, v7, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    if-ne v3, v7, :cond_1

    .line 1416
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 1417
    const-string v3, "Clear REFRESH mCurrentCmd"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1424
    .end local v41    # "intent":Landroid/content/Intent;
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 1425
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Ljava/lang/String;

    .line 1426
    .local v38, "hexString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sending timeout envelope: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1427
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    move-object/from16 v0, v38

    invoke-interface {v3, v0, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1431
    .end local v38    # "hexString":Ljava/lang/String;
    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleUtkTimerTick()V

    goto/16 :goto_0

    .line 1434
    :pswitch_b
    const-string v3, "handleMessage MSG_ID_EVENT_DOWNLOAD"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1435
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkService;->handleEventDownload(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V

    goto/16 :goto_0

    .line 1439
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-nez v3, :cond_10

    .line 1440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchChannelCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-nez v3, :cond_f

    .line 1441
    const-string v3, "handleMessage MSG_ID_OPENED_CHANNEL:mCurrntCmd is null, mCatchChannelCmd is null"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1445
    :cond_f
    const-string v3, "handleMessage MSG_ID_OPENED_CHANNEL:mCurrntCmd is null, mCatchChannelCmd isn\'t null"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchChannelCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 1451
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage MSG_ID_OPENED_CHANNEL:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " arg2:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1452
    const/16 v21, 0x0

    .line 1453
    .local v21, "rsp":Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_12

    .line 1454
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;

    .line 1455
    .local v44, "openResult":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    new-instance v21, Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;

    .end local v21    # "rsp":Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;
    move-object/from16 v0, v21

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;)V

    .line 1456
    .restart local v21    # "rsp":Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v7, 0x4

    if-ne v3, v7, :cond_11

    .line 1458
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/cdma/utk/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, p0

    invoke-direct/range {v16 .. v21}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 1475
    .end local v44    # "openResult":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    :goto_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    .line 1476
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCatchChannelCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 1461
    .restart local v44    # "openResult":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, p0

    invoke-direct/range {v16 .. v21}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_6

    .line 1464
    .end local v44    # "openResult":Lcom/android/internal/telephony/cdma/utk/OpenChannelResult;
    :cond_12
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v7, 0x3

    if-ne v3, v7, :cond_13

    .line 1465
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/internal/telephony/cdma/utk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, p0

    invoke-direct/range {v22 .. v27}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_6

    .line 1467
    :cond_13
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v7, 0x5

    if-ne v3, v7, :cond_14

    .line 1468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, p0

    invoke-direct/range {v22 .. v27}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_6

    .line 1471
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, p0

    invoke-direct/range {v22 .. v27}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_6

    .line 1481
    .end local v21    # "rsp":Lcom/android/internal/telephony/cdma/utk/OpenChannelResponseData;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v3, :cond_1

    .line 1485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage MSG_ID_SENT_DATA:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " arg2:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1486
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_15

    .line 1487
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v35, v3

    check-cast v35, [I

    .line 1488
    .local v35, "availableTxSize":[I
    new-instance v21, Lcom/android/internal/telephony/cdma/utk/SendDataResponseData;

    const/4 v3, 0x0

    aget v3, v35, v3

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/utk/SendDataResponseData;-><init>(I)V

    .line 1489
    .local v21, "rsp":Lcom/android/internal/telephony/cdma/utk/SendDataResponseData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, p0

    invoke-direct/range {v16 .. v21}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 1504
    .end local v21    # "rsp":Lcom/android/internal/telephony/cdma/utk/SendDataResponseData;
    .end local v35    # "availableTxSize":[I
    :goto_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 1491
    :cond_15
    const/16 v26, 0x0

    .line 1492
    .local v26, "additionInfo":I
    const/16 v25, 0x0

    .line 1494
    .local v25, "withAdd":Z
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_17

    .line 1495
    const/16 v26, 0x5

    .line 1496
    const/16 v25, 0x1

    .line 1501
    :cond_16
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v27, 0x0

    move-object/from16 v22, p0

    invoke-direct/range {v22 .. v27}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_7

    .line 1497
    :cond_17
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_16

    .line 1498
    const/16 v26, 0x5

    .line 1499
    const/16 v25, 0x1

    goto :goto_8

    .line 1509
    .end local v25    # "withAdd":Z
    .end local v26    # "additionInfo":I
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v3, :cond_1

    .line 1513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage MSG_ID_RECEIVED_DATA:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " arg2:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1515
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_18

    .line 1516
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    move-object/from16 v46, v3

    check-cast v46, [B

    .line 1517
    .local v46, "receivedData":[B
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v47, v0

    .line 1518
    .local v47, "remaining":I
    new-instance v21, Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;

    move-object/from16 v0, v21

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;-><init>([BI)V

    .line 1520
    .local v21, "rsp":Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, p0

    invoke-direct/range {v16 .. v21}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 1532
    .end local v21    # "rsp":Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;
    .end local v46    # "receivedData":[B
    .end local v47    # "remaining":I
    :goto_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 1521
    :cond_18
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_19

    .line 1522
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    move-object/from16 v46, v3

    check-cast v46, [B

    .line 1523
    .restart local v46    # "receivedData":[B
    const/16 v47, 0x0

    .line 1524
    .restart local v47    # "remaining":I
    new-instance v21, Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;

    move-object/from16 v0, v21

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;-><init>([BI)V

    .line 1526
    .restart local v21    # "rsp":Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/cdma/utk/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, p0

    invoke-direct/range {v16 .. v21}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_9

    .line 1529
    .end local v21    # "rsp":Lcom/android/internal/telephony/cdma/utk/ReceiveDataResponseData;
    .end local v46    # "receivedData":[B
    .end local v47    # "remaining":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v28, v0

    sget-object v29, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v27, p0

    invoke-direct/range {v27 .. v32}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_9

    .line 1536
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v3, :cond_1

    .line 1540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage MSG_ID_CLOSED_CHANNEL:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " arg2:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1542
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_1a

    .line 1543
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v28, v0

    sget-object v29, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v27, p0

    invoke-direct/range {v27 .. v32}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 1547
    :goto_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 1545
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v28, v0

    sget-object v29, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v27, p0

    invoke-direct/range {v27 .. v32}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_a

    .line 1551
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    if-eqz v3, :cond_1

    .line 1555
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage MSG_ID_GET_CHANNEL_STATUS:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " arg2:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1558
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_1b

    .line 1559
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    .line 1560
    .local v48, "s":Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    new-instance v21, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;

    move-object/from16 v0, v21

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;-><init>(Lcom/android/internal/telephony/cdma/utk/ChannelStatus;)V

    .line 1561
    .local v21, "rsp":Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, p0

    invoke-direct/range {v16 .. v21}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    .line 1565
    .end local v21    # "rsp":Lcom/android/internal/telephony/cdma/utk/GetChannelStatusResponseData;
    .end local v48    # "s":Lcom/android/internal/telephony/cdma/utk/ChannelStatus;
    :goto_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    goto/16 :goto_0

    .line 1563
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCurrntCmd:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-object/from16 v28, v0

    sget-object v29, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v27, p0

    invoke-direct/range {v27 .. v32}, Lcom/android/internal/telephony/cdma/utk/UtkService;->sendTerminalResponse(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/ResultCode;ZILcom/android/internal/telephony/cdma/utk/ResponseData;)V

    goto :goto_b

    .line 1570
    :pswitch_11
    const-string v3, "handleMessage MSG_ID_RADIO_OFF_OR_UNAVAILABLE"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1571
    new-instance v41, Landroid/content/Intent;

    const-string v3, "android.intent.action.utk.radio_off"

    move-object/from16 v0, v41

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1572
    .restart local v41    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_4
        :pswitch_b
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isRadioOn()Z
    .locals 3

    .prologue
    .line 2174
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 2175
    .local v0, "mRadioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2176
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_0

    .line 2177
    const/4 v1, 0x1

    .line 2179
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onCmdResponse(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V
    .locals 2
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    .prologue
    .line 1588
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1594
    :goto_0
    monitor-exit p0

    return-void

    .line 1592
    :cond_0
    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1593
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1588
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onEventDownload(Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;)V
    .locals 2
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cdma/utk/UtkResponseMessage;

    .prologue
    .line 1788
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1794
    :goto_0
    monitor-exit p0

    return-void

    .line 1792
    :cond_0
    const/16 v1, 0x8

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1793
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1788
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public queryUtkSetupMenuFromMD()V
    .locals 3

    .prologue
    .line 2160
    const-string v1, "query utk menu from modem"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2161
    const/16 v1, 0x1e

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2164
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->queryUtkSetupMenuFromMD(Ljava/lang/String;Landroid/os/Message;)V

    .line 2165
    return-void
.end method

.method public registerLteRilEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2188
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 2189
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    if-eqz v0, :cond_2

    .line 2190
    const-string v0, "UTK LTE: sLteDcPhoneProxy != null "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2191
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getRilDcArbitrator()Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    .line 2192
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sRilDcArbitrator:Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    if-eqz v0, :cond_0

    .line 2193
    const-string v0, "UTK LTE: sRilDcArbitrator != null "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2195
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 2196
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLtePhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_1

    .line 2197
    const-string v0, "UTK LTE: sLtePhone != null "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2198
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/UtkService;->sLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 2200
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_2

    .line 2201
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnUtkSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2202
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnUtkProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2206
    :cond_2
    return-void
.end method

.method public unRegisterLteRilEvents()V
    .locals 2

    .prologue
    .line 2213
    const-string v0, "unRegister Lte Ril events"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2214
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mMutliSimType:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 2217
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUtkSessionEnd(Landroid/os/Handler;)V

    .line 2218
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService;->mLteCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUtkProactiveCmd(Landroid/os/Handler;)V

    .line 2221
    :cond_0
    return-void
.end method