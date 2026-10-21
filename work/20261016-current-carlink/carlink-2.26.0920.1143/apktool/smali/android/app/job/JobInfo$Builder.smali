.class public final Landroid/app/job/JobInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBackoffPolicy:I

.field private mBackoffPolicySet:Z

.field private mClipData:Landroid/content/ClipData;

.field private mClipGrantFlags:I

.field private mConstraintFlags:I

.field private mExtras:Landroid/os/PersistableBundle;

.field private mFlags:I

.field private mFlexMillis:J

.field private mHasEarlyConstraint:Z

.field private mHasLateConstraint:Z

.field private mInitialBackoffMillis:J

.field private mIntervalMillis:J

.field private mIsPeriodic:Z

.field private mIsPersisted:Z

.field private final mJobId:I

.field private final mJobService:Landroid/content/ComponentName;

.field private mMaxExecutionDelayMillis:J

.field private mMinLatencyMillis:J

.field private mNetworkType:I

.field private mPriority:I

.field private mRescheduleEnable:Z

.field private mTransientExtras:Landroid/os/Bundle;

.field private mTriggerContentMaxDelay:J

.field private mTriggerContentUpdateDelay:J

.field private mTriggerContentUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/job/JobInfo$TriggerContentUri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/content/ComponentName;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    .line 5
    .line 6
    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    .line 7
    .line 8
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 9
    .line 10
    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    .line 14
    .line 15
    const-wide/16 v1, -0x1

    .line 16
    .line 17
    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    .line 18
    .line 19
    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    .line 20
    .line 21
    const-wide/16 v1, 0x7530

    .line 22
    .line 23
    iput-wide v1, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    iput v1, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    .line 27
    .line 28
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mRescheduleEnable:Z

    .line 31
    .line 32
    iput-object p2, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    .line 33
    .line 34
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    .line 35
    .line 36
    return-void
.end method

