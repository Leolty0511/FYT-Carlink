.class public Landroid/app/LocalActivityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LocalActivityManager$LocalActivityRecord;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final CREATED:I = 0x2

.field static final DESTROYED:I = 0x5

.field static final INITIALIZING:I = 0x1

.field static final RESTORED:I = 0x0

.field static final RESUMED:I = 0x4

.field static final STARTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LocalActivityManager"

.field private static final localLOGV:Z = false


# instance fields
.field private final mActivities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/LocalActivityManager$LocalActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/LocalActivityManager$LocalActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityThread:Landroid/app/ActivityThread;

.field private mCurState:I

.field private mFinishing:Z

.field private final mParent:Landroid/app/Activity;

.field private mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

.field private mSingleMode:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput v0, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 20
    .line 21
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    .line 26
    .line 27
    iput-object p1, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    .line 28
    .line 29
    iput-boolean p2, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    .line 30
    .line 31
    return-void
.end method

.method private moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v9, p1

    .line 3
    .line 4
    move/from16 v10, p2

    .line 5
    .line 6
    iget v1, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 7
    .line 8
    if-eqz v1, :cond_f

    .line 9
    .line 10
    const/4 v2, 0x5

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    const/4 v11, 0x0

    .line 16
    const/4 v12, 0x1

    .line 17
    const/4 v13, 0x3

    .line 18
    const/4 v14, 0x4

    .line 19
    if-ne v1, v12, :cond_6

    .line 20
    .line 21
    iget-object v1, v0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/app/Activity;->getLastNonConfigurationChildInstances()Ljava/util/HashMap;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v2, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object v1, v11

    .line 37
    :goto_0
    if-eqz v1, :cond_2

    .line 38
    .line 39
    new-instance v2, Landroid/app/Activity$NonConfigurationInstances;

    .line 40
    .line 41
    invoke-direct {v2}, Landroid/app/Activity$NonConfigurationInstances;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v1, v2, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    .line 45
    .line 46
    move-object v8, v2

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move-object v8, v11

    .line 49
    :goto_1
    iget-object v1, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 50
    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    iget-object v1, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    .line 54
    .line 55
    iget-object v2, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/app/ActivityThread;->resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 62
    .line 63
    :cond_3
    iget-object v1, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    .line 64
    .line 65
    iget-object v2, v0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    .line 66
    .line 67
    iget-object v3, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v4, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    .line 70
    .line 71
    iget-object v5, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 72
    .line 73
    iget-object v7, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 74
    .line 75
    move-object/from16 v6, p1

    .line 76
    .line 77
    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityThread;->startActivityNow(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/Activity$NonConfigurationInstances;)Landroid/app/Activity;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iput-object v1, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    .line 82
    .line 83
    if-nez v1, :cond_4

    .line 84
    .line 85
    return-void

    .line 86
    :cond_4
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iput-object v1, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    .line 91
    .line 92
    iput-object v11, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 93
    .line 94
    iput v13, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 95
    .line 96
    if-ne v10, v14, :cond_5

    .line 97
    .line 98
    iget-object v1, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    .line 99
    .line 100
    const-string/jumbo v2, "moveToState-INITIALIZING"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v9, v12, v2}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;ZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 104
    .line 105
    .line 106
    iput v14, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 107
    .line 108
    :cond_5
    return-void

    .line 109
    :cond_6
    const/4 v2, 0x2

    .line 110
    if-eq v1, v2, :cond_d

    .line 111
    .line 112
    const/4 v3, 0x0

    .line 113
    if-eq v1, v13, :cond_a

    .line 114
    .line 115
    if-eq v1, v14, :cond_7

    .line 116
    .line 117
    return-void

    .line 118
    :cond_7
    if-ne v10, v13, :cond_8

    .line 119
    .line 120
    iget-boolean v1, v0, Landroid/app/LocalActivityManager;->mFinishing:Z

    .line 121
    .line 122
    invoke-direct {p0, v9, v1}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    .line 123
    .line 124
    .line 125
    iput v13, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 126
    .line 127
    :cond_8
    if-ne v10, v2, :cond_9

    .line 128
    .line 129
    iget-boolean v1, v0, Landroid/app/LocalActivityManager;->mFinishing:Z

    .line 130
    .line 131
    invoke-direct {p0, v9, v1}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    .line 135
    .line 136
    const-string/jumbo v4, "moveToState-RESUMED"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v9, v3, v4}, Landroid/app/ActivityThread;->performStopActivity(Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iput v2, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 143
    .line 144
    :cond_9
    return-void

    .line 145
    :cond_a
    const-string/jumbo v1, "moveToState-STARTED"

    .line 146
    .line 147
    .line 148
    if-ne v10, v14, :cond_b

    .line 149
    .line 150
    iget-object v4, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    .line 151
    .line 152
    invoke-virtual {v4, v9, v12, v1}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;ZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 153
    .line 154
    .line 155
    iput-object v11, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 156
    .line 157
    iput v14, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 158
    .line 159
    :cond_b
    if-ne v10, v2, :cond_c

    .line 160
    .line 161
    iget-object v4, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    .line 162
    .line 163
    invoke-virtual {v4, v9, v3, v1}, Landroid/app/ActivityThread;->performStopActivity(Landroid/os/IBinder;ZLjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iput v2, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 167
    .line 168
    :cond_c
    return-void

    .line 169
    :cond_d
    if-ne v10, v13, :cond_e

    .line 170
    .line 171
    iget-object v1, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    .line 172
    .line 173
    invoke-virtual {v1, v9}, Landroid/app/ActivityThread;->performRestartActivity(Landroid/os/IBinder;)V

    .line 174
    .line 175
    .line 176
    iput v13, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 177
    .line 178
    :cond_e
    if-ne v10, v14, :cond_f

    .line 179
    .line 180
    iget-object v1, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    .line 181
    .line 182
    invoke-virtual {v1, v9}, Landroid/app/ActivityThread;->performRestartActivity(Landroid/os/IBinder;)V

    .line 183
    .line 184
    .line 185
    iget-object v1, v0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    .line 186
    .line 187
    const-string/jumbo v2, "moveToState-CREATED"

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v9, v12, v2}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;ZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 191
    .line 192
    .line 193
    iput v14, v9, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 194
    .line 195
    :cond_f
    :goto_2
    return-void
.end method

.method private performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    .line 2
    .line 3
    iget v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, p1, p2}, Landroid/app/LocalActivityManager;->performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    .line 14
    .line 15
    invoke-virtual {v1, p1, p2}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-object v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    .line 20
    .line 21
    iput-object v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    iput-object v1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 26
    .line 27
    :cond_1
    const/4 p2, 0x5

    .line 28
    iput p2, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 29
    .line 30
    return-object v0
