.class public Landroid/location/LocationProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AVAILABLE:I = 0x2

.field public static final BAD_CHARS_REGEX:Ljava/lang/String; = "[^a-zA-Z0-9]"

.field public static final OUT_OF_SERVICE:I = 0x0

.field public static final TEMPORARILY_UNAVAILABLE:I = 0x1


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mProperties:Lcom/android/internal/location/ProviderProperties;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "[^a-zA-Z0-9]"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iput-object p1, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p2, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string/jumbo v0, "provider name contains illegal character: "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p2
.end method

.method public static propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z
    .locals 2

    .line 1
    const-string/jumbo v0, "passive"

    .line 2
    .line 3
    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    return v0

    .line 15
    :cond_1
    invoke-virtual {p2}, Landroid/location/Criteria;->getAccuracy()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/location/Criteria;->getAccuracy()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    iget v1, p1, Lcom/android/internal/location/ProviderProperties;->mAccuracy:I

    .line 26
    .line 27
    if-ge p0, v1, :cond_2

    .line 28
    .line 29
    return v0

    .line 30
    :cond_2
    invoke-virtual {p2}, Landroid/location/Criteria;->getPowerRequirement()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_3

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/location/Criteria;->getPowerRequirement()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    iget v1, p1, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    .line 41
    .line 42
    if-ge p0, v1, :cond_3

    .line 43
    .line 44
    return v0

    .line 45
    :cond_3
    invoke-virtual {p2}, Landroid/location/Criteria;->isAltitudeRequired()Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_4

    .line 50
    .line 51
    iget-boolean p0, p1, Lcom/android/internal/location/ProviderProperties;->mSupportsAltitude:Z

    .line 52
    .line 53
    if-nez p0, :cond_4

    .line 54
    .line 55
    return v0

    .line 56
    :cond_4
    invoke-virtual {p2}, Landroid/location/Criteria;->isSpeedRequired()Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_5

    .line 61
    .line 62
    iget-boolean p0, p1, Lcom/android/internal/location/ProviderProperties;->mSupportsSpeed:Z

    .line 63
    .line 64
    if-nez p0, :cond_5

    .line 65
    .line 66
    return v0

    .line 67
    :cond_5
    invoke-virtual {p2}, Landroid/location/Criteria;->isBearingRequired()Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_6

    .line 72
    .line 73
    iget-boolean p0, p1, Lcom/android/internal/location/ProviderProperties;->mSupportsBearing:Z

    .line 74
    .line 75
    if-nez p0, :cond_6

    .line 76
    .line 77
    return v0

    .line 78
    :cond_6
    invoke-virtual {p2}, Landroid/location/Criteria;->isCostAllowed()Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-nez p0, :cond_7

    .line 83
    .line 84
    iget-boolean p0, p1, Lcom/android/internal/location/ProviderProperties;->mHasMonetaryCost:Z

    .line 85
    .line 86
    if-eqz p0, :cond_7

    .line 87
    .line 88
    return v0

    .line 89
    :cond_7
    const/4 p0, 0x1

    .line 90
    return p0
.end method


# virtual methods
.method public getAccuracy()I
    .locals 1

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget v0, v0, Lcom/android/internal/location/ProviderProperties;->mAccuracy:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerRequirement()I
    .locals 1

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget v0, v0, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    return v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mHasMonetaryCost:Z

    return v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .locals 2

    iget-object v0, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    invoke-static {v0, v1, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    move-result p1

    return p1
.end method

.method public requiresCell()Z
    .locals 1

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mRequiresCell:Z

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mRequiresNetwork:Z

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mRequiresSatellite:Z

    return v0
.end method

.method public supportsAltitude()Z
    .locals 1

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mSupportsAltitude:Z

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mSupportsBearing:Z

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->mSupportsSpeed:Z

    return v0
.end method
