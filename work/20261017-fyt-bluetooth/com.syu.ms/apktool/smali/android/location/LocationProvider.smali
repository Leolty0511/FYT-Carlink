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
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "[^a-zA-Z0-9]"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    return-void

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "provider name contains illegal character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z
    .locals 2

    const-string v0, "passive"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-virtual {p2}, Landroid/location/Criteria;->getAccuracy()I

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Landroid/location/Criteria;->getAccuracy()I

    move-result p0

    iget v1, p1, Lcom/android/internal/location/ProviderProperties;->i:I

    if-ge p0, v1, :cond_2

    return v0

    .line 3
    :cond_2
    invoke-virtual {p2}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p2}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result p0

    iget v1, p1, Lcom/android/internal/location/ProviderProperties;->h:I

    if-ge p0, v1, :cond_3

    return v0

    .line 4
    :cond_3
    invoke-virtual {p2}, Landroid/location/Criteria;->isAltitudeRequired()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-boolean p0, p1, Lcom/android/internal/location/ProviderProperties;->e:Z

    if-nez p0, :cond_4

    return v0

    .line 5
    :cond_4
    invoke-virtual {p2}, Landroid/location/Criteria;->isSpeedRequired()Z

    move-result p0

    if-eqz p0, :cond_5

    iget-boolean p0, p1, Lcom/android/internal/location/ProviderProperties;->f:Z

    if-nez p0, :cond_5

    return v0

    .line 6
    :cond_5
    invoke-virtual {p2}, Landroid/location/Criteria;->isBearingRequired()Z

    move-result p0

    if-eqz p0, :cond_6

    iget-boolean p0, p1, Lcom/android/internal/location/ProviderProperties;->g:Z

    if-nez p0, :cond_6

    return v0

    .line 7
    :cond_6
    invoke-virtual {p2}, Landroid/location/Criteria;->isCostAllowed()Z

    move-result p0

    if-nez p0, :cond_7

    iget-boolean p0, p1, Lcom/android/internal/location/ProviderProperties;->d:Z

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getAccuracy()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget v0, v0, Lcom/android/internal/location/ProviderProperties;->i:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget v0, v0, Lcom/android/internal/location/ProviderProperties;->h:I

    return v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->d:Z

    return v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    invoke-static {v0, v1, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    move-result p1

    return p1
.end method

.method public requiresCell()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->c:Z

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->a:Z

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->b:Z

    return v0
.end method

.method public supportsAltitude()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->e:Z

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->g:Z

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderProperties;->f:Z

    return v0
.end method
