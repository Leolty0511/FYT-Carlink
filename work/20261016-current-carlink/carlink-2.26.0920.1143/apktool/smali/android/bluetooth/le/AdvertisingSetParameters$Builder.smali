.class public final Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/AdvertisingSetParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private connectable:Z

.field private includeTxPower:Z

.field private interval:I

.field private isAnonymous:Z

.field private isLegacy:Z

.field private primaryPhy:I

.field private scannable:Z

.field private secondaryPhy:I

.field private txPowerLevel:I


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
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->connectable:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->scannable:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isLegacy:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isAnonymous:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->includeTxPower:Z

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->primaryPhy:I

    .line 17
    .line 18
    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->secondaryPhy:I

    .line 19
    .line 20
    const/16 v0, 0xa0

    .line 21
    .line 22
    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->interval:I

    .line 23
    .line 24
    const/4 v0, -0x7

    .line 25
    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->txPowerLevel:I

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public build()Landroid/bluetooth/le/AdvertisingSetParameters;
    .locals 13

    .line 1
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isLegacy:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isAnonymous:Z

    .line 6
    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->connectable:Z

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->scannable:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v1, "Legacy advertisement can\'t be connectable and non-scannable"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->includeTxPower:Z

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v1, "Legacy advertising can\'t include TX power level in header"

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string v1, "Legacy advertising can\'t be anonymous"

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_4
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->connectable:Z

    .line 49
    .line 50
    if-eqz v0, :cond_6

    .line 51
    .line 52
    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->scannable:Z

    .line 53
    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v1, "Advertising can\'t be both connectable and scannable"

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_6
    :goto_1
    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isAnonymous:Z

    .line 66
    .line 67
    if-eqz v1, :cond_8

    .line 68
    .line 69
    if-nez v0, :cond_7

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    const-string v1, "Advertising can\'t be both connectable and anonymous"

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :cond_8
    :goto_2
    new-instance v0, Landroid/bluetooth/le/AdvertisingSetParameters;

    .line 81
    .line 82
    iget-boolean v3, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->connectable:Z

    .line 83
    .line 84
    iget-boolean v4, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->scannable:Z

    .line 85
    .line 86
    iget-boolean v5, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isLegacy:Z

    .line 87
    .line 88
    iget-boolean v6, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isAnonymous:Z

    .line 89
    .line 90
    iget-boolean v7, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->includeTxPower:Z

    .line 91
    .line 92
    iget v8, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->primaryPhy:I

    .line 93
    .line 94
    iget v9, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->secondaryPhy:I

    .line 95
    .line 96
    iget v10, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->interval:I

    .line 97
    .line 98
    iget v11, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->txPowerLevel:I

    .line 99
    .line 100
    const/4 v12, 0x0

    .line 101
    move-object v2, v0

    .line 102
    invoke-direct/range {v2 .. v12}, Landroid/bluetooth/le/AdvertisingSetParameters;-><init>(ZZZZZIIIILandroid/bluetooth/le/AdvertisingSetParameters$1;)V

    .line 103
    .line 104
    .line 105
    return-object v0
.end method

.method public setAnonymous(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isAnonymous:Z

    return-object p0
.end method

.method public setConnectable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->connectable:Z

    return-object p0
.end method

.method public setIncludeTxPower(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->includeTxPower:Z

    return-object p0
.end method

.method public setInterval(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 2

    .line 1
    const/16 v0, 0xa0

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    const v0, 0xffffff

    .line 6
    .line 7
    .line 8
    if-gt p1, v0, :cond_0

    .line 9
    .line 10
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->interval:I

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string/jumbo v1, "unknown interval "

    .line 16
    .line 17
    .line 18
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public setLegacyMode(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->isLegacy:Z

    return-object p0
.end method

.method public setPrimaryPhy(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v1, "bad primaryPhy "

    .line 11
    .line 12
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0

    .line 20
    :cond_1
    :goto_0
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->primaryPhy:I

    .line 21
    .line 22
    return-object p0
.end method

.method public setScannable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->scannable:Z

    return-object p0
.end method

.method public setSecondaryPhy(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v1, "bad secondaryPhy "

    .line 14
    .line 15
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :cond_1
    :goto_0
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->secondaryPhy:I

    .line 24
    .line 25
    return-object p0
.end method

.method public setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;
    .locals 2

    .line 1
    const/16 v0, -0x7f

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-gt p1, v0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->txPowerLevel:I

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string/jumbo v1, "unknown txPowerLevel "

    .line 14
    .line 15
    .line 16
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method
