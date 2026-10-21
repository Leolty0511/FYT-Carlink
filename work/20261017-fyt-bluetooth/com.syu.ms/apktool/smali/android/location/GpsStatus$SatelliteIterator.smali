.class final Landroid/location/GpsStatus$SatelliteIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SatelliteIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/location/GpsSatellite;",
        ">;"
    }
.end annotation


# instance fields
.field public mIndex:I

.field private mSatellites:[Landroid/location/GpsSatellite;

.field public final synthetic this$0:Landroid/location/GpsStatus;


# direct methods
.method public constructor <init>(Landroid/location/GpsStatus;[Landroid/location/GpsSatellite;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/location/GpsStatus$SatelliteIterator;->this$0:Landroid/location/GpsStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    .line 3
    iput-object p2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellites:[Landroid/location/GpsSatellite;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    :goto_0
    iget-object v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellites:[Landroid/location/GpsSatellite;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroid/location/GpsSatellite;->mValid:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public next()Landroid/location/GpsSatellite;
    .locals 3

    .line 2
    :cond_0
    iget v0, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    iget-object v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellites:[Landroid/location/GpsSatellite;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    .line 3
    iput v2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    aget-object v0, v1, v0

    .line 4
    iget-boolean v1, v0, Landroid/location/GpsSatellite;->mValid:Z

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/location/GpsStatus$SatelliteIterator;->next()Landroid/location/GpsSatellite;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
