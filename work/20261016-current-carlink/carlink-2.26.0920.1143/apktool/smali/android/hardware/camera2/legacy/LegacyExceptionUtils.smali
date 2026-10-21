.class public Landroid/hardware/camera2/legacy/LegacyExceptionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;
    }
.end annotation


# static fields
.field public static final ALREADY_EXISTS:I

.field public static final BAD_VALUE:I

.field public static final DEAD_OBJECT:I

.field public static final INVALID_OPERATION:I

.field public static final NO_ERROR:I = 0x0

.field public static final PERMISSION_DENIED:I

.field private static final TAG:Ljava/lang/String; = "LegacyExceptionUtils"

.field public static final TIMED_OUT:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroid/system/OsConstants;->EPERM:I

    .line 2
    .line 3
    neg-int v0, v0

    .line 4
    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->PERMISSION_DENIED:I

    .line 5
    .line 6
    sget v0, Landroid/system/OsConstants;->EEXIST:I

    .line 7
    .line 8
    neg-int v0, v0

    .line 9
    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->ALREADY_EXISTS:I

    .line 10
    .line 11
    sget v0, Landroid/system/OsConstants;->EINVAL:I

    .line 12
    .line 13
    neg-int v0, v0

    .line 14
    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    .line 15
    .line 16
    sget v0, Landroid/system/OsConstants;->ENOSYS:I

    .line 17
    .line 18
    neg-int v0, v0

    .line 19
    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->DEAD_OBJECT:I

    .line 20
    .line 21
    sget v0, Landroid/system/OsConstants;->EPIPE:I

    .line 22
    .line 23
    neg-int v0, v0

    .line 24
    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->INVALID_OPERATION:I

    .line 25
    .line 26
    sget v0, Landroid/system/OsConstants;->ETIMEDOUT:I

    .line 27
    .line 28
    neg-int v0, v0

    .line 29
    sput v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->TIMED_OUT:I

    .line 30
    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/AssertionError;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 7
    .line 8
    .line 9
    throw v0
.end method

.method public static throwOnError(I)I
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    sget v0, Landroid/system/OsConstants;->ENODEV:I

    .line 6
    .line 7
    neg-int v0, v0

    .line 8
    if-eq p0, v0, :cond_2

    .line 9
    .line 10
    if-ltz p0, :cond_1

    .line 11
    .line 12
    return p0

    .line 13
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string v1, "Unknown error "

    .line 16
    .line 17
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :cond_2
    new-instance p0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;

    .line 26
    .line 27
    invoke-direct {p0}, Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public static throwOnServiceError(I)V
    .locals 3

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->PERMISSION_DENIED:I

    .line 5
    .line 6
    if-eq p0, v0, :cond_b

    .line 7
    .line 8
    sget v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->ALREADY_EXISTS:I

    .line 9
    .line 10
    if-ne p0, v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    sget v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->BAD_VALUE:I

    .line 14
    .line 15
    if-eq p0, v0, :cond_a

    .line 16
    .line 17
    sget v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->DEAD_OBJECT:I

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    if-eq p0, v0, :cond_9

    .line 21
    .line 22
    sget v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->TIMED_OUT:I

    .line 23
    .line 24
    const/16 v2, 0xa

    .line 25
    .line 26
    if-eq p0, v0, :cond_8

    .line 27
    .line 28
    sget v0, Landroid/system/OsConstants;->EACCES:I

    .line 29
    .line 30
    neg-int v0, v0

    .line 31
    if-eq p0, v0, :cond_7

    .line 32
    .line 33
    sget v0, Landroid/system/OsConstants;->EBUSY:I

    .line 34
    .line 35
    neg-int v0, v0

    .line 36
    if-eq p0, v0, :cond_6

    .line 37
    .line 38
    sget v0, Landroid/system/OsConstants;->EUSERS:I

    .line 39
    .line 40
    neg-int v0, v0

    .line 41
    if-eq p0, v0, :cond_5

    .line 42
    .line 43
    sget v0, Landroid/system/OsConstants;->ENODEV:I

    .line 44
    .line 45
    neg-int v0, v0

    .line 46
    if-eq p0, v0, :cond_4

    .line 47
    .line 48
    sget v0, Landroid/system/OsConstants;->EOPNOTSUPP:I

    .line 49
    .line 50
    neg-int v0, v0

    .line 51
    if-eq p0, v0, :cond_3

    .line 52
    .line 53
    sget v0, Landroid/hardware/camera2/legacy/LegacyExceptionUtils;->INVALID_OPERATION:I

    .line 54
    .line 55
    if-ne p0, v0, :cond_2

    .line 56
    .line 57
    const-string p0, "Illegal state encountered in camera service."

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const-string v0, "Unknown camera device error "

    .line 61
    .line 62
    invoke-static {v0, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const/16 v1, 0x9

    .line 68
    .line 69
    const-string p0, "Deprecated camera HAL does not support this"

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    const-string p0, "Camera device not available"

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_5
    const/16 v1, 0x8

    .line 76
    .line 77
    const-string p0, "Maximum number of cameras in use"

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_6
    const/4 v1, 0x7

    .line 81
    const-string p0, "Camera already in use"

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_7
    const/4 v1, 0x6

    .line 85
    const-string p0, "Camera disabled by policy"

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_8
    const-string p0, "Operation timed out in camera service"

    .line 89
    .line 90
    :goto_0
    move v1, v2

    .line 91
    goto :goto_1

    .line 92
    :cond_9
    const-string p0, "Camera service not available"

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_a
    const/4 v1, 0x3

    .line 96
    const-string p0, "Bad argument passed to camera service"

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_b
    const/4 v1, 0x1

    .line 100
    const-string p0, "Lacking privileges to access camera service"

    .line 101
    .line 102
    :goto_1
    new-instance v0, Landroid/os/ServiceSpecificException;

    .line 103
    .line 104
    invoke-direct {v0, v1, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v0
.end method
