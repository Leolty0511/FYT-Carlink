.class public Lcom/android/internal/telephony/UsimNotifier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sEnabled:Z = false

.field private static sInstance:Lcom/android/internal/telephony/UsimNotifier; = null

.field private static sLoaded:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/UsimNotifier;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/internal/telephony/UsimNotifier;->sInstance:Lcom/android/internal/telephony/UsimNotifier;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/app/AddonManager;->getDefault()Landroid/app/AddonManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x104005b

    .line 10
    .line 11
    .line 12
    const-class v2, Lcom/android/internal/telephony/UsimNotifier;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/app/AddonManager;->getAddon(ILjava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/internal/telephony/UsimNotifier;

    .line 19
    .line 20
    sput-object v0, Lcom/android/internal/telephony/UsimNotifier;->sInstance:Lcom/android/internal/telephony/UsimNotifier;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Lcom/android/internal/telephony/UsimNotifier;

    .line 25
    .line 26
    invoke-direct {v0}, Lcom/android/internal/telephony/UsimNotifier;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/android/internal/telephony/UsimNotifier;->sInstance:Lcom/android/internal/telephony/UsimNotifier;

    .line 30
    .line 31
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/UsimNotifier;->sInstance:Lcom/android/internal/telephony/UsimNotifier;

    .line 32
    .line 33
    return-object v0
.end method

.method public static isNotifyEnabled(Landroid/content/Context;)Z
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/internal/telephony/UsimNotifier;->sLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-boolean p0, Lcom/android/internal/telephony/UsimNotifier;->sEnabled:Z

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    if-eqz p0, :cond_4

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    sput-boolean v0, Lcom/android/internal/telephony/UsimNotifier;->sLoaded:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    sget-boolean p0, Lcom/android/internal/telephony/UsimNotifier;->sEnabled:Z

    .line 20
    .line 21
    return p0

    .line 22
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const v2, 0x1070072

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_4

    .line 34
    .line 35
    array-length v2, v1

    .line 36
    if-lez v2, :cond_4

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    iget-object p0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 p0, 0x0

    .line 48
    :goto_0
    array-length v2, v1

    .line 49
    const/4 v3, 0x0

    .line 50
    :goto_1
    if-ge v3, v2, :cond_4

    .line 51
    .line 52
    aget-object v4, v1, v3

    .line 53
    .line 54
    if-eqz v4, :cond_3

    .line 55
    .line 56
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    sput-boolean v0, Lcom/android/internal/telephony/UsimNotifier;->sEnabled:Z

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    :goto_2
    sget-boolean p0, Lcom/android/internal/telephony/UsimNotifier;->sEnabled:Z

    .line 69
    .line 70
    return p0
.end method


# virtual methods
.method public startNotify(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
