.class public final Landroid/telephony/ClientRequestStats;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ClientRequestStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final REQUEST_HISTOGRAM_BUCKET_COUNT:I = 0x5


# instance fields
.field private mCallingPackage:Ljava/lang/String;

.field private mCompletedRequestsCount:J

.field private mCompletedRequestsWakelockTime:J

.field private mPendingRequestsCount:J

.field private mPendingRequestsWakelockTime:J

.field private mRequestHistograms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ClientRequestStats$1;

    invoke-direct {v0}, Landroid/telephony/ClientRequestStats$1;-><init>()V

    sput-object v0, Landroid/telephony/ClientRequestStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    .line 10
    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    .line 11
    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    .line 12
    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    .line 13
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    .line 3
    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    .line 4
    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    .line 5
    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    .line 6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {p0, p1}, Landroid/telephony/ClientRequestStats;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/ClientRequestStats;)V
    .locals 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    .line 16
    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    .line 17
    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    .line 18
    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {p1}, Landroid/telephony/ClientRequestStats;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ClientRequestStats;->mCallingPackage:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/telephony/ClientRequestStats;->getCompletedRequestsCount()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    .line 22
    invoke-virtual {p1}, Landroid/telephony/ClientRequestStats;->getCompletedRequestsWakelockTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    .line 23
    invoke-virtual {p1}, Landroid/telephony/ClientRequestStats;->getPendingRequestsCount()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    .line 24
    invoke-virtual {p1}, Landroid/telephony/ClientRequestStats;->getPendingRequestsWakelockTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    .line 25
    invoke-virtual {p1}, Landroid/telephony/ClientRequestStats;->getRequestHistograms()Ljava/util/List;

    move-result-object p1

    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyHistogram;

    .line 27
    iget-object v1, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/telephony/TelephonyHistogram;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addCompletedWakelockTime(J)V
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ClientRequestStats;->mCallingPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getCompletedRequestsCount()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    return-wide v0
.end method

.method public getCompletedRequestsWakelockTime()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    return-wide v0
.end method

.method public getPendingRequestsCount()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    return-wide v0
.end method

.method public getPendingRequestsWakelockTime()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    return-wide v0
.end method

.method public getRequestHistograms()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    iget-object v2, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    iget-object v3, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ge v2, v3, :cond_0

    .line 23
    .line 24
    new-instance v3, Landroid/telephony/TelephonyHistogram;

    .line 25
    .line 26
    iget-object v4, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Landroid/telephony/TelephonyHistogram;

    .line 33
    .line 34
    invoke-direct {v3, v4}, Landroid/telephony/TelephonyHistogram;-><init>(Landroid/telephony/TelephonyHistogram;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    monitor-exit v0

    .line 44
    return-object v1

    .line 45
    :catchall_0
    move-exception v1

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw v1
.end method

.method public incrementCompletedRequestsCount()V
    .locals 4

    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Landroid/telephony/ClientRequestStats;->mCallingPackage:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iput-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    .line 30
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    sget-object v1, Landroid/telephony/TelephonyHistogram;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/telephony/TelephonyHistogram;

    .line 56
    .line 57
    iget-object v1, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/telephony/TelephonyHistogram;->getId()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public setCallingPackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ClientRequestStats;->mCallingPackage:Ljava/lang/String;

    return-void
.end method

.method public setPendingRequestsCount(J)V
    .locals 0

    iput-wide p1, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    return-void
.end method

.method public setPendingRequestsWakelockTime(J)V
    .locals 0

    iput-wide p1, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClientRequestStats{mCallingPackage=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ClientRequestStats;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mCompletedRequestsWakelockTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mCompletedRequestsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPendingRequestsWakelockTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPendingRequestsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateRequestHistograms(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/telephony/TelephonyHistogram;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroid/telephony/TelephonyHistogram;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x5

    .line 18
    invoke-direct {v1, v2, p1, v3}, Landroid/telephony/TelephonyHistogram;-><init>(III)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Landroid/telephony/ClientRequestStats;->mRequestHistograms:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyHistogram;->addTimeTaken(I)V

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Landroid/telephony/ClientRequestStats;->mCallingPackage:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsWakelockTime:J

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mCompletedRequestsCount:J

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsWakelockTime:J

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 19
    .line 20
    .line 21
    iget-wide v0, p0, Landroid/telephony/ClientRequestStats;->mPendingRequestsCount:J

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/telephony/ClientRequestStats;->getRequestHistograms()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
