.class public abstract Landroid/telephony/VisualVoicemailService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;
    }
.end annotation


# static fields
.field public static final DATA_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "data_phone_account_handle"

.field public static final DATA_SMS:Ljava/lang/String; = "data_sms"

.field public static final MSG_ON_CELL_SERVICE_CONNECTED:I = 0x1

.field public static final MSG_ON_SIM_REMOVED:I = 0x3

.field public static final MSG_ON_SMS_RECEIVED:I = 0x2

.field public static final MSG_TASK_ENDED:I = 0x4

.field public static final MSG_TASK_STOPPED:I = 0x5

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.VisualVoicemailService"

.field private static final TAG:Ljava/lang/String; = "VvmService"


# instance fields
.field private final mMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Messenger;

    .line 5
    .line 6
    new-instance v1, Landroid/telephony/VisualVoicemailService$1;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Landroid/telephony/VisualVoicemailService$1;-><init>(Landroid/telephony/VisualVoicemailService;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroid/telephony/VisualVoicemailService;->mMessenger:Landroid/os/Messenger;

    .line 15
    .line 16
    return-void
.end method

.method private static getSubId(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I
    .locals 2

    .line 1
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 8
    .line 9
    const-class v1, Landroid/telecom/TelecomManager;

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/telecom/TelecomManager;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public static final sendVisualVoicemailSms(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;SLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 7

    .line 1
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 9
    .line 10
    invoke-static {p0, p1}, Landroid/telephony/VisualVoicemailService;->getSubId(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    move-object v3, p2

    .line 15
    move v4, p3

    .line 16
    move-object v5, p4

    .line 17
    move-object v6, p5

    .line 18
    invoke-virtual/range {v1 .. v6}, Landroid/telephony/TelephonyManager;->sendVisualVoicemailSmsForSubscriber(ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static final setSmsFilterSettings(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/telephony/VisualVoicemailSmsFilterSettings;)V
    .locals 1

    .line 1
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/telephony/VisualVoicemailService;->getSubId(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->disableVisualVoicemailSmsFilter(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0, p0, p2}, Landroid/telephony/TelephonyManager;->enableVisualVoicemailSmsFilter(ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Landroid/telephony/VisualVoicemailService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public abstract onCellServiceConnected(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;Landroid/telecom/PhoneAccountHandle;)V
.end method

.method public abstract onSimRemoved(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;Landroid/telecom/PhoneAccountHandle;)V
.end method

.method public abstract onSmsReceived(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;Landroid/telephony/VisualVoicemailSms;)V
.end method

.method public abstract onStopped(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;)V
.end method
