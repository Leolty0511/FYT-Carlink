.class public final Landroid/location/LocationRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACCURACY_BLOCK:I = 0x66

.field public static final ACCURACY_CITY:I = 0x68

.field public static final ACCURACY_FINE:I = 0x64

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final FASTEST_INTERVAL_FACTOR:D = 6.0

.field public static final POWER_HIGH:I = 0xcb

.field public static final POWER_LOW:I = 0xc9

.field public static final POWER_NONE:I = 0xc8


# instance fields
.field private mExpireAt:J

.field private mExplicitFastestInterval:Z

.field private mFastestInterval:J

.field private mHideFromAppOps:Z

.field private mInterval:J

.field private mNumUpdates:I

.field private mProvider:Ljava/lang/String;

.field private mQuality:I

.field private mSmallestDisplacement:F

.field private mWorkSource:Landroid/os/WorkSource;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/location/LocationRequest$1;

    invoke-direct {v0}, Landroid/location/LocationRequest$1;-><init>()V

    sput-object v0, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc9

    .line 2
    iput v0, p0, Landroid/location/LocationRequest;->mQuality:I

    const-wide/32 v0, 0x36ee80

    .line 3
    iput-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    double-to-long v0, v0

    .line 4
    iput-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    const-wide v1, 0x7fffffffffffffffL

    .line 6
    iput-wide v1, p0, Landroid/location/LocationRequest;->mExpireAt:J

    const v1, 0x7fffffff

    .line 7
    iput v1, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 10
    iput-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    const-string v0, "fused"

    .line 11
    iput-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/location/LocationRequest;)V
    .locals 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc9

    .line 13
    iput v0, p0, Landroid/location/LocationRequest;->mQuality:I

    const-wide/32 v0, 0x36ee80

    .line 14
    iput-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    double-to-long v0, v0

    .line 15
    iput-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    const-wide v1, 0x7fffffffffffffffL

    .line 17
    iput-wide v1, p0, Landroid/location/LocationRequest;->mExpireAt:J

    const v1, 0x7fffffff

    .line 18
    iput v1, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    const/4 v1, 0x0

    .line 19
    iput v1, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 21
    iput-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    const-string v0, "fused"

    .line 22
    iput-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    .line 23
    iget v0, p1, Landroid/location/LocationRequest;->mQuality:I

    iput v0, p0, Landroid/location/LocationRequest;->mQuality:I

    .line 24
    iget-wide v0, p1, Landroid/location/LocationRequest;->mInterval:J

    iput-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    .line 25
    iget-wide v0, p1, Landroid/location/LocationRequest;->mFastestInterval:J

    iput-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    .line 26
    iget-boolean v0, p1, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    iput-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    .line 27
    iget-wide v0, p1, Landroid/location/LocationRequest;->mExpireAt:J

    iput-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    .line 28
    iget v0, p1, Landroid/location/LocationRequest;->mNumUpdates:I

    iput v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    .line 29
    iget v0, p1, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    iput v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    .line 30
    iget-object v0, p1, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    iput-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    iput-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 32
    iget-boolean p1, p1, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    iput-boolean p1, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    return-void
.end method

