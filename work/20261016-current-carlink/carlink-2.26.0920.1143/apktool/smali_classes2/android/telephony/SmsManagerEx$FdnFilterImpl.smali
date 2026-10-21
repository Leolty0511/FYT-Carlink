.class Landroid/telephony/SmsManagerEx$FdnFilterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/telephony/fdnsvr/FdnServiceManger$FdnInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SmsManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FdnFilterImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/SmsManagerEx;


# direct methods
.method private constructor <init>(Landroid/telephony/SmsManagerEx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/telephony/SmsManagerEx$FdnFilterImpl;->this$0:Landroid/telephony/SmsManagerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/telephony/SmsManagerEx;Landroid/telephony/SmsManagerEx$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/telephony/SmsManagerEx$FdnFilterImpl;-><init>(Landroid/telephony/SmsManagerEx;)V

    return-void
.end method


# virtual methods
.method public getFdnEnable()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/telephony/SmsManagerEx$FdnFilterImpl;->this$0:Landroid/telephony/SmsManagerEx;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/telephony/SmsManagerEx;->access$100(Landroid/telephony/SmsManagerEx;)Landroid/telephony/TelephonyManagerEx;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/telephony/SmsManagerEx$FdnFilterImpl;->this$0:Landroid/telephony/SmsManagerEx;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/telephony/SmsManagerEx;->access$000(Landroid/telephony/SmsManagerEx;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManagerEx;->getIccFdnEnabled(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return v0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public isNeedFilterMessaging()Z
    .locals 3

    .line 1
    const-string v0, "ro.messag.fdnfilter"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "isNeedFilterMessaging -tempt="

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "qiujianhui"

    .line 22
    .line 23
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    return v0

    .line 34
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    return v0
.end method
