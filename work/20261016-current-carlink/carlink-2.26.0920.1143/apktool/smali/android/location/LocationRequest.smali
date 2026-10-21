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

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "invalid displacement: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkInterval(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string/jumbo v1, "invalid interval: "

    .line 11
    .line 12
    .line 13
    invoke-static {v1, p0, p1}, Landroid/accessibilityservice/c;->f(Ljava/lang/String;J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method private static checkProvider(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    const-string/jumbo v1, "invalid provider: "

    .line 7
    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method private static checkQuality(I)V
    .locals 2

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x66

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x68

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0xcb

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0xc8

    .line 18
    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0xc9

    .line 22
    .line 23
    if-ne p0, v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string/jumbo v1, "invalid quality: "

    .line 29
    .line 30
    .line 31
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public static create()Landroid/location/LocationRequest;
    .locals 1

    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    return-object v0
.end method

.method public static createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    move-wide p1, v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    cmpg-float v1, p3, v0

    .line 10
    .line 11
    if-gez v1, :cond_1

    .line 12
    .line 13
    move p3, v0

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroid/location/Criteria;->getAccuracy()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq v0, v1, :cond_4

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    if-eq v0, v2, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/location/Criteria;->getPowerRequirement()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    const/4 v0, 0x3

    .line 29
    if-eq p0, v0, :cond_2

    .line 30
    .line 31
    const/16 p0, 0xc9

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/16 p0, 0xcb

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    const/16 p0, 0x66

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    const/16 p0, 0x64

    .line 41
    .line 42
    :goto_0
    new-instance v0, Landroid/location/LocationRequest;

    .line 43
    .line 44
    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p0}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0, p1, p2}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0, p1, p2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0, p3}, Landroid/location/LocationRequest;->setSmallestDisplacement(F)Landroid/location/LocationRequest;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    if-eqz p4, :cond_5

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    .line 66
    .line 67
    .line 68
    :cond_5
    return-object p0
.end method

.method public static createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    move-wide p1, v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    cmpg-float v1, p3, v0

    .line 10
    .line 11
    if-gez v1, :cond_1

    .line 12
    .line 13
    move p3, v0

    .line 14
    :cond_1
    const-string/jumbo v0, "passive"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    const/16 v0, 0xc8

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const-string/jumbo v0, "gps"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    const/16 v0, 0x64

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    const/16 v0, 0xc9

    .line 39
    .line 40
    :goto_0
    new-instance v1, Landroid/location/LocationRequest;

    .line 41
    .line 42
    invoke-direct {v1}, Landroid/location/LocationRequest;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0}, Landroid/location/LocationRequest;->setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0, v0}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0, p1, p2}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0, p1, p2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0, p3}, Landroid/location/LocationRequest;->setSmallestDisplacement(F)Landroid/location/LocationRequest;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-eqz p4, :cond_4

    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    invoke-virtual {p0, p1}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    .line 69
    .line 70
    .line 71
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

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    iput v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    .line 11
    .line 12
    :cond_0
    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    .line 13
    .line 14
    if-gez v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    .line 18
    .line 19
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

    iget-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    return-wide v0
.end method

.method public getFastestInterval()J
    .locals 2

    iget-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    return-wide v0
.end method

.method public getHideFromAppOps()Z
    .locals 1

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    return v0
.end method

.method public getInterval()J
    .locals 2

    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    return-wide v0
.end method

.method public getNumUpdates()I
    .locals 1

    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    return v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getQuality()I
    .locals 1

    iget v0, p0, Landroid/location/LocationRequest;->mQuality:I

    return v0
.end method

.method public getSmallestDisplacement()F
    .locals 1

    iget v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    return v0
.end method

.method public getWorkSource()Landroid/os/WorkSource;
    .locals 1

    iget-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method public setExpireAt(J)Landroid/location/LocationRequest;
    .locals 2

    .line 1
    iput-wide p1, p0, Landroid/location/LocationRequest;->mExpireAt:J

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long p1, p1, v0

    .line 6
    .line 7
    if-gez p1, :cond_0

    .line 8
    .line 9
    iput-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    .line 10
    .line 11
    :cond_0
    return-object p0
.end method

