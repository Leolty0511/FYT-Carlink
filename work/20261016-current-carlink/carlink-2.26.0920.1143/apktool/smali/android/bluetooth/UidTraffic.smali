.class public Landroid/bluetooth/UidTraffic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/UidTraffic;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppUid:I

.field private mRxBytes:J

.field private mTxBytes:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/UidTraffic$1;

    invoke-direct {v0}, Landroid/bluetooth/UidTraffic$1;-><init>()V

    sput-object v0, Landroid/bluetooth/UidTraffic;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    .line 5
    iput-wide p2, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    .line 6
    iput-wide p4, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    return-void
.end method


# virtual methods
.method public addRxBytes(J)V
    .locals 2

    iget-wide v0, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    return-void
.end method

.method public addTxBytes(J)V
    .locals 2

    iget-wide v0, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    return-void
.end method

.method public clone()Landroid/bluetooth/UidTraffic;
    .locals 7

    .line 2
    new-instance v6, Landroid/bluetooth/UidTraffic;

    iget v1, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    iget-wide v2, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    iget-wide v4, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/UidTraffic;-><init>(IJJ)V

    return-object v6
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/bluetooth/UidTraffic;->clone()Landroid/bluetooth/UidTraffic;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRxBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    return-wide v0
.end method

.method public getTxBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    return v0
.end method

.method public setRxBytes(J)V
    .locals 0

    iput-wide p1, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    return-void
.end method

.method public setTxBytes(J)V
    .locals 0

    iput-wide p1, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UidTraffic{mAppUid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mTxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Landroid/bluetooth/UidTraffic;->mAppUid:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Landroid/bluetooth/UidTraffic;->mRxBytes:J

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Landroid/bluetooth/UidTraffic;->mTxBytes:J

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
