.class public Lorg/greenrobot/eventbus/android/AndroidLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/greenrobot/eventbus/Logger;


# static fields
.field private static final ANDROID_LOG_AVAILABLE:Z


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    sget v0, Landroid/util/Log;->VERBOSE:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :catch_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    sput-boolean v0, Lorg/greenrobot/eventbus/android/AndroidLogger;->ANDROID_LOG_AVAILABLE:Z

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/greenrobot/eventbus/android/AndroidLogger;->tag:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static isAndroidLogAvailable()Z
    .locals 1

    sget-boolean v0, Lorg/greenrobot/eventbus/android/AndroidLogger;->ANDROID_LOG_AVAILABLE:Z

    return v0
.end method

.method private mapLevel(Ljava/util/logging/Level;)I
    .locals 1

    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result p1

    const/16 v0, 0x320

    if-ge p1, v0, :cond_1

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p1, 0x3

    return p1

    :cond_1
    const/16 v0, 0x384

    if-ge p1, v0, :cond_2

    const/4 p1, 0x4

    return p1

    :cond_2
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_3

    const/4 p1, 0x5

    return p1

    :cond_3
    const/4 p1, 0x6

    return p1
.end method


# virtual methods
.method public log(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/greenrobot/eventbus/android/AndroidLogger;->mapLevel(Ljava/util/logging/Level;)I

    move-result p1

    iget-object v0, p0, Lorg/greenrobot/eventbus/android/AndroidLogger;->tag:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 3
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    if-eq p1, v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lorg/greenrobot/eventbus/android/AndroidLogger;->mapLevel(Ljava/util/logging/Level;)I

    move-result p1

    iget-object v0, p0, Lorg/greenrobot/eventbus/android/AndroidLogger;->tag:Ljava/lang/String;

    const-string v1, "\n"

    .line 5
    invoke-static {p2, v1}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 6
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
