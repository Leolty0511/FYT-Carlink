.class public Landroid/content/SyncStats;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/SyncStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public numAuthExceptions:J

.field public numConflictDetectedExceptions:J

.field public numDeletes:J

.field public numEntries:J

.field public numInserts:J

.field public numIoExceptions:J

.field public numParseExceptions:J

.field public numSkippedEntries:J

.field public numUpdates:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/content/SyncStats$1;

    invoke-direct {v0}, Landroid/content/SyncStats$1;-><init>()V

    sput-object v0, Landroid/content/SyncStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 3
    iput-wide v0, p0, Landroid/content/SyncStats;->numIoExceptions:J

    .line 4
    iput-wide v0, p0, Landroid/content/SyncStats;->numParseExceptions:J

    .line 5
    iput-wide v0, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 6
    iput-wide v0, p0, Landroid/content/SyncStats;->numInserts:J

    .line 7
    iput-wide v0, p0, Landroid/content/SyncStats;->numUpdates:J

    .line 8
    iput-wide v0, p0, Landroid/content/SyncStats;->numDeletes:J

    .line 9
    iput-wide v0, p0, Landroid/content/SyncStats;->numEntries:J

    .line 10
    iput-wide v0, p0, Landroid/content/SyncStats;->numSkippedEntries:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncStats;->numIoExceptions:J

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncStats;->numParseExceptions:J

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncStats;->numInserts:J

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncStats;->numUpdates:J

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncStats;->numDeletes:J

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncStats;->numEntries:J

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncStats;->numSkippedEntries:J

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 2
    iput-wide v0, p0, Landroid/content/SyncStats;->numIoExceptions:J

    .line 3
    iput-wide v0, p0, Landroid/content/SyncStats;->numParseExceptions:J

    .line 4
    iput-wide v0, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 5
    iput-wide v0, p0, Landroid/content/SyncStats;->numInserts:J

    .line 6
    iput-wide v0, p0, Landroid/content/SyncStats;->numUpdates:J

    .line 7
    iput-wide v0, p0, Landroid/content/SyncStats;->numDeletes:J

    .line 8
    iput-wide v0, p0, Landroid/content/SyncStats;->numEntries:J

    .line 9
    iput-wide v0, p0, Landroid/content/SyncStats;->numSkippedEntries:J

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " stats ["

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-wide v1, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const-string v1, " numAuthExceptions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    iget-wide v1, p0, Landroid/content/SyncStats;->numIoExceptions:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const-string v1, " numIoExceptions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/content/SyncStats;->numIoExceptions:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5
    :cond_1
    iget-wide v1, p0, Landroid/content/SyncStats;->numParseExceptions:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    const-string v1, " numParseExceptions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6
    :cond_2
    iget-wide v1, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    const-string v1, " numConflictDetectedExceptions: "

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 8
    :cond_3
    iget-wide v1, p0, Landroid/content/SyncStats;->numInserts:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    const-string v1, " numInserts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/content/SyncStats;->numInserts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 9
    :cond_4
    iget-wide v1, p0, Landroid/content/SyncStats;->numUpdates:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    const-string v1, " numUpdates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/content/SyncStats;->numUpdates:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 10
    :cond_5
    iget-wide v1, p0, Landroid/content/SyncStats;->numDeletes:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    const-string v1, " numDeletes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/content/SyncStats;->numDeletes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    :cond_6
    iget-wide v1, p0, Landroid/content/SyncStats;->numEntries:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_7

    const-string v1, " numEntries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/content/SyncStats;->numEntries:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    :cond_7
    iget-wide v1, p0, Landroid/content/SyncStats;->numSkippedEntries:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_8

    const-string v1, " numSkippedEntries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/content/SyncStats;->numSkippedEntries:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_8
    const-string v1, "]"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-wide v0, p0, Landroid/content/SyncStats;->numIoExceptions:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-wide v0, p0, Landroid/content/SyncStats;->numParseExceptions:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    iget-wide v0, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    iget-wide v0, p0, Landroid/content/SyncStats;->numInserts:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 6
    iget-wide v0, p0, Landroid/content/SyncStats;->numUpdates:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 7
    iget-wide v0, p0, Landroid/content/SyncStats;->numDeletes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 8
    iget-wide v0, p0, Landroid/content/SyncStats;->numEntries:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    iget-wide v0, p0, Landroid/content/SyncStats;->numSkippedEntries:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