.method public setExpireIn(J)Landroid/location/LocationRequest;
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, 0x7fffffffffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    sub-long v4, v2, v0

    .line 11
    .line 12
    cmp-long v4, p1, v4

    .line 13
    .line 14
    if-lez v4, :cond_0

    .line 15
    .line 16
    iput-wide v2, p0, Landroid/location/LocationRequest;->mExpireAt:J

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    add-long/2addr p1, v0

    .line 20
    iput-wide p1, p0, Landroid/location/LocationRequest;->mExpireAt:J

    .line 21
    .line 22
    :goto_0
    iget-wide p1, p0, Landroid/location/LocationRequest;->mExpireAt:J

    .line 23
    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    cmp-long p1, p1, v0

    .line 27
    .line 28
    if-gez p1, :cond_1

    .line 29
    .line 30
    iput-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    .line 31
    .line 32
    :cond_1
    return-object p0
.end method

.method public setFastestInterval(J)Landroid/location/LocationRequest;
    .locals 1

    .line 1
    invoke-static {p1, p2}, Landroid/location/LocationRequest;->checkInterval(J)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    .line 6
    .line 7
    iput-wide p1, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    .line 8
    .line 9
    return-object p0
.end method

.method public setHideFromAppOps(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    return-void
.end method

.method public setInterval(J)Landroid/location/LocationRequest;
    .locals 2

    .line 1
    invoke-static {p1, p2}, Landroid/location/LocationRequest;->checkInterval(J)V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroid/location/LocationRequest;->mInterval:J

    .line 5
    .line 6
    iget-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    long-to-double p1, p1

    .line 11
    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    .line 12
    .line 13
    div-double/2addr p1, v0

    .line 14
    double-to-long p1, p1

    .line 15
    iput-wide p1, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    .line 16
    .line 17
    :cond_0
    return-object p0
.end method

.method public setNumUpdates(I)Landroid/location/LocationRequest;
    .locals 2

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string/jumbo v1, "invalid numUpdates: "

    .line 9
    .line 10
    .line 11
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/location/LocationRequest;->checkProvider(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    .line 5
    .line 6
    return-object p0
.end method

.method public setQuality(I)Landroid/location/LocationRequest;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/location/LocationRequest;->checkQuality(I)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/location/LocationRequest;->mQuality:I

    .line 5
    .line 6
    return-object p0
.end method

.method public setSmallestDisplacement(F)Landroid/location/LocationRequest;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/location/LocationRequest;->checkDisplacement(F)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    .line 5
    .line 6
    return-object p0
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .locals 0

    iput-object p1, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "Request["

    .line 2
    .line 3
    invoke-static {v0}, Landroid/accessibilityservice/c;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroid/location/LocationRequest;->mQuality:I

    .line 8
    .line 9
    invoke-static {v1}, Landroid/location/LocationRequest;->qualityToString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/16 v1, 0x20

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    :cond_0
    iget v1, p0, Landroid/location/LocationRequest;->mQuality:I

    .line 31
    .line 32
    const/16 v2, 0xc8

    .line 33
    .line 34
    if-eq v1, v2, :cond_1

    .line 35
    .line 36
    const-string v1, " requested="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-wide v1, p0, Landroid/location/LocationRequest;->mInterval:J

    .line 42
    .line 43
    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    const-string v1, " fastest="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-wide v1, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    .line 52
    .line 53
    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 54
    .line 55
    .line 56
    iget-wide v1, p0, Landroid/location/LocationRequest;->mExpireAt:J

    .line 57
    .line 58
    const-wide v3, 0x7fffffffffffffffL

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    cmp-long v3, v1, v3

    .line 64
    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 68
    .line 69
    .line 70
    move-result-wide v3

    .line 71
    sub-long/2addr v1, v3

    .line 72
    const-string v3, " expireIn="

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    iget v1, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    .line 81
    .line 82
    const v2, 0x7fffffff

    .line 83
    .line 84
    .line 85
    if-eq v1, v2, :cond_3

    .line 86
    .line 87
    const-string v1, " num="

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget v1, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    :cond_3
    const/16 v1, 0x5d

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Landroid/location/LocationRequest;->mQuality:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 29
    .line 30
    .line 31
    iget-boolean p2, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
