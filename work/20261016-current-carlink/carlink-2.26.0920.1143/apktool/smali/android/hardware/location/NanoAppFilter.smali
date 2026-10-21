.class public Landroid/hardware/location/NanoAppFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APP_ANY:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/NanoAppFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAGS_VERSION_ANY:I = -0x1

.field public static final FLAGS_VERSION_GREAT_THAN:I = 0x2

.field public static final FLAGS_VERSION_LESS_THAN:I = 0x4

.field public static final FLAGS_VERSION_STRICTLY_EQUAL:I = 0x8

.field public static final HUB_ANY:I = -0x1

.field private static final TAG:Ljava/lang/String; = "NanoAppFilter"

.field public static final VENDOR_ANY:I = -0x1


# instance fields
.field private mAppId:J

.field private mAppIdVendorMask:J

.field private mAppVersion:I

.field private mContextHubId:I

.field private mVersionRestrictionMask:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/location/NanoAppFilter$1;

    invoke-direct {v0}, Landroid/hardware/location/NanoAppFilter$1;-><init>()V

    sput-object v0, Landroid/hardware/location/NanoAppFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIIJ)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Landroid/hardware/location/NanoAppFilter;->mContextHubId:I

    .line 10
    iput-wide p1, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    .line 11
    iput p3, p0, Landroid/hardware/location/NanoAppFilter;->mAppVersion:I

    .line 12
    iput p4, p0, Landroid/hardware/location/NanoAppFilter;->mVersionRestrictionMask:I

    .line 13
    iput-wide p5, p0, Landroid/hardware/location/NanoAppFilter;->mAppIdVendorMask:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroid/hardware/location/NanoAppFilter;->mContextHubId:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppVersion:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppFilter;->mVersionRestrictionMask:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppIdVendorMask:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/location/NanoAppFilter$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/hardware/location/NanoAppFilter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private versionsMatch(III)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public testMatch(Landroid/hardware/location/NanoAppInstanceInfo;)Z
    .locals 4

    .line 1
    iget v0, p0, Landroid/hardware/location/NanoAppFilter;->mContextHubId:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppInstanceInfo;->getContexthubId()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v1, p0, Landroid/hardware/location/NanoAppFilter;->mContextHubId:I

    .line 11
    .line 12
    if-ne v0, v1, :cond_2

    .line 13
    .line 14
    :cond_0
    iget-wide v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    .line 15
    .line 16
    const-wide/16 v2, -0x1

    .line 17
    .line 18
    cmp-long v0, v0, v2

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iget-wide v2, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    .line 27
    .line 28
    cmp-long v0, v0, v2

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    :cond_1
    iget v0, p0, Landroid/hardware/location/NanoAppFilter;->mVersionRestrictionMask:I

    .line 33
    .line 34
    iget v1, p0, Landroid/hardware/location/NanoAppFilter;->mAppVersion:I

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppVersion()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-direct {p0, v0, v1, p1}, Landroid/hardware/location/NanoAppFilter;->versionsMatch(III)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 p1, 0x0

    .line 49
    :goto_0
    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppId:J

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/hardware/location/NanoAppFilter;->mAppVersion:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/hardware/location/NanoAppFilter;->mVersionRestrictionMask:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p0, Landroid/hardware/location/NanoAppFilter;->mAppIdVendorMask:J

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