.method public static synthetic access$000(Landroid/app/job/JobInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    return p0
.end method

.method public static synthetic access$100(Landroid/app/job/JobInfo$Builder;)Landroid/os/PersistableBundle;
    .locals 0

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public static synthetic access$1000(Landroid/app/job/JobInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkType:I

    return p0
.end method

.method public static synthetic access$1100(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    return-wide v0
.end method

.method public static synthetic access$1200(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    return-wide v0
.end method

.method public static synthetic access$1300(Landroid/app/job/JobInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    return p0
.end method

.method public static synthetic access$1400(Landroid/app/job/JobInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    return p0
.end method

.method public static synthetic access$1500(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    return-wide v0
.end method

.method public static synthetic access$1600(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mFlexMillis:J

    return-wide v0
.end method

.method public static synthetic access$1700(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    return-wide v0
.end method

.method public static synthetic access$1800(Landroid/app/job/JobInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    return p0
.end method

.method public static synthetic access$1900(Landroid/app/job/JobInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    return p0
.end method

.method public static synthetic access$200(Landroid/app/job/JobInfo$Builder;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public static synthetic access$2000(Landroid/app/job/JobInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    return p0
.end method

.method public static synthetic access$2100(Landroid/app/job/JobInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    return p0
.end method

.method public static synthetic access$2200(Landroid/app/job/JobInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    return p0
.end method

.method public static synthetic access$2300(Landroid/app/job/JobInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/job/JobInfo$Builder;->mRescheduleEnable:Z

    return p0
.end method

.method public static synthetic access$300(Landroid/app/job/JobInfo$Builder;)Landroid/content/ClipData;
    .locals 0

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mClipData:Landroid/content/ClipData;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/app/job/JobInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mClipGrantFlags:I

    return p0
.end method

.method public static synthetic access$500(Landroid/app/job/JobInfo$Builder;)Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static synthetic access$600(Landroid/app/job/JobInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    return p0
.end method

.method public static synthetic access$700(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$800(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    return-wide v0
.end method

.method public static synthetic access$900(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    return-wide v0
.end method


# virtual methods
.method public addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public build()Landroid/app/job/JobInfo;
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkType:I

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v1, "You\'re trying to build a job with no constraints, this is not allowed."

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    .line 31
    .line 32
    if-eqz v0, :cond_5

    .line 33
    .line 34
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    .line 35
    .line 36
    const-wide/16 v2, 0x0

    .line 37
    .line 38
    cmp-long v0, v0, v2

    .line 39
    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    .line 43
    .line 44
    cmp-long v0, v0, v2

    .line 45
    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    .line 49
    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    const-string v1, "Can\'t call addTriggerContentUri() on a periodic job"

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0

    .line 61
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    const-string v1, "Can\'t call setMinimumLatency() on a periodic job"

    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    const-string v1, "Can\'t call setOverrideDeadline() on a periodic job."

    .line 72
    .line 73
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :cond_5
    :goto_1
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    .line 78
    .line 79
    if-eqz v0, :cond_9

    .line 80
    .line 81
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    .line 82
    .line 83
    if-nez v0, :cond_8

    .line 84
    .line 85
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_7

    .line 92
    .line 93
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mClipData:Landroid/content/ClipData;

    .line 94
    .line 95
    if-nez v0, :cond_6

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    const-string v1, "Can\'t call setClipData() on a persisted job"

    .line 101
    .line 102
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v0

    .line 106
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 107
    .line 108
    const-string v1, "Can\'t call setTransientExtras() on a persisted job"

    .line 109
    .line 110
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 115
    .line 116
    const-string v1, "Can\'t call addTriggerContentUri() on a persisted job"

    .line 117
    .line 118
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v0

    .line 122
    :cond_9
    :goto_2
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    .line 123
    .line 124
    if-eqz v0, :cond_b

    .line 125
    .line 126
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    .line 127
    .line 128
    and-int/lit8 v0, v0, 0x4

    .line 129
    .line 130
    if-nez v0, :cond_a

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 134
    .line 135
    const-string v1, "An idle mode job will not respect any back-off policy, so calling setBackoffCriteria with setRequiresDeviceIdle is an error."

    .line 136
    .line 137
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v0

    .line 141
    :cond_b
    :goto_3
    new-instance v0, Landroid/app/job/JobInfo;

    .line 142
    .line 143
    const/4 v1, 0x0

    .line 144
    invoke-direct {v0, p0, v1}, Landroid/app/job/JobInfo;-><init>(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo$1;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_d

    .line 152
    .line 153
    invoke-static {v0}, Landroid/app/job/JobInfo;->access$2700(Landroid/app/job/JobInfo;)J

    .line 154
    .line 155
    .line 156
    move-result-wide v1

    .line 157
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    .line 158
    .line 159
    .line 160
    move-result-wide v3

    .line 161
    cmp-long v1, v1, v3

    .line 162
    .line 163
    const-string v2, ". Clamped to "

    .line 164
    .line 165
    const-string v3, " is "

    .line 166
    .line 167
    if-eqz v1, :cond_c

    .line 168
    .line 169
    const-string v1, "Specified interval for "

    .line 170
    .line 171
    invoke-static {v1}, Landroid/accessibilityservice/c;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    iget v4, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    .line 176
    .line 177
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    iget-wide v4, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    .line 188
    .line 189
    invoke-static {v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    .line 196
    .line 197
    .line 198
    move-result-wide v4

    .line 199
    invoke-static {v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 200
    .line 201
    .line 202
    invoke-static {}, Landroid/app/job/JobInfo;->access$2800()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    :cond_c
    invoke-static {v0}, Landroid/app/job/JobInfo;->access$2900(Landroid/app/job/JobInfo;)J

    .line 214
    .line 215
    .line 216
    move-result-wide v4

    .line 217
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getFlexMillis()J

    .line 218
    .line 219
    .line 220
    move-result-wide v6

    .line 221
    cmp-long v1, v4, v6

    .line 222
    .line 223
    if-eqz v1, :cond_d

    .line 224
    .line 225
    const-string v1, "Specified flex for "

    .line 226
    .line 227
    invoke-static {v1}, Landroid/accessibilityservice/c;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    iget v4, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    .line 232
    .line 233
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    iget-wide v3, p0, Landroid/app/job/JobInfo$Builder;->mFlexMillis:J

    .line 244
    .line 245
    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getFlexMillis()J

    .line 252
    .line 253
    .line 254
    move-result-wide v2

    .line 255
    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 256
    .line 257
    .line 258
    invoke-static {}, Landroid/app/job/JobInfo;->access$2800()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    :cond_d
    return-object v0
.end method

.method public setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    .line 3
    .line 4
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    .line 5
    .line 6
    iput p3, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    .line 7
    .line 8
    return-object p0
.end method

.method public setClipData(Landroid/content/ClipData;I)Landroid/app/job/JobInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mClipData:Landroid/content/ClipData;

    .line 2
    .line 3
    iput p2, p0, Landroid/app/job/JobInfo$Builder;->mClipGrantFlags:I

    .line 4
    .line 5
    return-object p0
.end method

.method public setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public setFlags(I)Landroid/app/job/JobInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    return-object p0
.end method

.method public setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    .line 5
    .line 6
    return-object p0
.end method

.method public setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    .line 5
    .line 6
    return-object p0
.end method

.method public setPeriodic(J)Landroid/app/job/JobInfo$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p1, p2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    .line 3
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    .line 4
    iput-wide p3, p0, Landroid/app/job/JobInfo$Builder;->mFlexMillis:J

    .line 5
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    return-object p0
.end method

.method public setPersisted(Z)Landroid/app/job/JobInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    return-object p0
.end method

.method public setPriority(I)Landroid/app/job/JobInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    return-object p0
.end method

.method public setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkType:I

    return-object p0
.end method

.method public setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v0, v0, -0x3

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    return-object p0
.end method

.method public setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v0, v0, -0x2

    or-int/2addr p1, v0

    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    return-object p0
.end method

.method public setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    return-object p0
.end method

.method public setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;
    .locals 1

    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    and-int/lit8 v0, v0, -0x9

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mConstraintFlags:I

    return-object p0
.end method

.method public setRescheduleEnable(Z)Landroid/app/job/JobInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/job/JobInfo$Builder;->mRescheduleEnable:Z

    return-object p0
.end method

.method public setTransientExtras(Landroid/os/Bundle;)Landroid/app/job/JobInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mTransientExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    return-object p0
.end method

.method public setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    return-object p0
.end method
