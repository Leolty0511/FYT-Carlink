.class public Landroid/net/NetworkQuotaInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkQuotaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_LIMIT:J = -0x1L


# instance fields
.field private final mEstimatedBytes:J

.field private final mHardLimitBytes:J

.field private final mSoftLimitBytes:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/NetworkQuotaInfo$1;

    invoke-direct {v0}, Landroid/net/NetworkQuotaInfo$1;-><init>()V

    sput-object v0, Landroid/net/NetworkQuotaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Landroid/net/NetworkQuotaInfo;->mEstimatedBytes:J

    .line 3
    iput-wide p3, p0, Landroid/net/NetworkQuotaInfo;->mSoftLimitBytes:J

    .line 4
    iput-wide p5, p0, Landroid/net/NetworkQuotaInfo;->mHardLimitBytes:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkQuotaInfo;->mEstimatedBytes:J

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkQuotaInfo;->mSoftLimitBytes:J

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkQuotaInfo;->mHardLimitBytes:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEstimatedBytes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/net/NetworkQuotaInfo;->mEstimatedBytes:J

    return-wide v0
.end method

.method public getHardLimitBytes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/net/NetworkQuotaInfo;->mHardLimitBytes:J

    return-wide v0
.end method

.method public getSoftLimitBytes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/net/NetworkQuotaInfo;->mSoftLimitBytes:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/net/NetworkQuotaInfo;->mEstimatedBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-wide v0, p0, Landroid/net/NetworkQuotaInfo;->mSoftLimitBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-wide v0, p0, Landroid/net/NetworkQuotaInfo;->mHardLimitBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