.method private static checkDisplacement(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid displacement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkInterval(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkProvider(Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkQuality(I)V
    .locals 3

    const/16 v0, 0x64

    if-eq p0, v0, :cond_1

    const/16 v0, 0x66

    if-eq p0, v0, :cond_1

    const/16 v0, 0x68

    if-eq p0, v0, :cond_1

    const/16 v0, 0xcb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc9

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static create()Landroid/location/LocationRequest;
    .locals 1

    .line 1
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    return-object v0
.end method

.method public static createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gez v1, :cond_1

    move p3, v0

    .line 1
    :cond_1
    invoke-virtual {p0}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/location/Criteria;->getPowerRequirement()I

    const/16 p0, 0xc9

    goto :goto_0

    :cond_2
    const/16 p0, 0x66

    goto :goto_0

    :cond_3
    const/16 p0, 0x64

    .line 3
    :goto_0
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    invoke-virtual {v0, p0}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/location/LocationRequest;->setSmallestDisplacement(F)Landroid/location/LocationRequest;

    move-result-object p0

    if-eqz p4, :cond_4

    .line 4
    invoke-virtual {p0, v1}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    :cond_4
    return-object p0
.end method

.method public static createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gez v1, :cond_1

    move p3, v0

    :cond_1
    const-string v0, "passive"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xc8

    goto :goto_0

    :cond_2
    const-string v0, "gps"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x64

    goto :goto_0

    :cond_3
    const/16 v0, 0xc9

    .line 3
    :goto_0
    new-instance v1, Landroid/location/LocationRequest;

    invoke-direct {v1}, Landroid/location/LocationRequest;-><init>()V

    invoke-virtual {v1, p0}, Landroid/location/LocationRequest;->setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/location/LocationRequest;->setSmallestDisplacement(F)Landroid/location/LocationRequest;

    move-result-object p0

    if-eqz p4, :cond_4

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    :cond_4
    return-object p0
.end method

.method public static qualityToString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_5

    const/16 v0, 0x66

    if-eq p0, v0, :cond_4

    const/16 v0, 0x68

    if-eq p0, v0, :cond_3

    const/16 v0, 0xcb

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_0

    const-string p0, "???"

    return-object p0

    :cond_0
    const-string p0, "POWER_LOW"

    return-object p0

    :cond_1
    const-string p0, "POWER_NONE"

    return-object p0

    :cond_2
    const-string p0, "POWER_HIGH"

    return-object p0

    :cond_3
    const-string p0, "ACCURACY_CITY"

    return-object p0

    :cond_4
    const-string p0, "ACCURACY_BLOCK"

    return-object p0

    :cond_5
    const-string p0, "ACCURACY_FINE"

    return-object p0
.end method


# virtual methods
.method public decrementNumUpdates()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 2
    iput v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    .line 3
    :cond_0
    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExpireAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    return-wide v0
.end method

.method public getFastestInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    return-wide v0
.end method

.method public getHideFromAppOps()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    return v0
.end method

.method public getInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    return-wide v0
.end method

.method public getNumUpdates()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    return v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getQuality()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/location/LocationRequest;->mQuality:I

    return v0
.end method

.method public getSmallestDisplacement()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    return v0
.end method

.method public getWorkSource()Landroid/os/WorkSource;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method public setExpireAt(J)Landroid/location/LocationRequest;
    .locals 2

    .line 1
    iput-wide p1, p0, Landroid/location/LocationRequest;->mExpireAt:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    .line 2
    iput-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    :cond_0
    return-object p0
.end method

.method public setExpireIn(J)Landroid/location/LocationRequest;
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    sub-long v4, v2, v0

    cmp-long v4, p1, v4

    if-lez v4, :cond_0

    .line 2
    iput-wide v2, p0, Landroid/location/LocationRequest;->mExpireAt:J

    goto :goto_0

    :cond_0
    add-long/2addr p1, v0

    .line 3
    iput-wide p1, p0, Landroid/location/LocationRequest;->mExpireAt:J

    .line 4
    :goto_0
    iget-wide p1, p0, Landroid/location/LocationRequest;->mExpireAt:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_1

    iput-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    :cond_1
    return-object p0
.end method

.method public setFastestInterval(J)Landroid/location/LocationRequest;
    .locals 1

    .line 1
    invoke-static {p1, p2}, Landroid/location/LocationRequest;->checkInterval(J)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    .line 3
    iput-wide p1, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    return-object p0
.end method

.method public setHideFromAppOps(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    return-void
.end method

.method public setInterval(J)Landroid/location/LocationRequest;
    .locals 2

    .line 1
    invoke-static {p1, p2}, Landroid/location/LocationRequest;->checkInterval(J)V

    .line 2
    iput-wide p1, p0, Landroid/location/LocationRequest;->mInterval:J

    .line 3
    iget-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    if-nez v0, :cond_0

    long-to-double p1, p1

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    div-double/2addr p1, v0

    double-to-long p1, p1

    .line 4
    iput-wide p1, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    :cond_0
    return-object p0
.end method

.method public setNumUpdates(I)Landroid/location/LocationRequest;
    .locals 3

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid numUpdates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/location/LocationRequest;->checkProvider(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    return-object p0
.end method

.method public setQuality(I)Landroid/location/LocationRequest;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/location/LocationRequest;->checkQuality(I)V

    .line 2
    iput p1, p0, Landroid/location/LocationRequest;->mQuality:I

    return-object p0
.end method

.method public setSmallestDisplacement(F)Landroid/location/LocationRequest;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/location/LocationRequest;->checkDisplacement(F)V

    .line 2
    iput p1, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    return-object p0
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request["

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/LocationRequest;->mQuality:I

    invoke-static {v1}, Landroid/location/LocationRequest;->qualityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    iget v1, p0, Landroid/location/LocationRequest;->mQuality:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    const-string v1, " requested="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-wide v1, p0, Landroid/location/LocationRequest;->mInterval:J

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_1
    const-string v1, " fastest="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-wide v1, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 9
    iget-wide v1, p0, Landroid/location/LocationRequest;->mExpireAt:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-string v3, " expireIn="

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 13
    :cond_2
    iget v1, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_3

    const-string v1, " num="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v1, 0x5d

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Landroid/location/LocationRequest;->mQuality:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    iget-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    iget p2, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7
    iget-boolean p2, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object p2, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
