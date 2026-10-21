.class public final Lcom/android/internal/location/ProviderProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/location/ProviderProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAccuracy:I

.field public final mHasMonetaryCost:Z

.field public final mPowerRequirement:I

.field public final mRequiresCell:Z

.field public final mRequiresNetwork:Z

.field public final mRequiresSatellite:Z

.field public final mSupportsAltitude:Z

.field public final mSupportsBearing:Z

.field public final mSupportsSpeed:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/location/ProviderProperties$1;

    invoke-direct {v0}, Lcom/android/internal/location/ProviderProperties$1;-><init>()V

    sput-object v0, Lcom/android/internal/location/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZZZZZZZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/internal/location/ProviderProperties;->mRequiresNetwork:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/internal/location/ProviderProperties;->mRequiresSatellite:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/internal/location/ProviderProperties;->mRequiresCell:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/internal/location/ProviderProperties;->mHasMonetaryCost:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/android/internal/location/ProviderProperties;->mSupportsAltitude:Z

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/android/internal/location/ProviderProperties;->mSupportsSpeed:Z

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/android/internal/location/ProviderProperties;->mSupportsBearing:Z

    .line 17
    .line 18
    iput p8, p0, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    .line 19
    .line 20
    iput p9, p0, Lcom/android/internal/location/ProviderProperties;->mAccuracy:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/android/internal/location/ProviderProperties;->mRequiresNetwork:Z

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-boolean p2, p0, Lcom/android/internal/location/ProviderProperties;->mRequiresSatellite:Z

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-boolean p2, p0, Lcom/android/internal/location/ProviderProperties;->mRequiresCell:Z

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget-boolean p2, p0, Lcom/android/internal/location/ProviderProperties;->mHasMonetaryCost:Z

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-boolean p2, p0, Lcom/android/internal/location/ProviderProperties;->mSupportsAltitude:Z

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget-boolean p2, p0, Lcom/android/internal/location/ProviderProperties;->mSupportsSpeed:Z

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget-boolean p2, p0, Lcom/android/internal/location/ProviderProperties;->mSupportsBearing:Z

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget p2, p0, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    iget p2, p0, Lcom/android/internal/location/ProviderProperties;->mAccuracy:I

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