.end method

.method private performPause(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    .line 9
    .line 10
    const-string/jumbo v2, "performPause"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1, p2, v0, v2}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZLjava/lang/String;)Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iput-object p2, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 20
    .line 21
    :cond_1
    return-void
.end method


# virtual methods
.method public destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, v0, p2}, Landroid/app/LocalActivityManager;->performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    iget-object p2, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :cond_1
    :goto_0
    return-object v1
.end method

.method public dispatchCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 34
    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    iput-object v2, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v3, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-direct {v3, v1, v4}, Landroid/app/LocalActivityManager$LocalActivityRecord;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 44
    .line 45
    .line 46
    iput-object v2, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 47
    .line 48
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    .line 49
    .line 50
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    const-string v2, "LocalActivityManager"

    .line 61
    .line 62
    const-string v3, "Exception thrown when restoring LocalActivityManager state"

    .line 63
    .line 64
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const/4 p1, 0x2

    .line 69
    iput p1, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 70
    .line 71
    return-void
.end method

.method public dispatchDestroy(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 17
    .line 18
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    .line 19
    .line 20
    invoke-virtual {v3, v2, p1}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public dispatchPause(Z)V
    .locals 5

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroid/app/LocalActivityManager;->mFinishing:Z

    .line 5
    .line 6
    :cond_0
    const/4 p1, 0x3

    .line 7
    iput p1, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 8
    .line 9
    iget-boolean v0, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 14
    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    invoke-direct {p0, v0, p1}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    if-ge v1, v0, :cond_3

    .line 29
    .line 30
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 37
    .line 38
    iget v3, v2, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 39
    .line 40
    const/4 v4, 0x4

    .line 41
    if-ne v3, v4, :cond_2

    .line 42
    .line 43
    invoke-direct {p0, v2, p1}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 44
    .line 45
    .line 46
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    :goto_1
    return-void
.end method

.method public dispatchResume()V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    iput v0, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 3
    .line 4
    iget-boolean v1, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-direct {p0, v1, v0}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-ge v2, v1, :cond_1

    .line 24
    .line 25
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 32
    .line 33
    invoke-direct {p0, v3, v0}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    return-void
.end method

.method public dispatchRetainNonConfigurationInstance()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_2

    .line 10
    .line 11
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    iget-object v4, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    invoke-virtual {v4}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    new-instance v1, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v3, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return-object v1
.end method

.method public dispatchStop()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 3
    .line 4
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 20
    .line 21
    invoke-direct {p0, v3, v0}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public getActivity(Ljava/lang/String;)Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    return-object p1
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public removeAllActivities()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    return-void
.end method

.method public saveInstanceState()Landroid/os/Bundle;
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_4

    .line 10
    .line 11
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    new-instance v1, Landroid/os/Bundle;

    .line 22
    .line 23
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v4, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 27
    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    iget v4, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 31
    .line 32
    const/4 v5, 0x4

    .line 33
    if-ne v4, v5, :cond_2

    .line 34
    .line 35
    :cond_1
    iget-object v4, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    .line 36
    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    new-instance v4, Landroid/os/Bundle;

    .line 40
    .line 41
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v5, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->activity:Landroid/app/Activity;

    .line 45
    .line 46
    invoke-virtual {v5, v4}, Landroid/app/Activity;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 47
    .line 48
    .line 49
    iput-object v4, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 50
    .line 51
    :cond_2
    iget-object v4, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->instanceState:Landroid/os/Bundle;

    .line 52
    .line 53
    if-eqz v4, :cond_3

    .line 54
    .line 55
    iget-object v3, v3, Landroid/app/LocalActivityManager$LocalActivityRecord;->id:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    return-object v1
.end method

.method public startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;
    .locals 9

    .line 1
    iget v0, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_e

    .line 5
    .line 6
    iget-object v0, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 19
    .line 20
    invoke-direct {v0, p1, p2}, Landroid/app/LocalActivityManager$LocalActivityRecord;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 21
    .line 22
    .line 23
    move v5, v1

    .line 24
    move v4, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v4, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    .line 27
    .line 28
    if-eqz v4, :cond_2

    .line 29
    .line 30
    invoke-virtual {v4, p2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    iget-object v3, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 37
    .line 38
    :cond_1
    move v5, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move v4, v2

    .line 41
    move v5, v4

    .line 42
    :goto_0
    if-nez v3, :cond_3

    .line 43
    .line 44
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    .line 45
    .line 46
    invoke-virtual {v3, p2}, Landroid/app/ActivityThread;->resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    :cond_3
    iget-boolean v6, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    .line 51
    .line 52
    if-eqz v6, :cond_4

    .line 53
    .line 54
    iget-object v6, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 55
    .line 56
    if-eqz v6, :cond_4

    .line 57
    .line 58
    if-eq v6, v0, :cond_4

    .line 59
    .line 60
    iget v7, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 61
    .line 62
    const/4 v8, 0x4

    .line 63
    if-ne v7, v8, :cond_4

    .line 64
    .line 65
    const/4 v7, 0x3

    .line 66
    invoke-direct {p0, v6, v7}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 67
    .line 68
    .line 69
    :cond_4
    if-eqz v5, :cond_5

    .line 70
    .line 71
    iget-object v2, p0, Landroid/app/LocalActivityManager;->mActivities:Ljava/util/Map;

    .line 72
    .line 73
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Landroid/app/LocalActivityManager;->mActivityArray:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto/16 :goto_2

    .line 82
    .line 83
    :cond_5
    iget-object p1, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 84
    .line 85
    if-eqz p1, :cond_c

    .line 86
    .line 87
    if-eq v3, p1, :cond_6

    .line 88
    .line 89
    iget-object v5, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 90
    .line 91
    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_9

    .line 98
    .line 99
    iget-object p1, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v5, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 102
    .line 103
    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_9

    .line 110
    .line 111
    :cond_6
    iget p1, v3, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 112
    .line 113
    if-nez p1, :cond_a

    .line 114
    .line 115
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    const/high16 v5, 0x20000000

    .line 120
    .line 121
    and-int/2addr p1, v5

    .line 122
    if-eqz p1, :cond_7

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_7
    if-eqz v4, :cond_9

    .line 126
    .line 127
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    const/high16 v2, 0x4000000

    .line 132
    .line 133
    and-int/2addr p1, v2

    .line 134
    if-nez p1, :cond_9

    .line 135
    .line 136
    iput-object p2, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    .line 137
    .line 138
    iget p1, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 139
    .line 140
    invoke-direct {p0, v0, p1}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 141
    .line 142
    .line 143
    iget-boolean p1, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    .line 144
    .line 145
    if-eqz p1, :cond_8

    .line 146
    .line 147
    iput-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 148
    .line 149
    :cond_8
    iget-object p1, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    .line 150
    .line 151
    return-object p1

    .line 152
    :cond_9
    invoke-direct {p0, v0, v1}, Landroid/app/LocalActivityManager;->performDestroy(Landroid/app/LocalActivityManager$LocalActivityRecord;Z)Landroid/view/Window;

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_a
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    .line 160
    .line 161
    new-instance v1, Lcom/android/internal/content/ReferrerIntent;

    .line 162
    .line 163
    iget-object v3, p0, Landroid/app/LocalActivityManager;->mParent:Landroid/app/Activity;

    .line 164
    .line 165
    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-direct {v1, p2, v3}, Lcom/android/internal/content/ReferrerIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    iget-object v1, p0, Landroid/app/LocalActivityManager;->mActivityThread:Landroid/app/ActivityThread;

    .line 176
    .line 177
    invoke-virtual {v1, v0, p1, v2}, Landroid/app/ActivityThread;->performNewIntents(Landroid/os/IBinder;Ljava/util/List;Z)V

    .line 178
    .line 179
    .line 180
    iput-object p2, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    .line 181
    .line 182
    iget p1, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 183
    .line 184
    invoke-direct {p0, v0, p1}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 185
    .line 186
    .line 187
    iget-boolean p1, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    .line 188
    .line 189
    if-eqz p1, :cond_b

    .line 190
    .line 191
    iput-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 192
    .line 193
    :cond_b
    iget-object p1, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    .line 194
    .line 195
    return-object p1

    .line 196
    :cond_c
    :goto_2
    iput-object p2, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->intent:Landroid/content/Intent;

    .line 197
    .line 198
    iput v1, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->curState:I

    .line 199
    .line 200
    iput-object v3, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 201
    .line 202
    iget p1, p0, Landroid/app/LocalActivityManager;->mCurState:I

    .line 203
    .line 204
    invoke-direct {p0, v0, p1}, Landroid/app/LocalActivityManager;->moveToState(Landroid/app/LocalActivityManager$LocalActivityRecord;I)V

    .line 205
    .line 206
    .line 207
    iget-boolean p1, p0, Landroid/app/LocalActivityManager;->mSingleMode:Z

    .line 208
    .line 209
    if-eqz p1, :cond_d

    .line 210
    .line 211
    iput-object v0, p0, Landroid/app/LocalActivityManager;->mResumed:Landroid/app/LocalActivityManager$LocalActivityRecord;

    .line 212
    .line 213
    :cond_d
    iget-object p1, v0, Landroid/app/LocalActivityManager$LocalActivityRecord;->window:Landroid/view/Window;

    .line 214
    .line 215
    return-object p1

    .line 216
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 217
    .line 218
    const-string p2, "Activities can\'t be added until the containing group has been created."

    .line 219
    .line 220
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw p1
.end method
