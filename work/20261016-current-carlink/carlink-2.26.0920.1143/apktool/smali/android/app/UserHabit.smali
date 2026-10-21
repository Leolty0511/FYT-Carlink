.class public Landroid/app/UserHabit;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ATTR_LAST_FG_TIME:Ljava/lang/String; = "lastFgTime"

.field private static final ATTR_LAST_USE_Time:Ljava/lang/String; = "lastUseTime"

.field private static final ATTR_LAUNCH_COUNT:Ljava/lang/String; = "launchCount"

.field private static final ATTR_PKG:Ljava/lang/String; = "pkgName"

.field private static final ATTR_RECENT_LAUNCH_TIME:Ljava/lang/String; = "recentLaunchTime"

.field private static final ATTR_TOTAL_FG_TIME:Ljava/lang/String; = "totalForegroundTime"

.field private static final ATTR_USERID:Ljava/lang/String; = "userid"

.field private static final RECENT_LAUNCH_TIME_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "UserHabit"


# instance fields
.field public lastForegroundTime:J

.field public lastUseTime:J

.field public launchCount:J

.field private mAppRelevance:Landroid/app/AppRelevance;

.field public mLastEvent:I

.field private mLaunchTime:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mUserId:Ljava/lang/Integer;

.field public packageName:Ljava/lang/String;

.field public totalForegroundTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/UserHabit;->mLaunchTime:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Landroid/app/UserHabit;->mLastEvent:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJJJI)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/UserHabit;->mLaunchTime:Ljava/util/ArrayList;

    .line 13
    iput-object p1, p0, Landroid/app/UserHabit;->packageName:Ljava/lang/String;

    int-to-long v0, p2

    .line 14
    iput-wide v0, p0, Landroid/app/UserHabit;->launchCount:J

    .line 15
    iput-wide p3, p0, Landroid/app/UserHabit;->totalForegroundTime:J

    const/4 p2, -0x1

    .line 16
    iput p2, p0, Landroid/app/UserHabit;->mLastEvent:I

    .line 17
    iput-wide p5, p0, Landroid/app/UserHabit;->lastForegroundTime:J

    .line 18
    iput-wide p7, p0, Landroid/app/UserHabit;->lastUseTime:J

    .line 19
    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Landroid/app/UserHabit;->mUserId:Ljava/lang/Integer;

    .line 20
    new-instance p2, Landroid/app/AppRelevance;

    invoke-direct {p2, p1}, Landroid/app/AppRelevance;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Landroid/app/UserHabit;->mAppRelevance:Landroid/app/AppRelevance;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/UserHabit;->mLaunchTime:Ljava/util/ArrayList;

    .line 3
    iput-object p1, p0, Landroid/app/UserHabit;->packageName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Landroid/app/UserHabit;->launchCount:J

    .line 5
    iput-wide v0, p0, Landroid/app/UserHabit;->totalForegroundTime:J

    const/4 v2, -0x1

    .line 6
    iput v2, p0, Landroid/app/UserHabit;->mLastEvent:I

    .line 7
    iput-wide v0, p0, Landroid/app/UserHabit;->lastForegroundTime:J

    .line 8
    iput-wide v0, p0, Landroid/app/UserHabit;->lastUseTime:J

    .line 9
    iput-object p2, p0, Landroid/app/UserHabit;->mUserId:Ljava/lang/Integer;

    .line 10
    new-instance p2, Landroid/app/AppRelevance;

    invoke-direct {p2, p1}, Landroid/app/AppRelevance;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Landroid/app/UserHabit;->mAppRelevance:Landroid/app/AppRelevance;

    return-void
.end method

