.class public Landroid/content/SyncStatusInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_EVENT_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "Sync"

.field static final VERSION:I = 0x4


# instance fields
.field public final authorityId:I

.field public initialFailureTime:J

.field public initialize:Z

.field public lastFailureMesg:Ljava/lang/String;

.field public lastFailureSource:I

.field public lastFailureTime:J

.field public lastSuccessSource:I

.field public lastSuccessTime:J

.field private final mLastEventTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public numSourceLocal:I

.field public numSourcePeriodic:I

.field public numSourcePoll:I

.field public numSourceServer:I

.field public numSourceUser:I

.field public numSyncs:I

.field public pending:Z

.field private periodicSyncTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public totalElapsedTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/SyncStatusInfo$1;

    invoke-direct {v0}, Landroid/content/SyncStatusInfo$1;-><init>()V

    sput-object v0, Landroid/content/SyncStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    .line 4
    iput p1, p0, Landroid/content/SyncStatusInfo;->authorityId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/SyncStatusInfo;)V
    .locals 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    .line 46
    iget v2, p1, Landroid/content/SyncStatusInfo;->authorityId:I

    iput v2, p0, Landroid/content/SyncStatusInfo;->authorityId:I

    .line 47
    iget-wide v2, p1, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    iput-wide v2, p0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    .line 48
    iget v2, p1, Landroid/content/SyncStatusInfo;->numSyncs:I

    iput v2, p0, Landroid/content/SyncStatusInfo;->numSyncs:I

    .line 49
    iget v2, p1, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    iput v2, p0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    .line 50
    iget v2, p1, Landroid/content/SyncStatusInfo;->numSourceServer:I

    iput v2, p0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    .line 51
    iget v2, p1, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    iput v2, p0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    .line 52
    iget v2, p1, Landroid/content/SyncStatusInfo;->numSourceUser:I

    iput v2, p0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    .line 53
    iget v2, p1, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    iput v2, p0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    .line 54
    iget-wide v2, p1, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    iput-wide v2, p0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 55
    iget v2, p1, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    iput v2, p0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 56
    iget-wide v2, p1, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    iput-wide v2, p0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 57
    iget v2, p1, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    iput v2, p0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 58
    iget-object v2, p1, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 59
    iget-wide v2, p1, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    iput-wide v2, p0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 60
    iget-boolean v2, p1, Landroid/content/SyncStatusInfo;->pending:Z

    iput-boolean v2, p0, Landroid/content/SyncStatusInfo;->pending:Z

    .line 61
    iget-boolean v2, p1, Landroid/content/SyncStatusInfo;->initialize:Z

    iput-boolean v2, p0, Landroid/content/SyncStatusInfo;->initialize:Z

    .line 62
    iget-object v2, p1, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    .line 64
    :cond_0
    iget-object v2, p1, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 65
    iget-object p1, p1, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const-string v3, "Unknown version: "

    const-string v4, "SyncStatusInfo"

    .line 9
    invoke-static {v3, v0, v4}, Landroid/app/m;->A(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/SyncStatusInfo;->authorityId:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/SyncStatusInfo;->numSyncs:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iput-boolean v3, p0, Landroid/content/SyncStatusInfo;->pending:Z

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Landroid/content/SyncStatusInfo;->initialize:Z

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    .line 25
    iput-object v3, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    goto :goto_5

    .line 26
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_4

    .line 27
    iput-object v3, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    goto :goto_3

    .line 28
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    move v3, v4

    :goto_2
    if-ge v3, v1, :cond_5

    .line 29
    iget-object v5, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    const/4 v1, 0x3

    if-lt v0, v1, :cond_6

    .line 30
    iget-object v1, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 31
    iget-object v1, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    move v3, v4

    :goto_4
    if-ge v3, v1, :cond_6

    .line 33
    iget-object v5, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v5, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    if-ge v0, v2, :cond_7

    .line 35
    iget p1, p0, Landroid/content/SyncStatusInfo;->numSyncs:I

    iget v0, p0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    if-gez p1, :cond_8

    .line 36
    iput v4, p0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    goto :goto_6

    .line 37
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    :cond_8
    :goto_6
    return-void
.end method

.method private ensurePeriodicSyncTimeSize(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    .line 12
    .line 13
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ge v0, p1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :goto_0
    if-ge v0, p1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    .line 32
    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/16 v1, 0x9

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEvent(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getEventCount()I
    .locals 1

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getEventTime(I)J
    .locals 2

    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastFailureMesgAsInt(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/content/ContentResolver;->syncErrorStringToInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "Unknown lastFailureMesg:"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "Sync"

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Landroid/app/m;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return p1
.end method

.method public getPeriodicSyncTime(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Long;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    return-wide v0

    .line 24
    :cond_0
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    return-wide v0
.end method

.method public removePeriodicSyncTime(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setPeriodicSyncTime(IJ)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/content/SyncStatusInfo;->ensurePeriodicSyncTimeSize(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    const/4 p2, 0x4

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    .line 4
    .line 5
    iget p2, p0, Landroid/content/SyncStatusInfo;->authorityId:I

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    .line 9
    .line 10
    iget-wide v0, p0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 13
    .line 14
    .line 15
    iget p2, p0, Landroid/content/SyncStatusInfo;->numSyncs:I

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    .line 19
    .line 20
    iget p2, p0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    .line 24
    .line 25
    iget p2, p0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    .line 29
    .line 30
    iget p2, p0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    .line 34
    .line 35
    iget p2, p0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    .line 39
    .line 40
    iget-wide v0, p0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 43
    .line 44
    .line 45
    iget p2, p0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    .line 49
    .line 50
    iget-wide v0, p0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 51
    .line 52
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 53
    .line 54
    .line 55
    iget p2, p0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-wide v0, p0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 66
    .line 67
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 68
    .line 69
    .line 70
    iget-boolean p2, p0, Landroid/content/SyncStatusInfo;->pending:Z

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    .line 74
    .line 75
    iget-boolean p2, p0, Landroid/content/SyncStatusInfo;->initialize:Z

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    .line 79
    .line 80
    iget-object p2, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    .line 81
    .line 82
    if-eqz p2, :cond_0

    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    .line 90
    .line 91
    iget-object p2, p0, Landroid/content/SyncStatusInfo;->periodicSyncTimes:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_1

    .line 102
    .line 103
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Ljava/lang/Long;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 110
    .line 111
    .line 112
    move-result-wide v0

    .line 113
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_0
    const/4 p2, -0x1

    .line 118
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    .line 120
    .line 121
    :cond_1
    iget-object p2, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    .line 129
    .line 130
    const/4 p2, 0x0

    .line 131
    :goto_1
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-ge p2, v0, :cond_2

    .line 138
    .line 139
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEventTimes:Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Ljava/lang/Long;

    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 148
    .line 149
    .line 150
    move-result-wide v0

    .line 151
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Landroid/content/SyncStatusInfo;->mLastEvents:Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    add-int/lit8 p2, p2, 0x1

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_2
    iget p2, p0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    .line 169
    .line 170
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    .line 172
    .line 173
    return-void
.end method
