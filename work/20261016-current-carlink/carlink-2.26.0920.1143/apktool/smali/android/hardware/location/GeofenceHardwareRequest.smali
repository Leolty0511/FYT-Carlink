.class public final Landroid/hardware/location/GeofenceHardwareRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final GEOFENCE_TYPE_CIRCLE:I


# instance fields
.field private mLastTransition:I

.field private mLatitude:D

.field private mLongitude:D

.field private mMonitorTransitions:I

.field private mNotificationResponsiveness:I

.field private mRadius:D

.field private mSourceTechnologies:I

.field private mType:I

.field private mUnknownTimer:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLastTransition:I

    .line 6
    .line 7
    const/16 v0, 0x7530

    .line 8
    .line 9
    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mUnknownTimer:I

    .line 10
    .line 11
    const/4 v0, 0x7

    .line 12
    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mMonitorTransitions:I

    .line 13
    .line 14
    const/16 v0, 0x1388

    .line 15
    .line 16
    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mNotificationResponsiveness:I

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mSourceTechnologies:I

    .line 20
    .line 21
    return-void
.end method

.method public static createCircularGeofence(DDD)Landroid/hardware/location/GeofenceHardwareRequest;
    .locals 8

    .line 1
    new-instance v7, Landroid/hardware/location/GeofenceHardwareRequest;

    .line 2
    .line 3
    invoke-direct {v7}, Landroid/hardware/location/GeofenceHardwareRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object v0, v7

    .line 7
    move-wide v1, p0

    .line 8
    move-wide v3, p2

    .line 9
    move-wide v5, p4

    .line 10
    invoke-direct/range {v0 .. v6}, Landroid/hardware/location/GeofenceHardwareRequest;->setCircularGeofence(DDD)V

    .line 11
    .line 12
    .line 13
    return-object v7
.end method

.method private setCircularGeofence(DDD)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLatitude:D

    .line 2
    .line 3
    iput-wide p3, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLongitude:D

    .line 4
    .line 5
    iput-wide p5, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mRadius:D

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mType:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getLastTransition()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLastTransition:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLongitude:D

    return-wide v0
.end method

.method public getMonitorTransitions()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mMonitorTransitions:I

    return v0
.end method

.method public getNotificationResponsiveness()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mNotificationResponsiveness:I

    return v0
.end method

.method public getRadius()D
    .locals 2

    iget-wide v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mRadius:D

    return-wide v0
.end method

.method public getSourceTechnologies()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mSourceTechnologies:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mType:I

    return v0
.end method

.method public getUnknownTimer()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mUnknownTimer:I

    return v0
.end method

.method public setLastTransition(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLastTransition:I

    return-void
.end method

.method public setMonitorTransitions(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mMonitorTransitions:I

    return-void
.end method

.method public setNotificationResponsiveness(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mNotificationResponsiveness:I

    return-void
.end method

.method public setSourceTechnologies(I)V
    .locals 1

    .line 1
    and-int/lit8 p1, p1, 0x1f

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mSourceTechnologies:I

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v0, "At least one valid source technology must be set."

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public setUnknownTimer(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mUnknownTimer:I

    return-void
.end method
