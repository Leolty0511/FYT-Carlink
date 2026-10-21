.class public final Landroid/bluetooth/le/AdvertiseSettings$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/AdvertiseSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mConnectable:Z

.field private mMode:I

.field private mTimeoutMillis:I

.field private mTxPowerLevel:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mMode:I

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    iput v1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTxPowerLevel:I

    .line 9
    .line 10
    iput v0, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTimeoutMillis:I

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mConnectable:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public build()Landroid/bluetooth/le/AdvertiseSettings;
    .locals 7

    new-instance v6, Landroid/bluetooth/le/AdvertiseSettings;

    iget v1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mMode:I

    iget v2, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTxPowerLevel:I

    iget-boolean v3, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mConnectable:Z

    iget v4, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTimeoutMillis:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/le/AdvertiseSettings;-><init>(IIZILandroid/bluetooth/le/AdvertiseSettings$1;)V

    return-object v6
.end method

.method public setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-gt p1, v0, :cond_0

    .line 5
    .line 6
    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mMode:I

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string/jumbo v1, "unknown mode "

    .line 12
    .line 13
    .line 14
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mConnectable:Z

    return-object p0
.end method

.method public setTimeout(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const v0, 0x2bf20

    .line 4
    .line 5
    .line 6
    if-gt p1, v0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTimeoutMillis:I

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string/jumbo v0, "timeoutMillis invalid (must be 0-180000 milliseconds)"

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-gt p1, v0, :cond_0

    .line 5
    .line 6
    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTxPowerLevel:I

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string/jumbo v1, "unknown tx power level "

    .line 12
    .line 13
    .line 14
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method
