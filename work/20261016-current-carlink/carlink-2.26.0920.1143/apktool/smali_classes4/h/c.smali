.class public final Lh/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Ljava/lang/Runnable;
.implements Lg/e;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public final f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Landroid/os/IBinder;

.field public final k:Lh/e;

.field public l:Landroid/os/Handler;

.field public m:J

.field public n:J

.field public o:Z

.field public p:Z

.field public q:I

.field public final r:Lh/a;

.field public s:I

.field public final t:Lh/a;

.field public final u:Lh/b;

.field public final v:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Le/k;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x400

    .line 5
    .line 6
    iput v0, p0, Lh/c;->b:I

    .line 7
    .line 8
    const/16 v1, 0x258

    .line 9
    .line 10
    iput v1, p0, Lh/c;->c:I

    .line 11
    .line 12
    iput v0, p0, Lh/c;->d:I

    .line 13
    .line 14
    iput v1, p0, Lh/c;->e:I

    .line 15
    .line 16
    const/16 v0, 0x14b

    .line 17
    .line 18
    iput v0, p0, Lh/c;->f:I

    .line 19
    .line 20
    const/16 v0, 0xbb

    .line 21
    .line 22
    iput v0, p0, Lh/c;->g:I

    .line 23
    .line 24
    new-instance v0, Lh/e;

    .line 25
    .line 26
    invoke-direct {v0}, Lh/e;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lh/c;->k:Lh/e;

    .line 30
    .line 31
    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lh/c;->q:I

    .line 33
    .line 34
    new-instance v1, Lh/a;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-direct {v1, v2}, Lh/a;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lh/c;->r:Lh/a;

    .line 41
    .line 42
    iput v0, p0, Lh/c;->s:I

    .line 43
    .line 44
    new-instance v0, Lh/a;

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-direct {v0, v1}, Lh/a;-><init>(I)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lh/c;->t:Lh/a;

    .line 51
    .line 52
    new-instance v0, Lh/b;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lh/b;-><init>(Lh/c;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lh/c;->u:Lh/b;

    .line 58
    .line 59
    new-instance v0, Ljava/util/HashSet;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lh/c;->v:Ljava/util/HashSet;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-nez v3, :cond_0

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :cond_0
    new-instance p1, Landroid/os/HandlerThread;

    .line 76
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v3, "LinkServer-"

    .line 80
    .line 81
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget-object v3, Lkotlin/jvm/internal/g;->a:Lkotlin/jvm/internal/h;

    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    new-instance v3, Lkotlin/jvm/internal/c;

    .line 90
    .line 91
    const-class v4, Lh/c;

    .line 92
    .line 93
    invoke-direct {v3, v4}, Lkotlin/jvm/internal/c;-><init>(Ljava/lang/Class;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    const-string v0, "it.looper"

    .line 114
    .line 115
    invoke-static {p1, v0}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Landroid/os/Handler;

    .line 119
    .line 120
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 121
    .line 122
    .line 123
    iput-object v0, p0, Lh/c;->l:Landroid/os/Handler;

    .line 124
    .line 125
    invoke-virtual {p0}, Lh/c;->e()Landroid/os/Handler;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 130
    .line 131
    const/4 v3, 0x0

    .line 132
    if-eqz v0, :cond_2

    .line 133
    .line 134
    const/4 v0, 0x2

    .line 135
    new-array v0, v0, [Ljava/lang/Object;

    .line 136
    .line 137
    const-string v4, "ro.fyt.realplatform"

    .line 138
    .line 139
    aput-object v4, v0, v2

    .line 140
    .line 141
    const-string v2, ""

    .line 142
    .line 143
    aput-object v2, v0, v1

    .line 144
    .line 145
    const-string v1, "android.os.SystemProperties"

    .line 146
    .line 147
    const-string v2, "get"

    .line 148
    .line 149
    invoke-static {v1, v3, v2, v0}, Lp/a;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const-string v1, "invoke(\"android.os.Syste\u2026erties\", \"get\", key, def)"

    .line 154
    .line 155
    invoke-static {v0, v1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    check-cast v0, Ljava/lang/String;

    .line 159
    .line 160
    const-string v1, "813CM"

    .line 161
    .line 162
    invoke-static {v0, v1}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_1

    .line 167
    .line 168
    const-wide/16 v0, 0x9c4

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_1
    const-wide/16 v0, 0x0

    .line 172
    .line 173
    :goto_0
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_2
    const-string p1, "me"

    .line 178
    .line 179
    invoke-static {p1}, Lt/b;->B(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw v3
.end method

.method public static i(Lh/c;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "linkStop  =======>>   aync: 0  delay: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v2, "HDL"

    .line 17
    .line 18
    invoke-static {v2, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    const-string v5, "me"

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->A()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    iput-wide v2, p0, Lh/c;->m:J

    .line 39
    .line 40
    :cond_0
    iput-wide v2, p0, Lh/c;->n:J

    .line 41
    .line 42
    new-array v0, v1, [I

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    aput v1, v0, v1

    .line 46
    .line 47
    const/16 v1, 0xc9

    .line 48
    .line 49
    invoke-virtual {p0, v1, v4, v0}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 50
    .line 51
    .line 52
    sget-object p0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 53
    .line 54
    if-eqz p0, :cond_1

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    iget-object p0, p0, Lg/b;->H:Landroidx/lifecycle/MutableLiveData;

    .line 61
    .line 62
    const/high16 v0, -0x80000000

    .line 63
    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v4

    .line 76
    :cond_2
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v4
.end method


# virtual methods
.method public final a(I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, "-------->>> onKey keyCode: "

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "HDL"

    .line 20
    .line 21
    invoke-static {v3, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->p()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->o()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/16 v4, 0x100e

    .line 44
    .line 45
    const/16 v5, 0x100f

    .line 46
    .line 47
    const/16 v6, 0x100c

    .line 48
    .line 49
    const/16 v7, 0x100d

    .line 50
    .line 51
    const/16 v8, 0x1003

    .line 52
    .line 53
    const/16 v9, 0x1004

    .line 54
    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    if-eq v1, v9, :cond_1

    .line 58
    .line 59
    if-eq v1, v8, :cond_1

    .line 60
    .line 61
    if-eq v1, v7, :cond_1

    .line 62
    .line 63
    if-eq v1, v6, :cond_1

    .line 64
    .line 65
    if-eq v1, v5, :cond_1

    .line 66
    .line 67
    if-eq v1, v4, :cond_1

    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-eqz v2, :cond_19

    .line 79
    .line 80
    const/4 v10, 0x0

    .line 81
    const/16 v11, 0x1001

    .line 82
    .line 83
    const/4 v12, 0x4

    .line 84
    const/16 v13, 0xcf

    .line 85
    .line 86
    const/4 v14, 0x0

    .line 87
    const/4 v15, 0x1

    .line 88
    if-ne v1, v11, :cond_2

    .line 89
    .line 90
    iget-object v1, v2, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 91
    .line 92
    if-eqz v1, :cond_19

    .line 93
    .line 94
    new-array v2, v15, [I

    .line 95
    .line 96
    aput v12, v2, v14

    .line 97
    .line 98
    invoke-virtual {v1, v13, v10, v2}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 99
    .line 100
    .line 101
    goto/16 :goto_0

    .line 102
    .line 103
    :cond_2
    const/16 v11, 0x1002

    .line 104
    .line 105
    const/16 v16, 0x5

    .line 106
    .line 107
    if-ne v1, v11, :cond_3

    .line 108
    .line 109
    iget-object v1, v2, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 110
    .line 111
    if-eqz v1, :cond_19

    .line 112
    .line 113
    new-array v2, v15, [I

    .line 114
    .line 115
    aput v16, v2, v14

    .line 116
    .line 117
    invoke-virtual {v1, v13, v10, v2}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 118
    .line 119
    .line 120
    goto/16 :goto_0

    .line 121
    .line 122
    :cond_3
    if-ne v1, v8, :cond_4

    .line 123
    .line 124
    iget-object v1, v2, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 125
    .line 126
    if-eqz v1, :cond_19

    .line 127
    .line 128
    invoke-virtual {v1, v15}, Lh/c;->g(Z)V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_0

    .line 132
    .line 133
    :cond_4
    if-ne v1, v9, :cond_5

    .line 134
    .line 135
    iget-object v1, v2, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 136
    .line 137
    if-eqz v1, :cond_19

    .line 138
    .line 139
    invoke-virtual {v1, v14}, Lh/c;->g(Z)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :cond_5
    const/16 v8, 0x1005

    .line 145
    .line 146
    if-ne v1, v8, :cond_7

    .line 147
    .line 148
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    iget-boolean v1, v1, Lcom/syu/carlink/CarLink;->d:Z

    .line 153
    .line 154
    if-nez v1, :cond_6

    .line 155
    .line 156
    invoke-virtual {v2, v15}, Lcom/syu/carlink/CarLinkService;->j(Z)V

    .line 157
    .line 158
    .line 159
    invoke-virtual/range {p0 .. p0}, Lh/c;->e()Landroid/os/Handler;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    new-instance v3, Lcom/syu/carlink/a;

    .line 164
    .line 165
    const/16 v4, 0xa

    .line 166
    .line 167
    invoke-direct {v3, v2, v4}, Lcom/syu/carlink/a;-><init>(Lcom/syu/carlink/CarLinkService;I)V

    .line 168
    .line 169
    .line 170
    const-wide/16 v4, 0x320

    .line 171
    .line 172
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_6
    iget-object v1, v2, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 178
    .line 179
    if-eqz v1, :cond_19

    .line 180
    .line 181
    invoke-virtual {v1}, Lh/c;->q()V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :cond_7
    const/16 v8, 0x1006

    .line 187
    .line 188
    if-ne v1, v8, :cond_8

    .line 189
    .line 190
    iget-object v1, v2, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 191
    .line 192
    if-eqz v1, :cond_19

    .line 193
    .line 194
    new-array v2, v15, [I

    .line 195
    .line 196
    aput v15, v2, v14

    .line 197
    .line 198
    invoke-virtual {v1, v13, v10, v2}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 199
    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_8
    const/16 v8, 0x1007

    .line 204
    .line 205
    const/4 v9, 0x2

    .line 206
    if-ne v1, v8, :cond_9

    .line 207
    .line 208
    iget-object v1, v2, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 209
    .line 210
    if-eqz v1, :cond_19

    .line 211
    .line 212
    new-array v2, v15, [I

    .line 213
    .line 214
    aput v9, v2, v14

    .line 215
    .line 216
    invoke-virtual {v1, v13, v10, v2}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 217
    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :cond_9
    const/16 v8, 0x1008

    .line 222
    .line 223
    if-ne v1, v8, :cond_a

    .line 224
    .line 225
    iget-object v1, v2, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 226
    .line 227
    if-eqz v1, :cond_19

    .line 228
    .line 229
    new-array v2, v15, [I

    .line 230
    .line 231
    const/4 v3, 0x3

    .line 232
    aput v3, v2, v14

    .line 233
    .line 234
    invoke-virtual {v1, v13, v10, v2}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 235
    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_a
    const/16 v8, 0x1009

    .line 240
    .line 241
    const/16 v11, 0xcb

    .line 242
    .line 243
    if-ne v1, v8, :cond_b

    .line 244
    .line 245
    iget-object v1, v2, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 246
    .line 247
    if-eqz v1, :cond_19

    .line 248
    .line 249
    new-array v2, v9, [I

    .line 250
    .line 251
    fill-array-data v2, :array_0

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v11, v10, v2}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 255
    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :cond_b
    const/16 v8, 0x100a

    .line 260
    .line 261
    if-ne v1, v8, :cond_c

    .line 262
    .line 263
    iget-object v1, v2, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 264
    .line 265
    if-eqz v1, :cond_19

    .line 266
    .line 267
    new-array v2, v9, [I

    .line 268
    .line 269
    fill-array-data v2, :array_1

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v11, v10, v2}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 273
    .line 274
    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :cond_c
    const/16 v8, 0x100b

    .line 278
    .line 279
    if-ne v1, v8, :cond_10

    .line 280
    .line 281
    const-string v1, "=================>>> clickBtn action: 2"

    .line 282
    .line 283
    invoke-static {v3, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 287
    .line 288
    const-string v2, "me"

    .line 289
    .line 290
    if-eqz v1, :cond_f

    .line 291
    .line 292
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    if-eqz v1, :cond_d

    .line 297
    .line 298
    iget-object v1, v1, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 299
    .line 300
    if-eqz v1, :cond_d

    .line 301
    .line 302
    new-array v3, v9, [I

    .line 303
    .line 304
    fill-array-data v3, :array_2

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1, v11, v10, v3}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 308
    .line 309
    .line 310
    :cond_d
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 311
    .line 312
    if-eqz v1, :cond_e

    .line 313
    .line 314
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    if-eqz v1, :cond_19

    .line 319
    .line 320
    iget-object v1, v1, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 321
    .line 322
    if-eqz v1, :cond_19

    .line 323
    .line 324
    new-array v2, v9, [I

    .line 325
    .line 326
    fill-array-data v2, :array_3

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1, v11, v10, v2}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 330
    .line 331
    .line 332
    goto/16 :goto_0

    .line 333
    .line 334
    :cond_e
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    throw v10

    .line 338
    :cond_f
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    throw v10

    .line 342
    :cond_10
    if-ne v1, v7, :cond_12

    .line 343
    .line 344
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->o()Z

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    if-eqz v1, :cond_11

    .line 353
    .line 354
    iget-object v1, v2, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 355
    .line 356
    if-eqz v1, :cond_19

    .line 357
    .line 358
    invoke-virtual {v1, v14}, Lh/c;->g(Z)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_0

    .line 362
    .line 363
    :cond_11
    iget-object v1, v2, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 364
    .line 365
    if-eqz v1, :cond_19

    .line 366
    .line 367
    new-array v2, v15, [I

    .line 368
    .line 369
    aput v12, v2, v14

    .line 370
    .line 371
    invoke-virtual {v1, v13, v10, v2}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 372
    .line 373
    .line 374
    goto/16 :goto_0

    .line 375
    .line 376
    :cond_12
    if-ne v1, v5, :cond_14

    .line 377
    .line 378
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->o()Z

    .line 383
    .line 384
    .line 385
    move-result v1

    .line 386
    if-eqz v1, :cond_13

    .line 387
    .line 388
    iget-object v1, v2, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 389
    .line 390
    if-eqz v1, :cond_19

    .line 391
    .line 392
    invoke-virtual {v1, v14}, Lh/c;->g(Z)V

    .line 393
    .line 394
    .line 395
    goto :goto_0

    .line 396
    :cond_13
    iget-object v1, v2, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 397
    .line 398
    if-eqz v1, :cond_19

    .line 399
    .line 400
    new-array v2, v15, [I

    .line 401
    .line 402
    aput v16, v2, v14

    .line 403
    .line 404
    invoke-virtual {v1, v13, v10, v2}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 405
    .line 406
    .line 407
    goto :goto_0

    .line 408
    :cond_14
    if-ne v1, v6, :cond_16

    .line 409
    .line 410
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->o()Z

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    if-eqz v1, :cond_15

    .line 419
    .line 420
    iget-object v1, v2, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 421
    .line 422
    if-eqz v1, :cond_19

    .line 423
    .line 424
    invoke-virtual {v1, v15}, Lh/c;->g(Z)V

    .line 425
    .line 426
    .line 427
    goto :goto_0

    .line 428
    :cond_15
    iget-object v1, v2, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 429
    .line 430
    if-eqz v1, :cond_19

    .line 431
    .line 432
    new-array v2, v15, [I

    .line 433
    .line 434
    aput v16, v2, v14

    .line 435
    .line 436
    invoke-virtual {v1, v13, v10, v2}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 437
    .line 438
    .line 439
    goto :goto_0

    .line 440
    :cond_16
    if-ne v1, v4, :cond_18

    .line 441
    .line 442
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->o()Z

    .line 447
    .line 448
    .line 449
    move-result v1

    .line 450
    if-eqz v1, :cond_17

    .line 451
    .line 452
    iget-object v1, v2, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 453
    .line 454
    if-eqz v1, :cond_19

    .line 455
    .line 456
    invoke-virtual {v1, v15}, Lh/c;->g(Z)V

    .line 457
    .line 458
    .line 459
    goto :goto_0

    .line 460
    :cond_17
    iget-object v1, v2, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 461
    .line 462
    if-eqz v1, :cond_19

    .line 463
    .line 464
    new-array v2, v15, [I

    .line 465
    .line 466
    aput v12, v2, v14

    .line 467
    .line 468
    invoke-virtual {v1, v13, v10, v2}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 469
    .line 470
    .line 471
    goto :goto_0

    .line 472
    :cond_18
    const/16 v2, 0x1010

    .line 473
    .line 474
    if-ne v1, v2, :cond_19

    .line 475
    .line 476
    new-array v1, v9, [I

    .line 477
    .line 478
    fill-array-data v1, :array_4

    .line 479
    .line 480
    .line 481
    invoke-virtual {v0, v11, v10, v1}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 482
    .line 483
    .line 484
    new-array v1, v9, [I

    .line 485
    .line 486
    fill-array-data v1, :array_5

    .line 487
    .line 488
    .line 489
    invoke-virtual {v0, v11, v10, v1}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 490
    .line 491
    .line 492
    :cond_19
    :goto_0
    return-void

    .line 493
    :array_0
    .array-data 4
        0x3
        -0x1
    .end array-data

    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    :array_1
    .array-data 4
        0x3
        0x1
    .end array-data

    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    :array_2
    .array-data 4
        0x2
        0x1
    .end array-data

    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    :array_3
    .array-data 4
        0x2
        0x0
    .end array-data

    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    :array_4
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    :array_5
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final b(II)Landroid/util/Size;
    .locals 5

    .line 1
    int-to-float v0, p1

    .line 2
    int-to-float v1, p2

    .line 3
    div-float/2addr v0, v1

    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    .line 6
    cmpg-float v0, v0, v1

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    move v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v2

    .line 15
    :goto_0
    const/16 v3, 0x438

    .line 16
    .line 17
    const/16 v4, 0x780

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, p1, p2, v3, v4}, Lh/c;->c(IIII)[I

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {p0, p1, p2, v4, v3}, Lh/c;->c(IIII)[I

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_1
    aget p2, p1, v2

    .line 31
    .line 32
    aget p1, p1, v1

    .line 33
    .line 34
    rem-int/lit8 v0, p2, 0x8

    .line 35
    .line 36
    sub-int/2addr p2, v0

    .line 37
    rem-int/lit8 v0, p1, 0x8

    .line 38
    .line 39
    sub-int/2addr p1, v0

    .line 40
    new-instance v0, Landroid/util/Size;

    .line 41
    .line 42
    invoke-direct {v0, p2, p1}, Landroid/util/Size;-><init>(II)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method public final binderDied()V
    .locals 4

    .line 1
    const-string v0, "CarplayListener binderDied !!"

    .line 2
    .line 3
    const-string v1, "HDL"

    .line 4
    .line 5
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lh/c;->v:Ljava/util/HashSet;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Le/k;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const-string v3, "---------->>>  onDeath "

    .line 30
    .line 31
    invoke-static {v1, v3}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, v2, Le/k;->e:Lz/l;

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-interface {v2, v3}, Lz/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 45
    .line 46
    const-string v1, "me"

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->C()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v3, 0x1

    .line 56
    if-ne v0, v3, :cond_3

    .line 57
    .line 58
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v0, v0, Lg/b;->u:Landroidx/lifecycle/MutableLiveData;

    .line 67
    .line 68
    const/4 v1, 0x3

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v2

    .line 81
    :cond_3
    :goto_1
    iput-object v2, p0, Lh/c;->j:Landroid/os/IBinder;

    .line 82
    .line 83
    invoke-virtual {p0}, Lh/c;->e()Landroid/os/Handler;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-wide/16 v1, 0x320

    .line 88
    .line 89
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_4
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v2
.end method

.method public final c(IIII)[I
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    int-to-float p3, p3

    .line 5
    int-to-float p1, p1

    .line 6
    div-float/2addr p3, p1

    .line 7
    int-to-float p4, p4

    .line 8
    int-to-float p2, p2

    .line 9
    div-float/2addr p4, p2

    .line 10
    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    mul-float/2addr p1, p3

    .line 15
    const/high16 p4, 0x3f000000    # 0.5f

    .line 16
    .line 17
    add-float/2addr p1, p4

    .line 18
    float-to-int p1, p1

    .line 19
    const/4 v1, 0x0

    .line 20
    aput p1, v0, v1

    .line 21
    .line 22
    mul-float/2addr p2, p3

    .line 23
    add-float/2addr p2, p4

    .line 24
    float-to-int p1, p2

    .line 25
    const/4 p2, 0x1

    .line 26
    aput p1, v0, p2

    .line 27
    .line 28
    return-object v0
.end method

.method public final d(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    iget-object v0, p0, Lh/c;->j:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    shl-int/lit8 p1, p1, 0x8

    or-int/lit8 p1, p1, 0x2

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final e()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lh/c;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mHandler"

    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final varargs f(I[I)I
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    const-string v2, "CarplayServer.ICarplayService"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    array-length v2, p2

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v2, :cond_0

    .line 17
    .line 18
    aget v4, p2, v3

    .line 19
    .line 20
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p2, "outparam"

    .line 27
    .line 28
    invoke-static {v1, p2}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, v0, v1}, Lh/c;->d(ILandroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 38
    .line 39
    .line 40
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_2

    .line 44
    :catch_0
    move-exception p1

    .line 45
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    :cond_1
    const/4 p1, -0x1

    .line 49
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 53
    .line 54
    .line 55
    return p1

    .line 56
    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method public final g(Z)V
    .locals 5

    .line 1
    const/16 v0, 0xd0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-array p1, v2, [I

    .line 9
    .line 10
    aput v2, p1, v3

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1, p1}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 13
    .line 14
    .line 15
    new-array p1, v2, [I

    .line 16
    .line 17
    aput v3, p1, v3

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1, p1}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-nez p1, :cond_2

    .line 24
    .line 25
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->o()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    new-array p1, v2, [I

    .line 36
    .line 37
    const/4 v4, 0x3

    .line 38
    aput v4, p1, v3

    .line 39
    .line 40
    invoke-virtual {p0, v0, v1, p1}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 41
    .line 42
    .line 43
    new-array p1, v2, [I

    .line 44
    .line 45
    aput v3, p1, v3

    .line 46
    .line 47
    invoke-virtual {p0, v0, v1, p1}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const-string p1, "me"

    .line 52
    .line 53
    invoke-static {p1}, Lt/b;->B(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v1

    .line 57
    :cond_2
    :goto_0
    return-void
.end method

.method public final h(I)V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    const-class v2, Ljava/lang/String;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 8
    .line 9
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 10
    .line 11
    invoke-static {v2}, Lt/b;->e(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    aput-object v2, v1, v4

    .line 16
    .line 17
    new-array v0, v0, [Ljava/lang/Object;

    .line 18
    .line 19
    const-string v2, "persist.lsec.cp.audiooff"

    .line 20
    .line 21
    aput-object v2, v0, v3

    .line 22
    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    aput-object v2, v0, v4

    .line 28
    .line 29
    const-string v2, "android.os.SystemProperties"

    .line 30
    .line 31
    const-string v5, "getInt"

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    invoke-static {v2, v6, v5, v1, v0}, Lp/a;->d(Ljava/lang/String;Landroid/net/wifi/WifiManager;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Integer;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v0, v3

    .line 48
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v1, "value"

    .line 53
    .line 54
    invoke-static {v0, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v1, "sys.lsec.cp.audiooff"

    .line 58
    .line 59
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 63
    .line 64
    const-string v1, "me"

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v0, v0, Lg/b;->s:Landroidx/lifecycle/MutableLiveData;

    .line 73
    .line 74
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 82
    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-object v0, v0, Lg/b;->u:Landroidx/lifecycle/MutableLiveData;

    .line 90
    .line 91
    const/16 v1, 0xfe

    .line 92
    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    new-array v0, v4, [I

    .line 101
    .line 102
    aput p1, v0, v3

    .line 103
    .line 104
    const/16 p1, 0xc8

    .line 105
    .line 106
    invoke-virtual {p0, p1, v6, v0}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_1
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v6

    .line 114
    :cond_2
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v6
.end method

.method public final j(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "============================>>> CarPlay Music "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v1, "Play"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v1, "Pause"

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " !!!"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "HDL"

    .line 28
    .line 29
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    new-array v0, v0, [I

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    aput p1, v0, v1

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    const/16 v1, 0xd8

    .line 40
    .line 41
    invoke-virtual {p0, v1, p1, v0}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final k()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "===========================>>>>  releaseNaviFocus  type:: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, "me"

    .line 12
    .line 13
    if-eqz v1, :cond_4

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->C()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "HDL"

    .line 27
    .line 28
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lh/c;->q:I

    .line 32
    .line 33
    const/4 v1, -0x1

    .line 34
    if-ne v0, v1, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->C()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v4, 0x1

    .line 46
    if-ne v0, v4, :cond_2

    .line 47
    .line 48
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->B:Landroid/media/AudioManager;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    iget-object v2, p0, Lh/c;->r:Lh/a;

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v2

    .line 72
    :cond_2
    :goto_0
    iput v1, p0, Lh/c;->q:I

    .line 73
    .line 74
    return-void

    .line 75
    :cond_3
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v2

    .line 79
    :cond_4
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v2
.end method

.method public final l()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "===========================>>>>  releaseVoiceFocus  type:: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, "me"

    .line 12
    .line 13
    if-eqz v1, :cond_4

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->C()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "HDL"

    .line 27
    .line 28
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lh/c;->s:I

    .line 32
    .line 33
    const/4 v1, -0x1

    .line 34
    if-ne v0, v1, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->C()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v4, 0x1

    .line 46
    if-ne v0, v4, :cond_2

    .line 47
    .line 48
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->B:Landroid/media/AudioManager;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    iget-object v2, p0, Lh/c;->t:Lh/a;

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v2

    .line 72
    :cond_2
    :goto_0
    iput v1, p0, Lh/c;->s:I

    .line 73
    .line 74
    return-void

    .line 75
    :cond_3
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v2

    .line 79
    :cond_4
    invoke-static {v3}, Lt/b;->B(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v2
.end method

.method public final m()V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "===========================>>>>  requestAudioFocus  type:: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const-string v4, "me"

    .line 12
    .line 13
    if-eqz v2, :cond_6

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->C()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v2, "HDL"

    .line 27
    .line 28
    invoke-static {v2, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p0, Lh/c;->o:Z

    .line 32
    .line 33
    iget-object v5, p0, Lh/c;->u:Lh/b;

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget v0, v5, Lh/b;->a:I

    .line 39
    .line 40
    if-ne v0, v6, :cond_0

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 44
    .line 45
    if-eqz v0, :cond_5

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->C()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-ne v0, v6, :cond_4

    .line 52
    .line 53
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->B:Landroid/media/AudioManager;

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    const/4 v7, 0x3

    .line 68
    invoke-virtual {v0, v5, v7, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, -0x1

    .line 74
    :goto_0
    iput v0, v5, Lh/b;->a:I

    .line 75
    .line 76
    iput-boolean v6, p0, Lh/c;->o:Z

    .line 77
    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 84
    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->C()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, "  "

    .line 95
    .line 96
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v2, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    invoke-static {v4}, Lt/b;->B(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v3

    .line 114
    :cond_3
    invoke-static {v4}, Lt/b;->B(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v3

    .line 118
    :cond_4
    :goto_1
    return-void

    .line 119
    :cond_5
    invoke-static {v4}, Lt/b;->B(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v3

    .line 123
    :cond_6
    invoke-static {v4}, Lt/b;->B(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v3
.end method

.method public final n(I[Ljava/lang/String;[I)Z
    .locals 6

    .line 1
    const-string v0, "ints"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :try_start_0
    const-string v3, "CarplayServer.ICarplayService"

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    array-length v3, p3

    .line 21
    move v4, v2

    .line 22
    :goto_0
    if-ge v4, v3, :cond_0

    .line 23
    .line 24
    aget v5, p3, v4

    .line 25
    .line 26
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v4, v4, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p3, 0x1

    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    move v3, v2

    .line 36
    :goto_1
    array-length v4, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-ge v3, v4, :cond_1

    .line 38
    .line 39
    move v4, p3

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    move v4, v2

    .line 42
    :goto_2
    if-eqz v4, :cond_2

    .line 43
    .line 44
    add-int/lit8 v4, v3, 0x1

    .line 45
    .line 46
    :try_start_1
    aget-object v3, p2, v3
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    move v3, v4

    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_5

    .line 55
    :catch_0
    move-exception p1

    .line 56
    goto :goto_3

    .line 57
    :catch_1
    move-exception p1

    .line 58
    new-instance p2, Ljava/util/NoSuchElementException;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p2, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p2

    .line 68
    :cond_2
    const-string p2, "outparam"

    .line 69
    .line 70
    invoke-static {v1, p2}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1, v0, v1}, Lh/c;->d(ILandroid/os/Parcel;Landroid/os/Parcel;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 80
    .line 81
    .line 82
    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    if-ltz p1, :cond_3

    .line 84
    .line 85
    move v2, p3

    .line 86
    goto :goto_4

    .line 87
    :goto_3
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    .line 89
    .line 90
    :cond_3
    :goto_4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 94
    .line 95
    .line 96
    return v2

    .line 97
    :goto_5
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 101
    .line 102
    .line 103
    throw p1
.end method

.method public final o(Landroid/view/Surface;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    const-string v2, "CarplayServer.ICarplayService"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0, v2}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object v3, p0, Lh/c;->j:Landroid/os/IBinder;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    const/4 v4, 0x4

    .line 33
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :cond_1
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catch_0
    move-exception p1

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/view/Surface;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    goto :goto_4

    .line 62
    :goto_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    .line 65
    :cond_3
    :goto_3
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :goto_4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 76
    .line 77
    .line 78
    throw p1
.end method

.method public final p(Z)V
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x2

    .line 6
    :goto_0
    iget v1, p0, Lh/c;->i:I

    .line 7
    .line 8
    if-eq v0, v1, :cond_4

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "============================>>> CarPlay videoPlay from "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget v2, p0, Lh/c;->i:I

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, " to "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "HDL"

    .line 35
    .line 36
    invoke-static {v2, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v3, "============================>>> CarPlay linkstate: "

    .line 42
    .line 43
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object v3, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    const-string v5, "me"

    .line 50
    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/syu/carlink/CarLink;->B()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v3, "  isUIShowing: "

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    sget-object v3, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 66
    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    iget-boolean v3, v3, Lcom/syu/carlink/CarLink;->d:Z

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v3, " video play: "

    .line 75
    .line 76
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    const-string p1, "Start"

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    const-string p1, "End"

    .line 85
    .line 86
    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p1, " Projection !!!"

    .line 90
    .line 91
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {v2, p1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const/4 p1, 0x1

    .line 102
    new-array p1, p1, [I

    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    aput v0, p1, v1

    .line 106
    .line 107
    const/16 v1, 0xd2

    .line 108
    .line 109
    invoke-virtual {p0, v1, v4, p1}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 110
    .line 111
    .line 112
    iput v0, p0, Lh/c;->i:I

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_2
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v4

    .line 119
    :cond_3
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v4

    .line 123
    :cond_4
    :goto_2
    return-void
.end method

.method public final q()V
    .locals 6

    .line 1
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 2
    .line 3
    const-string v1, "me"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v0, v0, Lg/b;->x:Landroidx/lifecycle/MutableLiveData;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-static {v0, v3}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v5, "vocie state: "

    .line 27
    .line 28
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v5, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 32
    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    invoke-virtual {v5}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v1, v1, Lg/b;->x:Landroidx/lifecycle/MutableLiveData;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1, v3}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, " to enable : "

    .line 53
    .line 54
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string v3, "HDL"

    .line 65
    .line 66
    invoke-static {v3, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    new-array v1, v1, [I

    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    aput v0, v1, v3

    .line 74
    .line 75
    const/16 v0, 0xcd

    .line 76
    .line 77
    invoke-virtual {p0, v0, v2, v1}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_0
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v2

    .line 85
    :cond_1
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v2
.end method

.method public final run()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lh/c;->e()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    new-array v1, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const-string v3, "CarplayServer"

    .line 13
    .line 14
    aput-object v3, v1, v2

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const-string v4, "getService"

    .line 18
    .line 19
    const-string v5, "android.os.ServiceManager"

    .line 20
    .line 21
    invoke-static {v5, v3, v4, v1}, Lp/a;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/os/IBinder;

    .line 26
    .line 27
    iput-object v1, p0, Lh/c;->j:Landroid/os/IBinder;

    .line 28
    .line 29
    const-string v3, "HDL"

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lh/c;->k:Lh/e;

    .line 37
    .line 38
    const-string v4, "binder"

    .line 39
    .line 40
    invoke-static {v1, v4}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v4, p0, Lh/c;->j:Landroid/os/IBinder;

    .line 44
    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    :try_start_0
    const-string v7, "CarplayServer.ICarplayService"

    .line 56
    .line 57
    invoke-virtual {v5, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 61
    .line 62
    .line 63
    const/4 v1, 0x3

    .line 64
    invoke-interface {v4, v1, v5, v6, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_0

    .line 72
    .line 73
    move v2, v0

    .line 74
    :cond_0
    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 83
    .line 84
    .line 85
    throw v0

    .line 86
    :catch_0
    :goto_0
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 90
    .line 91
    .line 92
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v4, "CarplayListener register result:"

    .line 95
    .line 96
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v3, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lh/c;->v:Ljava/util/HashSet;

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_2

    .line 120
    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Le/k;

    .line 126
    .line 127
    invoke-virtual {v2, p0}, Le/k;->a(Lh/c;)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v2, "=================>>>  CarplayServer Start!! "

    .line 134
    .line 135
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v2, p0, Lh/c;->j:Landroid/os/IBinder;

    .line 139
    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-static {v3, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v1, p0, Lh/c;->j:Landroid/os/IBinder;

    .line 151
    .line 152
    if-nez v1, :cond_3

    .line 153
    .line 154
    const/4 v1, -0x1

    .line 155
    const-string v2, "sys.fyt.carplay"

    .line 156
    .line 157
    invoke-static {v1, v2}, Lt/b;->p(ILjava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-ne v1, v0, :cond_3

    .line 162
    .line 163
    const-string v0, "0"

    .line 164
    .line 165
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const-wide/16 v0, 0x14

    .line 169
    .line 170
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :catch_1
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    .line 177
    .line 178
    :goto_2
    const-string v0, "1"

    .line 179
    .line 180
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Lh/c;->e()Landroid/os/Handler;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    const-wide/16 v1, 0x320

    .line 188
    .line 189
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    .line 191
    .line 192
    :cond_3
    return-void
.end method
