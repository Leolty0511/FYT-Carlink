.class public final Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/PeriodicAdvertisingParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private includeTxPower:Z

.field private interval:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->includeTxPower:Z

    .line 6
    .line 7
    const v0, 0xffef

    .line 8
    .line 9
    .line 10
    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->interval:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public build()Landroid/bluetooth/le/PeriodicAdvertisingParameters;
    .locals 4

    new-instance v0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;

    iget-boolean v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->includeTxPower:Z

    iget v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->interval:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/le/PeriodicAdvertisingParameters;-><init>(ZILandroid/bluetooth/le/PeriodicAdvertisingParameters$1;)V

    return-object v0
.end method

.method public setIncludeTxPower(Z)Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->includeTxPower:Z

    return-object p0
.end method

.method public setInterval(I)Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;
    .locals 1

    .line 1
    const/16 v0, 0x50

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    const v0, 0xffef

    .line 6
    .line 7
    .line 8
    if-gt p1, v0, :cond_0

    .line 9
    .line 10
    iput p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingParameters$Builder;->interval:I

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v0, "Invalid interval (must be 80-65519)"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method
