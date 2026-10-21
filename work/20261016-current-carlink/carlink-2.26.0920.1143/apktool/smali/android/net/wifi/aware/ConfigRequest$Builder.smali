.class public final Landroid/net/wifi/aware/ConfigRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/ConfigRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mClusterHigh:I

.field private mClusterLow:I

.field private mDiscoveryWindowInterval:[I

.field private mMasterPreference:I

.field private mSupport5gBand:Z


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
    iput-boolean v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mSupport5gBand:Z

    .line 6
    .line 7
    iput v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mMasterPreference:I

    .line 8
    .line 9
    iput v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterLow:I

    .line 10
    .line 11
    const v0, 0xffff

    .line 12
    .line 13
    .line 14
    iput v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterHigh:I

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    new-array v0, v0, [I

    .line 18
    .line 19
    fill-array-data v0, :array_0

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mDiscoveryWindowInterval:[I

    .line 23
    .line 24
    return-void

    .line 25
    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public build()Landroid/net/wifi/aware/ConfigRequest;
    .locals 9

    .line 1
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterLow:I

    .line 2
    .line 3
    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterHigh:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/net/wifi/aware/ConfigRequest;

    .line 8
    .line 9
    iget-boolean v3, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mSupport5gBand:Z

    .line 10
    .line 11
    iget v4, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mMasterPreference:I

    .line 12
    .line 13
    iget v5, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterLow:I

    .line 14
    .line 15
    iget v6, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterHigh:I

    .line 16
    .line 17
    iget-object v7, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mDiscoveryWindowInterval:[I

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    move-object v2, v0

    .line 21
    invoke-direct/range {v2 .. v8}, Landroid/net/wifi/aware/ConfigRequest;-><init>(ZIII[ILandroid/net/wifi/aware/ConfigRequest$1;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v1, "Invalid argument combination - must have Cluster Low <= Cluster High"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public setClusterHigh(I)Landroid/net/wifi/aware/ConfigRequest$Builder;
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    const v0, 0xffff

    .line 4
    .line 5
    .line 6
    if-gt p1, v0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterHigh:I

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v0, "Cluster specification must not exceed 0xFFFF"

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v0, "Cluster specification must be non-negative"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public setClusterLow(I)Landroid/net/wifi/aware/ConfigRequest$Builder;
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    const v0, 0xffff

    .line 4
    .line 5
    .line 6
    if-gt p1, v0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mClusterLow:I

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v0, "Cluster specification must not exceed 0xFFFF"

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v0, "Cluster specification must be non-negative"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public setDiscoveryWindowInterval(II)Landroid/net/wifi/aware/ConfigRequest$Builder;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string p2, "Invalid band value"

    .line 10
    .line 11
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p1

    .line 15
    :cond_1
    :goto_0
    const/4 v1, 0x5

    .line 16
    if-nez p1, :cond_2

    .line 17
    .line 18
    if-lt p2, v0, :cond_3

    .line 19
    .line 20
    if-gt p2, v1, :cond_3

    .line 21
    .line 22
    :cond_2
    if-ne p1, v0, :cond_4

    .line 23
    .line 24
    if-ltz p2, :cond_3

    .line 25
    .line 26
    if-gt p2, v1, :cond_3

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string p2, "Invalid interval value: 2.4 GHz [1,5] or 5GHz [0,5]"

    .line 32
    .line 33
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_4
    :goto_1
    iget-object v0, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mDiscoveryWindowInterval:[I

    .line 38
    .line 39
    aput p2, v0, p1

    .line 40
    .line 41
    return-object p0
.end method

.method public setMasterPreference(I)Landroid/net/wifi/aware/ConfigRequest$Builder;
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/16 v0, 0xff

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    if-gt p1, v0, :cond_0

    .line 11
    .line 12
    iput p1, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mMasterPreference:I

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v0, "Master Preference specification must not exceed 255 or use 1 or 255 (reserved values)"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string v0, "Master Preference specification must be non-negative"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public setSupport5gBand(Z)Landroid/net/wifi/aware/ConfigRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/aware/ConfigRequest$Builder;->mSupport5gBand:Z

    return-object p0
.end method