.method public static restoreFromFile(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/UserHabit;
    .locals 7

    .line 1
    new-instance v0, Landroid/app/UserHabit;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/UserHabit;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    if-ltz v1, :cond_8

    .line 13
    .line 14
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const-string/jumbo v4, "userid"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iput-object v2, v0, Landroid/app/UserHabit;->mUserId:Ljava/lang/Integer;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-string/jumbo v4, "pkgName"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    iput-object v3, v0, Landroid/app/UserHabit;->packageName:Ljava/lang/String;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const-string/jumbo v4, "launchCount"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_3

    .line 58
    .line 59
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    iput-wide v2, v0, Landroid/app/UserHabit;->launchCount:J

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    const-string/jumbo v4, "totalForegroundTime"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_4

    .line 78
    .line 79
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 84
    .line 85
    .line 86
    move-result-wide v2

    .line 87
    iput-wide v2, v0, Landroid/app/UserHabit;->totalForegroundTime:J

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    const-string/jumbo v4, "lastFgTime"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_5

    .line 98
    .line 99
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 104
    .line 105
    .line 106
    move-result-wide v2

    .line 107
    iput-wide v2, v0, Landroid/app/UserHabit;->lastForegroundTime:J

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_5
    const-string/jumbo v4, "lastUseTime"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_6

    .line 118
    .line 119
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 124
    .line 125
    .line 126
    move-result-wide v2

    .line 127
    iput-wide v2, v0, Landroid/app/UserHabit;->lastUseTime:J

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_6
    const-string/jumbo v4, "recentLaunchTime"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_7

    .line 138
    .line 139
    const-string v2, ";"

    .line 140
    .line 141
    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    array-length v3, v2

    .line 146
    const/4 v4, 0x0

    .line 147
    :goto_1
    if-ge v4, v3, :cond_0

    .line 148
    .line 149
    aget-object v5, v2, v4

    .line 150
    .line 151
    iget-object v6, v0, Landroid/app/UserHabit;->mLaunchTime:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    add-int/lit8 v4, v4, 0x1

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_7
    const-string v3, "error attr name....:"

    .line 160
    .line 161
    const-string v4, "UserHabit"

    .line 162
    .line 163
    invoke-static {v3, v2, v4}, Landroid/app/m;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_8
    return-object v0
.end method

.method private writeAppRelevanceToFile(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 1

    iget-object v0, p0, Landroid/app/UserHabit;->mAppRelevance:Landroid/app/AppRelevance;

    invoke-virtual {v0, p1}, Landroid/app/AppRelevance;->writeToFile(Lorg/xmlpull/v1/XmlSerializer;)V

    return-void
.end method


# virtual methods
.method public clone()Landroid/app/UserHabit;
    .locals 3

    .line 2
    new-instance v0, Landroid/app/UserHabit;

    invoke-direct {v0}, Landroid/app/UserHabit;-><init>()V

    .line 3
    iget-object v1, p0, Landroid/app/UserHabit;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/UserHabit;->packageName:Ljava/lang/String;

    .line 4
    iget-wide v1, p0, Landroid/app/UserHabit;->launchCount:J

    iput-wide v1, v0, Landroid/app/UserHabit;->launchCount:J

    .line 5
    iget-wide v1, p0, Landroid/app/UserHabit;->totalForegroundTime:J

    iput-wide v1, v0, Landroid/app/UserHabit;->totalForegroundTime:J

    .line 6
    iget v1, p0, Landroid/app/UserHabit;->mLastEvent:I

    iput v1, v0, Landroid/app/UserHabit;->mLastEvent:I

    .line 7
    iget-wide v1, p0, Landroid/app/UserHabit;->lastForegroundTime:J

    iput-wide v1, v0, Landroid/app/UserHabit;->lastForegroundTime:J

    .line 8
    iget-wide v1, p0, Landroid/app/UserHabit;->lastUseTime:J

    iput-wide v1, v0, Landroid/app/UserHabit;->lastUseTime:J

    .line 9
    iget-object v1, p0, Landroid/app/UserHabit;->mUserId:Ljava/lang/Integer;

    iput-object v1, v0, Landroid/app/UserHabit;->mUserId:Ljava/lang/Integer;

    .line 10
    iget-object v1, p0, Landroid/app/UserHabit;->mLaunchTime:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/app/UserHabit;->mLaunchTime:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/UserHabit;->clone()Landroid/app/UserHabit;

    move-result-object v0

    return-object v0
.end method

.method public getAppRelevance()Landroid/app/AppRelevance;
    .locals 1

    iget-object v0, p0, Landroid/app/UserHabit;->mAppRelevance:Landroid/app/AppRelevance;

    return-object v0
.end method

.method public getLastForegroundTime()J
    .locals 2

    iget-wide v0, p0, Landroid/app/UserHabit;->lastForegroundTime:J

    return-wide v0
.end method

.method public getLastTimeUsed()J
    .locals 2

    iget-wide v0, p0, Landroid/app/UserHabit;->lastUseTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/UserHabit;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentLaunchTime()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/UserHabit;->mLaunchTime:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/app/UserHabit;->mLaunchTime:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method public getTotalTimeInForeground()J
    .locals 2

    iget-wide v0, p0, Landroid/app/UserHabit;->totalForegroundTime:J

    return-wide v0
.end method

.method public restoreAppRelevanceFromFile(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    iget-object v0, p0, Landroid/app/UserHabit;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/app/AppRelevance;->restoreFromFile(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/AppRelevance;

    move-result-object p1

    iput-object p1, p0, Landroid/app/UserHabit;->mAppRelevance:Landroid/app/AppRelevance;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iget-object v1, p0, Landroid/app/UserHabit;->mLaunchTime:Ljava/util/ArrayList;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Landroid/app/UserHabit;->mLaunchTime:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Ljava/lang/String;

    .line 23
    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, ";"

    .line 36
    .line 37
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "UID:"

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Landroid/app/UserHabit;->mUserId:Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string/jumbo v2, "|pkg:"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Landroid/app/UserHabit;->packageName:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string/jumbo v2, "|count:"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-wide v2, p0, Landroid/app/UserHabit;->launchCount:J

    .line 76
    .line 77
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string/jumbo v2, "|LastUsed:"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-wide v2, p0, Landroid/app/UserHabit;->lastUseTime:J

    .line 87
    .line 88
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string/jumbo v2, "|totalForegroundTime"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-wide v2, p0, Landroid/app/UserHabit;->totalForegroundTime:J

    .line 98
    .line 99
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string/jumbo v2, "|launchTime:"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    throw v0
.end method

.method public updateLaunchTime(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/UserHabit;->mLaunchTime:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/app/UserHabit;->mLaunchTime:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Landroid/app/UserHabit;->mLaunchTime:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/16 v1, 0xa

    .line 16
    .line 17
    if-lt p1, v1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Landroid/app/UserHabit;->mLaunchTime:Ljava/util/ArrayList;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p1
.end method

.method public writeToFile(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "userid"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Landroid/app/UserHabit;->mUserId:Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12
    .line 13
    .line 14
    const-string/jumbo v0, "pkgName"

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Landroid/app/UserHabit;->packageName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 20
    .line 21
    .line 22
    const-string/jumbo v0, "launchCount"

    .line 23
    .line 24
    .line 25
    iget-wide v3, p0, Landroid/app/UserHabit;->launchCount:J

    .line 26
    .line 27
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 32
    .line 33
    .line 34
    const-string/jumbo v0, "totalForegroundTime"

    .line 35
    .line 36
    .line 37
    iget-wide v3, p0, Landroid/app/UserHabit;->totalForegroundTime:J

    .line 38
    .line 39
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 44
    .line 45
    .line 46
    const-string/jumbo v0, "lastFgTime"

    .line 47
    .line 48
    .line 49
    iget-wide v3, p0, Landroid/app/UserHabit;->lastForegroundTime:J

    .line 50
    .line 51
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 56
    .line 57
    .line 58
    const-string/jumbo v0, "lastUseTime"

    .line 59
    .line 60
    .line 61
    iget-wide v3, p0, Landroid/app/UserHabit;->lastUseTime:J

    .line 62
    .line 63
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    .line 69
    .line 70
    const-string v0, ""

    .line 71
    .line 72
    iget-object v1, p0, Landroid/app/UserHabit;->mLaunchTime:Ljava/util/ArrayList;

    .line 73
    .line 74
    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v3, p0, Landroid/app/UserHabit;->mLaunchTime:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_0

    .line 86
    .line 87
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Ljava/lang/String;

    .line 92
    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v0, ";"

    .line 105
    .line 106
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    goto :goto_0

    .line 114
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    const-string/jumbo v1, "recentLaunchTime"

    .line 116
    .line 117
    .line 118
    invoke-interface {p1, v2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    .line 120
    .line 121
    invoke-direct {p0, p1}, Landroid/app/UserHabit;->writeAppRelevanceToFile(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :catchall_0
    move-exception p1

    .line 126
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    throw p1
.end method
