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

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 4
    .line 5
    iput-wide v0, p0, Landroid/content/SyncStats;->numIoExceptions:J

    .line 6
    .line 7
    iput-wide v0, p0, Landroid/content/SyncStats;->numParseExceptions:J

    .line 8
    .line 9
    iput-wide v0, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 10
    .line 11
    iput-wide v0, p0, Landroid/content/SyncStats;->numInserts:J

    .line 12
    .line 13
    iput-wide v0, p0, Landroid/content/SyncStats;->numUpdates:J

    .line 14
    .line 15
    iput-wide v0, p0, Landroid/content/SyncStats;->numDeletes:J

    .line 16
    .line 17
    iput-wide v0, p0, Landroid/content/SyncStats;->numEntries:J

    .line 18
    .line 19
    iput-wide v0, p0, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 20
    .line 21
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

    .line 2
    .line 3
    const-string v1, " stats ["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 9
    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    cmp-long v1, v1, v3

    .line 13
    .line 14
    if-lez v1, :cond_0

    .line 15
    .line 16
    const-string v1, " numAuthExceptions: "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-wide v1, p0, Landroid/content/SyncStats;->numIoExceptions:J

    .line 27
    .line 28
    cmp-long v1, v1, v3

    .line 29
    .line 30
    if-lez v1, :cond_1

    .line 31
    .line 32
    const-string v1, " numIoExceptions: "

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-wide v1, p0, Landroid/content/SyncStats;->numIoExceptions:J

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-wide v1, p0, Landroid/content/SyncStats;->numParseExceptions:J

    .line 43
    .line 44
    cmp-long v1, v1, v3

    .line 45
    .line 46
    if-lez v1, :cond_2

    .line 47
    .line 48
    const-string v1, " numParseExceptions: "

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-wide v1, p0, Landroid/content/SyncStats;->numParseExceptions:J

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    :cond_2
    iget-wide v1, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 59
    .line 60
    cmp-long v1, v1, v3

    .line 61
    .line 62
    if-lez v1, :cond_3

    .line 63
    .line 64
    const-string v1, " numConflictDetectedExceptions: "

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-wide v1, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    :cond_3
    iget-wide v1, p0, Landroid/content/SyncStats;->numInserts:J

    .line 75
    .line 76
    cmp-long v1, v1, v3

    .line 77
    .line 78
    if-lez v1, :cond_4

    .line 79
    .line 80
    const-string v1, " numInserts: "

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-wide v1, p0, Landroid/content/SyncStats;->numInserts:J

    .line 86
    .line 87
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    :cond_4
    iget-wide v1, p0, Landroid/content/SyncStats;->numUpdates:J

    .line 91
    .line 92
    cmp-long v1, v1, v3

    .line 93
    .line 94
    if-lez v1, :cond_5

    .line 95
    .line 96
    const-string v1, " numUpdates: "

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-wide v1, p0, Landroid/content/SyncStats;->numUpdates:J

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    :cond_5
    iget-wide v1, p0, Landroid/content/SyncStats;->numDeletes:J

    .line 107
    .line 108
    cmp-long v1, v1, v3

    .line 109
    .line 110
    if-lez v1, :cond_6

    .line 111
    .line 112
    const-string v1, " numDeletes: "

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-wide v1, p0, Landroid/content/SyncStats;->numDeletes:J

    .line 118
    .line 119
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    :cond_6
    iget-wide v1, p0, Landroid/content/SyncStats;->numEntries:J

    .line 123
    .line 124
    cmp-long v1, v1, v3

    .line 125
    .line 126
    if-lez v1, :cond_7

    .line 127
    .line 128
    const-string v1, " numEntries: "

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget-wide v1, p0, Landroid/content/SyncStats;->numEntries:J

    .line 134
    .line 135
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    :cond_7
    iget-wide v1, p0, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 139
    .line 140
    cmp-long v1, v1, v3

    .line 141
    .line 142
    if-lez v1, :cond_8

    .line 143
    .line 144
    const-string v1, " numSkippedEntries: "

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    iget-wide v1, p0, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 150
    .line 151
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    :cond_8
    const-string v1, "]"

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Landroid/content/SyncStats;->numIoExceptions:J

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Landroid/content/SyncStats;->numParseExceptions:J

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 19
    .line 20
    .line 21
    iget-wide v0, p0, Landroid/content/SyncStats;->numInserts:J

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 24
    .line 25
    .line 26
    iget-wide v0, p0, Landroid/content/SyncStats;->numUpdates:J

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 29
    .line 30
    .line 31
    iget-wide v0, p0, Landroid/content/SyncStats;->numDeletes:J

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    .line 35
    .line 36
    iget-wide v0, p0, Landroid/content/SyncStats;->numEntries:J

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    .line 40
    .line 41
    iget-wide v0, p0, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
