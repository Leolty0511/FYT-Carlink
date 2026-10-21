.class public Landroid/os/NullVibrator;
.super Landroid/os/Vibrator;
.source "SourceFile"


# static fields
.field private static final sInstance:Landroid/os/NullVibrator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/NullVibrator;

    invoke-direct {v0}, Landroid/os/NullVibrator;-><init>()V

    sput-object v0, Landroid/os/NullVibrator;->sInstance:Landroid/os/NullVibrator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/os/NullVibrator;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/NullVibrator;->sInstance:Landroid/os/NullVibrator;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public hasVibrator()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public vibrate(ILjava/lang/String;J)V
    .locals 0

    .line 3
    invoke-virtual {p0, p3, p4}, Landroid/os/NullVibrator;->vibrate(J)V

    return-void
.end method

.method public vibrate(ILjava/lang/String;[JI)V
    .locals 0

    .line 4
    invoke-virtual {p0, p3, p4}, Landroid/os/NullVibrator;->vibrate([JI)V

    return-void
.end method

.method public vibrate(J)V
    .locals 0

    return-void
.end method

.method public vibrate([JI)V
    .locals 0

    .line 1
    array-length p1, p1

    if-ge p2, p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method
