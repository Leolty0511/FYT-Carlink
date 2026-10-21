.class public Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/fdnsvr/FdnServiceManger$FdnInterface;
    }
.end annotation


# static fields
.field public static final FDNSERVICE_PACKAGENAME:Ljava/lang/String; = "com.spread.cachefdn"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFdnInterface:Lcom/android/internal/telephony/fdnsvr/FdnServiceManger$FdnInterface;

.field private mService:Lcom/android/internal/telephony/IFdnService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/android/internal/telephony/fdnsvr/FdnServiceUtil;->getIFdnService(Landroid/content/Context;)Lcom/android/internal/telephony/IFdnService;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;->mService:Lcom/android/internal/telephony/IFdnService;

    .line 11
    .line 12
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getFdnEnable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;->mFdnInterface:Lcom/android/internal/telephony/fdnsvr/FdnServiceManger$FdnInterface;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "FdnService"

    .line 6
    .line 7
    const-string v1, "getFdnEnable----->mFdnInterface == null "

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/fdnsvr/FdnServiceManger$FdnInterface;->getFdnEnable()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method private getIFdnService(Landroid/content/Context;)Lcom/android/internal/telephony/IFdnService;
    .locals 0

    iget-object p1, p0, Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;->mService:Lcom/android/internal/telephony/IFdnService;

    return-object p1
.end method

.method private isNeedFilterMessaging()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;->mFdnInterface:Lcom/android/internal/telephony/fdnsvr/FdnServiceManger$FdnInterface;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/fdnsvr/FdnServiceManger$FdnInterface;->isNeedFilterMessaging()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method


# virtual methods
.method public process(Landroid/content/Context;IJLjava/util/List;[B)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[B)I"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;->mFdnInterface:Lcom/android/internal/telephony/fdnsvr/FdnServiceManger$FdnInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    const-string v1, "FdnService"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    :try_start_1
    const-string p2, "FdnServiceManger---->process()---->FdnInterface == null, FdnInterface must be imlpemeted"

    .line 9
    .line 10
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;->getFdnEnable()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string p2, "FdnServiceManger----->fdn function is unable"

    .line 21
    .line 22
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return p1

    .line 26
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;->isNeedFilterMessaging()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    const-string p2, "FdnServiceManger----->no need to filter"

    .line 33
    .line 34
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return p1

    .line 38
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;->getIFdnService(Landroid/content/Context;)Lcom/android/internal/telephony/IFdnService;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    const-string p2, "FdnServiceManger----->getIFdnService() == null"

    .line 49
    .line 50
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return p1

    .line 54
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;->getFdnEnable()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    invoke-direct {p0}, Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;->isNeedFilterMessaging()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    const-string v0, "FdnServiceManger----->begin to IFdnservice process() "

    .line 67
    .line 68
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    invoke-direct {p0}, Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;->getIFdnService(Landroid/content/Context;)Lcom/android/internal/telephony/IFdnService;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    move v2, p2

    .line 80
    move-wide v3, p3

    .line 81
    move-object v5, p5

    .line 82
    move-object v6, p6

    .line 83
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/IFdnService;->process(IJLjava/util/List;[B)I

    .line 84
    .line 85
    .line 86
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    :catch_0
    :cond_4
    return p1
.end method

.method public setFdnListner(Lcom/android/internal/telephony/fdnsvr/FdnServiceManger$FdnInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/fdnsvr/FdnServiceManger;->mFdnInterface:Lcom/android/internal/telephony/fdnsvr/FdnServiceManger$FdnInterface;

    return-void
.end method
