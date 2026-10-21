.class public final Lcom/syu/carlink/CarLinkService;
.super Landroidx/lifecycle/LifecycleService;
.source "SourceFile"


# static fields
.field public static final n0:Ljava/util/ArrayList;

.field public static final o0:Ljava/util/ArrayList;

.field public static final p0:[I

.field public static final q0:[I

.field public static final r0:[I


# instance fields
.field public A:Lh/c;

.field public B:Landroid/media/AudioManager;

.field public C:Ll/b;

.field public D:Le/g;

.field public E:Lz/a;

.field public final F:Ls/a;

.field public volatile G:I

.field public final H:Le/c;

.field public final I:Le/c;

.field public final J:Le/i;

.field public final K:Le/d;

.field public final L:Landroid/os/b;

.field public final M:Lcom/syu/carlink/a;

.field public final N:Le/d;

.field public final O:Le/d;

.field public final P:Le/d;

.field public final Q:Le/d;

.field public final R:Lcom/syu/carlink/b;

.field public final S:Lcom/syu/carlink/a;

.field public final T:Ls/a;

.field public final U:Ls/a;

.field public final V:Lcom/syu/carlink/c;

.field public final W:Le/d;

.field public final X:Le/j;

.field public final Y:Lcom/syu/carlink/b;

.field public final Z:Lcom/syu/carlink/c;

.field public final a0:Le/d;

.field public b:Z

.field public final b0:Le/d;

.field public final c:Ls/a;

.field public final c0:Le/e;

.field public final d:Ljava/lang/String;

.field public final d0:Le/e;

.field public e:Z

.field public final e0:Le/d;

.field public final f:Landroid/os/Handler;

.field public final f0:Le/d;

.field public final g:Ljava/lang/String;

.field public final g0:Le/d;

.field public h:Ljava/lang/Integer;

.field public final h0:Lcom/syu/carlink/b;

.field public i:Ljava/lang/Integer;

.field public final i0:Lcom/syu/carlink/a;

.field public final j:Ls/a;

.field public j0:Z

.field public k:Lg/d;

.field public final k0:Lcom/syu/carlink/CarLinkService$killedReceiver$1;

.field public l:Lo/e;

.field public final l0:Lcom/syu/carlink/a;

.field public m:Z

.field public final m0:Lcom/syu/carlink/b;

.field public n:I

.field public final o:J

.field public p:Landroid/util/Size;

.field public q:I

.field public r:I

.field public s:Lz/a;

.field public t:Lz/a;

.field public final u:I

.field public v:I

.field public w:I

.field public final x:J

.field public final y:I

.field public z:Lh/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "com.zjinnova.zlink"

    .line 2
    .line 3
    const-string v1, "net.easyconn"

    .line 4
    .line 5
    const-string v2, "com.syu.hicar"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lt/b;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 16
    .line 17
    const-string v0, "com.syu.music"

    .line 18
    .line 19
    const-string v1, "com.syu.video"

    .line 20
    .line 21
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lt/b;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/syu/carlink/CarLinkService;->o0:Ljava/util/ArrayList;

    .line 30
    .line 31
    const/16 v0, 0xd

    .line 32
    .line 33
    new-array v0, v0, [I

    .line 34
    .line 35
    fill-array-data v0, :array_0

    .line 36
    .line 37
    .line 38
    sput-object v0, Lcom/syu/carlink/CarLinkService;->p0:[I

    .line 39
    .line 40
    const/16 v0, 0xa

    .line 41
    .line 42
    new-array v0, v0, [I

    .line 43
    .line 44
    fill-array-data v0, :array_1

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/syu/carlink/CarLinkService;->q0:[I

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    new-array v0, v0, [I

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    const/16 v2, 0x3eb

    .line 54
    .line 55
    aput v2, v0, v1

    .line 56
    .line 57
    sput-object v0, Lcom/syu/carlink/CarLinkService;->r0:[I

    .line 58
    .line 59
    return-void

    .line 60
    nop

    .line 61
    :array_0
    .array-data 4
        0x0
        0x1
        0x32
        0x2b
        0x4
        0x8a
        0x85
        0x3c
        0xa6
        0xa7
        0xa8
        0xba
        0xc5
    .end array-data

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    :array_1
    .array-data 4
        0x40
        0x6
        0x3d
        0x3e
        0x7
        0xf
        0xe
        0x1f
        0xd
        0x9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/LifecycleService;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/syu/carlink/CarLinkService$mDevices$2;->INSTANCE:Lcom/syu/carlink/CarLinkService$mDevices$2;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/a;->c(Lz/a;)Ls/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/syu/carlink/CarLinkService;->c:Ls/a;

    .line 11
    .line 12
    const-string v0, "0"

    .line 13
    .line 14
    iput-object v0, p0, Lcom/syu/carlink/CarLinkService;->d:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/syu/carlink/CarLinkService;->e:Z

    .line 18
    .line 19
    new-instance v1, Landroid/os/Handler;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 29
    .line 30
    const-string v1, "com.fyt.systemui.remove"

    .line 31
    .line 32
    iput-object v1, p0, Lcom/syu/carlink/CarLinkService;->g:Ljava/lang/String;

    .line 33
    .line 34
    sget-object v1, Lcom/syu/carlink/CarLinkService$mHandle$2;->INSTANCE:Lcom/syu/carlink/CarLinkService$mHandle$2;

    .line 35
    .line 36
    invoke-static {v1}, Lkotlin/a;->c(Lz/a;)Ls/a;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Lcom/syu/carlink/CarLinkService;->j:Ls/a;

    .line 41
    .line 42
    const-wide/16 v1, 0x3a98

    .line 43
    .line 44
    iput-wide v1, p0, Lcom/syu/carlink/CarLinkService;->o:J

    .line 45
    .line 46
    const/4 v1, 0x2

    .line 47
    iput v1, p0, Lcom/syu/carlink/CarLinkService;->u:I

    .line 48
    .line 49
    const-wide/16 v2, 0xc8

    .line 50
    .line 51
    iput-wide v2, p0, Lcom/syu/carlink/CarLinkService;->x:J

    .line 52
    .line 53
    const/16 v2, 0x19

    .line 54
    .line 55
    iput v2, p0, Lcom/syu/carlink/CarLinkService;->y:I

    .line 56
    .line 57
    new-instance v2, Lcom/syu/carlink/CarLinkService$locationManager$2;

    .line 58
    .line 59
    invoke-direct {v2, p0}, Lcom/syu/carlink/CarLinkService$locationManager$2;-><init>(Lcom/syu/carlink/CarLinkService;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v2}, Lkotlin/a;->c(Lz/a;)Ls/a;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    iput-object v2, p0, Lcom/syu/carlink/CarLinkService;->F:Ls/a;

    .line 67
    .line 68
    new-instance v2, Le/c;

    .line 69
    .line 70
    invoke-direct {v2, p0}, Le/c;-><init>(Lcom/syu/carlink/CarLinkService;)V

    .line 71
    .line 72
    .line 73
    iput-object v2, p0, Lcom/syu/carlink/CarLinkService;->H:Le/c;

    .line 74
    .line 75
    new-instance v2, Le/c;

    .line 76
    .line 77
    invoke-direct {v2, p0}, Le/c;-><init>(Lcom/syu/carlink/CarLinkService;)V

    .line 78
    .line 79
    .line 80
    iput-object v2, p0, Lcom/syu/carlink/CarLinkService;->I:Le/c;

    .line 81
    .line 82
    new-instance v2, Le/i;

    .line 83
    .line 84
    invoke-direct {v2, p0}, Le/i;-><init>(Lcom/syu/carlink/CarLinkService;)V

    .line 85
    .line 86
    .line 87
    iput-object v2, p0, Lcom/syu/carlink/CarLinkService;->J:Le/i;

    .line 88
    .line 89
    new-instance v2, Le/d;

    .line 90
    .line 91
    const/4 v3, 0x6

    .line 92
    invoke-direct {v2, p0, v3}, Le/d;-><init>(Lcom/syu/carlink/CarLinkService;I)V

    .line 93
    .line 94
    .line 95
    iput-object v2, p0, Lcom/syu/carlink/CarLinkService;->K:Le/d;

    .line 96
    .line 97
    new-instance v2, Landroid/os/b;

    .line 98
    .line 99
    invoke-direct {v2, v1}, Landroid/os/b;-><init>(I)V

    .line 100
    .line 101
    .line 102
    iput-object v2, p0, Lcom/syu/carlink/CarLinkService;->L:Landroid/os/b;

    .line 103
    .line 104
    new-instance v2, Lcom/syu/carlink/a;

    .line 105
    .line 106
    const/4 v4, 0x5

    .line 107
    invoke-direct {v2, p0, v4}, Lcom/syu/carlink/a;-><init>(Lcom/syu/carlink/CarLinkService;I)V

    .line 108
    .line 109
    .line 110
    iput-object v2, p0, Lcom/syu/carlink/CarLinkService;->M:Lcom/syu/carlink/a;

    .line 111
    .line 112
    new-instance v2, Le/d;

    .line 113
    .line 114
    const/4 v5, 0x7

    .line 115
    invoke-direct {v2, p0, v5}, Le/d;-><init>(Lcom/syu/carlink/CarLinkService;I)V

    .line 116
    .line 117
    .line 118
    iput-object v2, p0, Lcom/syu/carlink/CarLinkService;->N:Le/d;

    .line 119
    .line 120
    new-instance v2, Le/d;

    .line 121
    .line 122
    const/16 v5, 0x8

    .line 123
    .line 124
    invoke-direct {v2, p0, v5}, Le/d;-><init>(Lcom/syu/carlink/CarLinkService;I)V

    .line 125
    .line 126
    .line 127
    iput-object v2, p0, Lcom/syu/carlink/CarLinkService;->O:Le/d;

    .line 128
    .line 129
    new-instance v2, Le/d;

    .line 130
    .line 131
    const/16 v5, 0x9

    .line 132
    .line 133
    invoke-direct {v2, p0, v5}, Le/d;-><init>(Lcom/syu/carlink/CarLinkService;I)V

    .line 134
    .line 135
    .line 136
    iput-object v2, p0, Lcom/syu/carlink/CarLinkService;->P:Le/d;

    .line 137
    .line 138
    new-instance v2, Le/d;

    .line 139
    .line 140
    const/16 v5, 0xa

    .line 141
    .line 142
    invoke-direct {v2, p0, v5}, Le/d;-><init>(Lcom/syu/carlink/CarLinkService;I)V

    .line 143
    .line 144
    .line 145
    iput-object v2, p0, Lcom/syu/carlink/CarLinkService;->Q:Le/d;

    .line 146
    .line 147
    new-instance v2, Lcom/syu/carlink/b;

    .line 148
    .line 149
    invoke-direct {v2, p0, v0}, Lcom/syu/carlink/b;-><init>(Landroid/content/ContextWrapper;I)V

    .line 150
    .line 151
    .line 152
    iput-object v2, p0, Lcom/syu/carlink/CarLinkService;->R:Lcom/syu/carlink/b;

    .line 153
    .line 154
    new-instance v2, Lcom/syu/carlink/a;

    .line 155
    .line 156
    invoke-direct {v2, p0, v3}, Lcom/syu/carlink/a;-><init>(Lcom/syu/carlink/CarLinkService;I)V

    .line 157
    .line 158
    .line 159
    iput-object v2, p0, Lcom/syu/carlink/CarLinkService;->S:Lcom/syu/carlink/a;

    .line 160
    .line 161
    new-instance v2, Lcom/syu/carlink/CarLinkService$wirelessLink$2;

    .line 162
    .line 163
    invoke-direct {v2, p0}, Lcom/syu/carlink/CarLinkService$wirelessLink$2;-><init>(Lcom/syu/carlink/CarLinkService;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v2}, Lkotlin/a;->c(Lz/a;)Ls/a;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    iput-object v2, p0, Lcom/syu/carlink/CarLinkService;->T:Ls/a;

    .line 171
    .line 172
    new-instance v2, Lcom/syu/carlink/CarLinkService$carplayBluetoothMsg$2;

    .line 173
    .line 174
    invoke-direct {v2, p0}, Lcom/syu/carlink/CarLinkService$carplayBluetoothMsg$2;-><init>(Lcom/syu/carlink/CarLinkService;)V

    .line 175
    .line 176
    .line 177
    invoke-static {v2}, Lkotlin/a;->c(Lz/a;)Ls/a;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    iput-object v2, p0, Lcom/syu/carlink/CarLinkService;->U:Ls/a;

    .line 182
    .line 183
    new-instance v2, Lcom/syu/carlink/c;

    .line 184
    .line 185
    invoke-direct {v2, p0, v0}, Lcom/syu/carlink/c;-><init>(Lcom/syu/carlink/CarLinkService;I)V

    .line 186
    .line 187
    .line 188
    iput-object v2, p0, Lcom/syu/carlink/CarLinkService;->V:Lcom/syu/carlink/c;

    .line 189
    .line 190
    new-instance v2, Le/d;

    .line 191
    .line 192
    const/4 v3, 0x0

    .line 193
    invoke-direct {v2, p0, v3}, Le/d;-><init>(Lcom/syu/carlink/CarLinkService;I)V

    .line 194
    .line 195
    .line 196
    iput-object v2, p0, Lcom/syu/carlink/CarLinkService;->W:Le/d;

    .line 197
    .line 198
    new-instance v2, Le/j;

    .line 199
    .line 200
    invoke-direct {v2, p0}, Le/j;-><init>(Lcom/syu/carlink/CarLinkService;)V

    .line 201
    .line 202
    .line 203
    iput-object v2, p0, Lcom/syu/carlink/CarLinkService;->X:Le/j;

    .line 204
    .line 205
    new-instance v2, Lcom/syu/carlink/b;

    .line 206
    .line 207
    const/4 v5, 0x3

    .line 208
    invoke-direct {v2, p0, v5}, Lcom/syu/carlink/b;-><init>(Landroid/content/ContextWrapper;I)V

    .line 209
    .line 210
    .line 211
    iput-object v2, p0, Lcom/syu/carlink/CarLinkService;->Y:Lcom/syu/carlink/b;

    .line 212
    .line 213
    new-instance v2, Lcom/syu/carlink/c;

    .line 214
    .line 215
    invoke-direct {v2, p0, v3}, Lcom/syu/carlink/c;-><init>(Lcom/syu/carlink/CarLinkService;I)V

    .line 216
    .line 217
    .line 218
    iput-object v2, p0, Lcom/syu/carlink/CarLinkService;->Z:Lcom/syu/carlink/c;

    .line 219
    .line 220
    new-instance v2, Le/d;

    .line 221
    .line 222
    invoke-direct {v2, p0, v0}, Le/d;-><init>(Lcom/syu/carlink/CarLinkService;I)V

    .line 223
    .line 224
    .line 225
    iput-object v2, p0, Lcom/syu/carlink/CarLinkService;->a0:Le/d;

    .line 226
    .line 227
    new-instance v2, Le/d;

    .line 228
    .line 229
    invoke-direct {v2, p0, v1}, Le/d;-><init>(Lcom/syu/carlink/CarLinkService;I)V

    .line 230
    .line 231
    .line 232
    iput-object v2, p0, Lcom/syu/carlink/CarLinkService;->b0:Le/d;

    .line 233
    .line 234
    new-instance v2, Le/e;

    .line 235
    .line 236
    invoke-direct {v2, v3}, Le/e;-><init>(I)V

    .line 237
    .line 238
    .line 239
    iput-object v2, p0, Lcom/syu/carlink/CarLinkService;->c0:Le/e;

    .line 240
    .line 241
    new-instance v2, Le/e;

    .line 242
    .line 243
    invoke-direct {v2, v0}, Le/e;-><init>(I)V

    .line 244
    .line 245
    .line 246
    iput-object v2, p0, Lcom/syu/carlink/CarLinkService;->d0:Le/e;

    .line 247
    .line 248
    new-instance v0, Le/d;

    .line 249
    .line 250
    invoke-direct {v0, p0, v5}, Le/d;-><init>(Lcom/syu/carlink/CarLinkService;I)V

    .line 251
    .line 252
    .line 253
    iput-object v0, p0, Lcom/syu/carlink/CarLinkService;->e0:Le/d;

    .line 254
    .line 255
    new-instance v0, Le/d;

    .line 256
    .line 257
    const/4 v2, 0x4

    .line 258
    invoke-direct {v0, p0, v2}, Le/d;-><init>(Lcom/syu/carlink/CarLinkService;I)V

    .line 259
    .line 260
    .line 261
    iput-object v0, p0, Lcom/syu/carlink/CarLinkService;->f0:Le/d;

    .line 262
    .line 263
    new-instance v0, Le/d;

    .line 264
    .line 265
    invoke-direct {v0, p0, v4}, Le/d;-><init>(Lcom/syu/carlink/CarLinkService;I)V

    .line 266
    .line 267
    .line 268
    iput-object v0, p0, Lcom/syu/carlink/CarLinkService;->g0:Le/d;

    .line 269
    .line 270
    new-instance v0, Lcom/syu/carlink/b;

    .line 271
    .line 272
    invoke-direct {v0, p0, v3}, Lcom/syu/carlink/b;-><init>(Landroid/content/ContextWrapper;I)V

    .line 273
    .line 274
    .line 275
    iput-object v0, p0, Lcom/syu/carlink/CarLinkService;->h0:Lcom/syu/carlink/b;

    .line 276
    .line 277
    new-instance v0, Lcom/syu/carlink/a;

    .line 278
    .line 279
    invoke-direct {v0, p0, v5}, Lcom/syu/carlink/a;-><init>(Lcom/syu/carlink/CarLinkService;I)V

    .line 280
    .line 281
    .line 282
    iput-object v0, p0, Lcom/syu/carlink/CarLinkService;->i0:Lcom/syu/carlink/a;

    .line 283
    .line 284
    new-instance v0, Lcom/syu/carlink/CarLinkService$killedReceiver$1;

    .line 285
    .line 286
    invoke-direct {v0, p0}, Lcom/syu/carlink/CarLinkService$killedReceiver$1;-><init>(Lcom/syu/carlink/CarLinkService;)V

    .line 287
    .line 288
    .line 289
    iput-object v0, p0, Lcom/syu/carlink/CarLinkService;->k0:Lcom/syu/carlink/CarLinkService$killedReceiver$1;

    .line 290
    .line 291
    new-instance v0, Lcom/syu/carlink/a;

    .line 292
    .line 293
    invoke-direct {v0, p0, v2}, Lcom/syu/carlink/a;-><init>(Lcom/syu/carlink/CarLinkService;I)V

    .line 294
    .line 295
    .line 296
    iput-object v0, p0, Lcom/syu/carlink/CarLinkService;->l0:Lcom/syu/carlink/a;

    .line 297
    .line 298
    new-instance v0, Lcom/syu/carlink/b;

    .line 299
    .line 300
    invoke-direct {v0, p0, v1}, Lcom/syu/carlink/b;-><init>(Landroid/content/ContextWrapper;I)V

    .line 301
    .line 302
    .line 303
    iput-object v0, p0, Lcom/syu/carlink/CarLinkService;->m0:Lcom/syu/carlink/b;

    .line 304
    .line 305
    return-void
.end method

.method public static final a(Lcom/syu/carlink/CarLinkService;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/syu/carlink/CarLinkService;->E:Lz/a;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-interface {p0}, Lz/a;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/util/Size;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-lez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-lez p0, :cond_1

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 29
    :goto_1
    return p0
.end method

.method public static m()Lcom/syu/carlink/CarLink;
    .locals 1

    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "me"

    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static s()Z
    .locals 3

    .line 1
    const-string v0, "ro.board.platform"

    .line 2
    .line 3
    invoke-static {v0}, Lt/b;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "ro.fyt.platform"

    .line 8
    .line 9
    invoke-static {v1}, Lt/b;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "9863"

    .line 14
    .line 15
    invoke-static {v0, v2}, Lf0/h;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    const-string v2, "ums9620"

    .line 22
    .line 23
    invoke-static {v0, v2}, Lf0/h;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const-string v0, "823"

    .line 30
    .line 31
    invoke-static {v1, v0}, Lf0/h;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    const-string v0, "818"

    .line 38
    .line 39
    invoke-static {v1, v0}, Lf0/h;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    invoke-static {v1, v0}, Lf0/h;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    const-string v0, "855"

    .line 52
    .line 53
    invoke-static {v1, v0}, Lf0/h;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 v0, 0x0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 63
    :goto_1
    return v0
.end method

.method public static y(Lcom/syu/carlink/CarLinkService;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;Lz/l;I)V
    .locals 3

    .line 1
    and-int/lit8 v0, p5, 0x4

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p3, v1

    .line 7
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    move-object p4, v1

    .line 12
    :cond_1
    monitor-enter p0

    .line 13
    if-eqz p3, :cond_5

    .line 14
    .line 15
    :try_start_0
    const-string p5, "000000000000"

    .line 16
    .line 17
    invoke-static {p3, p5}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-nez p5, :cond_5

    .line 22
    .line 23
    :try_start_1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLinkService;->o()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p5

    .line 27
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p5

    .line 31
    :cond_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    move-object v2, v0

    .line 42
    check-cast v2, Lcom/syu/carlink/utils/a;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/syu/carlink/utils/a;->b:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v2, p3}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    check-cast v0, Lcom/syu/carlink/utils/a;

    .line 53
    .line 54
    move-object v1, v0

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    new-instance p5, Ljava/util/NoSuchElementException;

    .line 57
    .line 58
    const-string v0, "Collection contains no element matching the predicate."

    .line 59
    .line 60
    invoke-direct {p5, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :catch_0
    :goto_0
    if-nez v1, :cond_4

    .line 65
    .line 66
    :try_start_2
    new-instance v1, Lcom/syu/carlink/utils/a;

    .line 67
    .line 68
    invoke-direct {v1, p2, p3}, Lcom/syu/carlink/utils/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/syu/carlink/CarLinkService;->o()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p5

    .line 75
    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    const-string p5, "<set-?>"

    .line 80
    .line 81
    invoke-static {p2, p5}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iput-object p2, v1, Lcom/syu/carlink/utils/a;->a:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    .line 86
    :cond_5
    :goto_1
    if-nez v1, :cond_8

    .line 87
    .line 88
    :try_start_3
    invoke-virtual {p0}, Lcom/syu/carlink/CarLinkService;->o()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object p5

    .line 92
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object p5

    .line 96
    :cond_6
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_7

    .line 101
    .line 102
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    move-object v2, v0

    .line 107
    check-cast v2, Lcom/syu/carlink/utils/a;

    .line 108
    .line 109
    iget-object v2, v2, Lcom/syu/carlink/utils/a;->a:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v2, p2}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_6

    .line 116
    .line 117
    check-cast v0, Lcom/syu/carlink/utils/a;

    .line 118
    .line 119
    move-object v1, v0

    .line 120
    goto :goto_2

    .line 121
    :cond_7
    new-instance p2, Ljava/util/NoSuchElementException;

    .line 122
    .line 123
    const-string p5, "Collection contains no element matching the predicate."

    .line 124
    .line 125
    invoke-direct {p2, p5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    :catch_1
    :cond_8
    :goto_2
    if-eqz v1, :cond_f

    .line 130
    .line 131
    const/4 p2, 0x0

    .line 132
    if-eqz p3, :cond_d

    .line 133
    .line 134
    :try_start_4
    const-string p5, "000000000000"

    .line 135
    .line 136
    invoke-static {p3, p5}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p5

    .line 140
    const/4 v0, 0x1

    .line 141
    if-nez p5, :cond_a

    .line 142
    .line 143
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 144
    .line 145
    .line 146
    move-result p3

    .line 147
    if-nez p3, :cond_9

    .line 148
    .line 149
    move p3, v0

    .line 150
    goto :goto_3

    .line 151
    :cond_9
    move p3, p2

    .line 152
    :goto_3
    if-eqz p3, :cond_d

    .line 153
    .line 154
    :cond_a
    const-string p3, ""

    .line 155
    .line 156
    iput-object p3, v1, Lcom/syu/carlink/utils/a;->d:Ljava/lang/String;

    .line 157
    .line 158
    iput-boolean p2, v1, Lcom/syu/carlink/utils/a;->e:Z

    .line 159
    .line 160
    iget p3, v1, Lcom/syu/carlink/utils/a;->g:I

    .line 161
    .line 162
    if-eq p3, v0, :cond_b

    .line 163
    .line 164
    iput v0, v1, Lcom/syu/carlink/utils/a;->g:I

    .line 165
    .line 166
    iget-object p3, v1, Lcom/syu/carlink/utils/a;->c:Ls/a;

    .line 167
    .line 168
    invoke-interface {p3}, Ls/a;->getValue()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p3

    .line 172
    check-cast p3, [Ljava/lang/Integer;

    .line 173
    .line 174
    iget p5, v1, Lcom/syu/carlink/utils/a;->g:I

    .line 175
    .line 176
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object p5

    .line 180
    invoke-static {p3, p5}, Lt/c;->I([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    goto :goto_4

    .line 184
    :catchall_0
    move-exception p1

    .line 185
    goto :goto_5

    .line 186
    :cond_b
    :goto_4
    iget p3, v1, Lcom/syu/carlink/utils/a;->h:I

    .line 187
    .line 188
    if-eq p3, v0, :cond_c

    .line 189
    .line 190
    iput v0, v1, Lcom/syu/carlink/utils/a;->h:I

    .line 191
    .line 192
    iput-boolean p2, v1, Lcom/syu/carlink/utils/a;->f:Z

    .line 193
    .line 194
    :cond_c
    invoke-virtual {p0}, Lcom/syu/carlink/CarLinkService;->o()Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object p3

    .line 198
    invoke-interface {p3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    :cond_d
    if-eqz p4, :cond_e

    .line 202
    .line 203
    invoke-interface {p4, v1}, Lz/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object p3

    .line 207
    check-cast p3, Ljava/lang/Boolean;

    .line 208
    .line 209
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 210
    .line 211
    .line 212
    move-result p3

    .line 213
    if-eqz p3, :cond_f

    .line 214
    .line 215
    :cond_e
    const-string p3, "Bt"

    .line 216
    .line 217
    new-instance p4, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string p5, " ===>> update SlaveDevice "

    .line 223
    .line 224
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0}, Lcom/syu/carlink/CarLinkService;->o()Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object p5

    .line 231
    new-array p2, p2, [Lcom/syu/carlink/utils/a;

    .line 232
    .line 233
    invoke-interface {p5, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    const-string p5, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 238
    .line 239
    invoke-static {p2, p5}, Lt/b;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    const-string p5, "toString(this)"

    .line 247
    .line 248
    invoke-static {p2, p5}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0}, Lcom/syu/carlink/CarLinkService;->o()Ljava/util/List;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    const-string p3, "<this>"

    .line 266
    .line 267
    invoke-static {p2, p3}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    new-instance p3, Ljava/util/ArrayList;

    .line 271
    .line 272
    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, p3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 276
    .line 277
    .line 278
    goto :goto_6

    .line 279
    :goto_5
    monitor-exit p0

    .line 280
    throw p1

    .line 281
    :cond_f
    :goto_6
    monitor-exit p0

    .line 282
    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 11

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "HDL"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    if-nez p1, :cond_5

    .line 9
    .line 10
    iget v5, p0, Lcom/syu/carlink/CarLinkService;->n:I

    .line 11
    .line 12
    if-eqz v5, :cond_5

    .line 13
    .line 14
    iput v4, p0, Lcom/syu/carlink/CarLinkService;->n:I

    .line 15
    .line 16
    const/4 p1, 0x2

    .line 17
    new-array v5, p1, [Ljava/lang/Class;

    .line 18
    .line 19
    const-class v6, Ljava/lang/String;

    .line 20
    .line 21
    aput-object v6, v5, v4

    .line 22
    .line 23
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    invoke-static {v6}, Lt/b;->e(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    aput-object v6, v5, v3

    .line 29
    .line 30
    new-array p1, p1, [Ljava/lang/Object;

    .line 31
    .line 32
    const-string v6, "persist.carlink.disconn_debug"

    .line 33
    .line 34
    aput-object v6, p1, v4

    .line 35
    .line 36
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 37
    .line 38
    aput-object v6, p1, v3

    .line 39
    .line 40
    const-string v6, "android.os.SystemProperties"

    .line 41
    .line 42
    const-string v7, "getBoolean"

    .line 43
    .line 44
    invoke-static {v6, v2, v7, v5, p1}, Lp/a;->d(Ljava/lang/String;Landroid/net/wifi/WifiManager;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Ljava/lang/Boolean;

    .line 49
    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move p1, v4

    .line 58
    :goto_0
    if-eqz p1, :cond_1

    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    iget-boolean p1, p0, Lcom/syu/carlink/CarLinkService;->b:Z

    .line 62
    .line 63
    if-nez p1, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/syu/carlink/CarLinkService;->l()Lo/e;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    const/4 v6, 0x2

    .line 70
    const/16 v7, 0xd

    .line 71
    .line 72
    new-array v8, v3, [I

    .line 73
    .line 74
    aput v4, v8, v4

    .line 75
    .line 76
    const/4 v9, 0x0

    .line 77
    const/16 v10, 0x18

    .line 78
    .line 79
    invoke-static/range {v5 .. v10}, Lo/e;->b(Lo/e;II[I[Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    invoke-static {}, Lcom/syu/carlink/CarLinkService;->m()Lcom/syu/carlink/CarLink;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->b()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-lez p1, :cond_3

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    move v3, v4

    .line 99
    :goto_1
    if-eqz v3, :cond_4

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/syu/carlink/CarLinkService;->l()Lo/e;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    const/4 v5, 0x2

    .line 106
    const/16 v6, 0x18

    .line 107
    .line 108
    const/4 v7, 0x0

    .line 109
    const/4 v8, 0x0

    .line 110
    filled-new-array {v0}, [Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    invoke-virtual/range {v4 .. v9}, Lo/e;->c(II[I[F[Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_4
    :goto_2
    const-string p1, "BT C_LINK_CUT ============>>> 0"

    .line 118
    .line 119
    invoke-static {v1, p1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_4

    .line 123
    .line 124
    :cond_5
    if-eqz p1, :cond_b

    .line 125
    .line 126
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 127
    .line 128
    const-string v5, "me"

    .line 129
    .line 130
    if-eqz p1, :cond_a

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->c()I

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_b

    .line 137
    .line 138
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 139
    .line 140
    if-eqz p1, :cond_9

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->c()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    iput p1, p0, Lcom/syu/carlink/CarLinkService;->n:I

    .line 147
    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string v6, "BT C_LINK_CUT ============>>> 1 lastPhoneState : "

    .line 151
    .line 152
    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget v6, p0, Lcom/syu/carlink/CarLinkService;->n:I

    .line 156
    .line 157
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v6, "  bt state : "

    .line 161
    .line 162
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    sget-object v6, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 166
    .line 167
    if-eqz v6, :cond_8

    .line 168
    .line 169
    invoke-virtual {v6}, Lcom/syu/carlink/CarLink;->c()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-static {v1, p1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget p1, p0, Lcom/syu/carlink/CarLinkService;->n:I

    .line 184
    .line 185
    if-eqz p1, :cond_b

    .line 186
    .line 187
    iget-boolean p1, p0, Lcom/syu/carlink/CarLinkService;->b:Z

    .line 188
    .line 189
    if-nez p1, :cond_6

    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/syu/carlink/CarLinkService;->l()Lo/e;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    const/4 v6, 0x2

    .line 196
    const/16 v7, 0xd

    .line 197
    .line 198
    new-array v8, v3, [I

    .line 199
    .line 200
    aput v3, v8, v4

    .line 201
    .line 202
    const/4 v9, 0x0

    .line 203
    const/16 v10, 0x18

    .line 204
    .line 205
    invoke-static/range {v5 .. v10}, Lo/e;->b(Lo/e;II[I[Ljava/lang/String;I)V

    .line 206
    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_6
    invoke-static {}, Lcom/syu/carlink/CarLinkService;->m()Lcom/syu/carlink/CarLink;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->b()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-lez p1, :cond_7

    .line 222
    .line 223
    move p1, v3

    .line 224
    goto :goto_3

    .line 225
    :cond_7
    move p1, v4

    .line 226
    :goto_3
    if-eqz p1, :cond_b

    .line 227
    .line 228
    invoke-static {}, Lcom/syu/carlink/CarLinkService;->m()Lcom/syu/carlink/CarLink;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->b()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    const-string v1, ":"

    .line 237
    .line 238
    invoke-static {p1, v1, v0}, Lf0/g;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-virtual {p0}, Lcom/syu/carlink/CarLinkService;->l()Lo/e;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    const/4 v6, 0x2

    .line 247
    const/16 v7, 0xd

    .line 248
    .line 249
    new-array v8, v3, [I

    .line 250
    .line 251
    aput v3, v8, v4

    .line 252
    .line 253
    new-array v9, v3, [Ljava/lang/String;

    .line 254
    .line 255
    aput-object p1, v9, v4

    .line 256
    .line 257
    const/16 v10, 0x8

    .line 258
    .line 259
    invoke-static/range {v5 .. v10}, Lo/e;->b(Lo/e;II[I[Ljava/lang/String;I)V

    .line 260
    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_8
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    throw v2

    .line 267
    :cond_9
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    throw v2

    .line 271
    :cond_a
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    throw v2

    .line 275
    :cond_b
    :goto_4
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/syu/carlink/CarLinkService;->s:Lz/a;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/syu/carlink/CarLinkService;->t:Lz/a;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/syu/carlink/CarLinkService;->w:I

    .line 8
    .line 9
    iput v0, p0, Lcom/syu/carlink/CarLinkService;->v:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/syu/carlink/CarLinkService;->p()Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/syu/carlink/CarLinkService;->Y:Lcom/syu/carlink/b;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final d(J)V
    .locals 6

    .line 1
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->v()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, " checkDevice isMcuOn : "

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->v()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, "  CarLink.me.linkState(): "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->B()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x20

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v2, "HDL"

    .line 56
    .line 57
    invoke-static {v2, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->y()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Lcom/syu/carlink/CarLink;->z()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v5, " checkDevice autoWired: "

    .line 79
    .line 80
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v5, " autoWireless: "

    .line 87
    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v5, " isUIShowing: "

    .line 95
    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    iget-boolean v5, v5, Lcom/syu/carlink/CarLink;->d:Z

    .line 104
    .line 105
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 112
    .line 113
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-static {v2, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->J()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_1

    .line 132
    .line 133
    if-nez v0, :cond_2

    .line 134
    .line 135
    if-nez v3, :cond_2

    .line 136
    .line 137
    :cond_1
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    iget-boolean v1, v1, Lcom/syu/carlink/CarLink;->d:Z

    .line 142
    .line 143
    if-nez v1, :cond_2

    .line 144
    .line 145
    return-void

    .line 146
    :cond_2
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->v()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_8

    .line 155
    .line 156
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->B()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    const/4 v4, 0x3

    .line 165
    if-ne v1, v4, :cond_8

    .line 166
    .line 167
    iget-object v1, p0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 168
    .line 169
    if-eqz v1, :cond_3

    .line 170
    .line 171
    const-string v4, "==============>>>>  cleanDelay"

    .line 172
    .line 173
    invoke-static {v2, v4}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    const-wide/16 v4, 0x0

    .line 177
    .line 178
    iput-wide v4, v1, Lh/c;->m:J

    .line 179
    .line 180
    iput-wide v4, v1, Lh/c;->n:J

    .line 181
    .line 182
    :cond_3
    if-eqz v0, :cond_4

    .line 183
    .line 184
    if-nez v3, :cond_5

    .line 185
    .line 186
    :cond_4
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    iget-boolean v1, v1, Lcom/syu/carlink/CarLink;->d:Z

    .line 191
    .line 192
    if-eqz v1, :cond_6

    .line 193
    .line 194
    :cond_5
    sget-object v0, Lcom/syu/carlink/UsbScanner;->j:Lcom/syu/carlink/UsbScanner;

    .line 195
    .line 196
    invoke-virtual {v0}, Lcom/syu/carlink/UsbScanner;->a()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-gtz v0, :cond_8

    .line 201
    .line 202
    iget-object v0, p0, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 203
    .line 204
    iget-object v1, p0, Lcom/syu/carlink/CarLinkService;->S:Lcom/syu/carlink/a;

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    .line 211
    .line 212
    goto :goto_0

    .line 213
    :cond_6
    if-eqz v0, :cond_7

    .line 214
    .line 215
    sget-object p1, Lcom/syu/carlink/UsbScanner;->j:Lcom/syu/carlink/UsbScanner;

    .line 216
    .line 217
    invoke-virtual {p1}, Lcom/syu/carlink/UsbScanner;->a()I

    .line 218
    .line 219
    .line 220
    goto :goto_0

    .line 221
    :cond_7
    if-eqz v3, :cond_8

    .line 222
    .line 223
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    if-eqz v0, :cond_8

    .line 232
    .line 233
    iget-object v1, v0, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 234
    .line 235
    iget-object v0, v0, Lcom/syu/carlink/CarLinkService;->S:Lcom/syu/carlink/a;

    .line 236
    .line 237
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 241
    .line 242
    .line 243
    :cond_8
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 9

    .line 1
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->C()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_2

    .line 11
    .line 12
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Lg/b;->v:Landroidx/lifecycle/MutableLiveData;

    .line 21
    .line 22
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v0, v0, Lg/b;->x:Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v0, v0, Lg/b;->y:Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v0, v0, Lg/b;->H:Landroidx/lifecycle/MutableLiveData;

    .line 62
    .line 63
    const/high16 v3, -0x80000000

    .line 64
    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lcom/syu/carlink/CarLinkService;->m()Lcom/syu/carlink/CarLink;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v0, v0, Lg/b;->B:Landroidx/lifecycle/MutableLiveData;

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v0, v0, Lg/b;->w:Landroidx/lifecycle/MutableLiveData;

    .line 94
    .line 95
    const/4 v2, 0x0

    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    const/4 v0, 0x2

    .line 104
    new-array v3, v0, [Ljava/lang/Class;

    .line 105
    .line 106
    const-class v4, Ljava/lang/String;

    .line 107
    .line 108
    aput-object v4, v3, v2

    .line 109
    .line 110
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 111
    .line 112
    invoke-static {v4}, Lt/b;->e(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    aput-object v4, v3, v1

    .line 116
    .line 117
    new-array v4, v0, [Ljava/lang/Object;

    .line 118
    .line 119
    const-string v5, "sys.carlink.type"

    .line 120
    .line 121
    aput-object v5, v4, v2

    .line 122
    .line 123
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    aput-object v6, v4, v1

    .line 128
    .line 129
    const-string v6, "android.os.SystemProperties"

    .line 130
    .line 131
    const/4 v7, 0x0

    .line 132
    const-string v8, "getInt"

    .line 133
    .line 134
    invoke-static {v6, v7, v8, v3, v4}, Lp/a;->d(Ljava/lang/String;Landroid/net/wifi/WifiManager;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    check-cast v3, Ljava/lang/Integer;

    .line 139
    .line 140
    if-eqz v3, :cond_0

    .line 141
    .line 142
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    goto :goto_0

    .line 147
    :cond_0
    move v3, v2

    .line 148
    :goto_0
    if-eq v3, v1, :cond_1

    .line 149
    .line 150
    if-eq v3, v0, :cond_1

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    const-string v1, "value"

    .line 158
    .line 159
    invoke-static {v0, v1}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_2
    :goto_1
    return-void
.end method

.method public final f(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 2
    .line 3
    const-string v1, "me"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_a

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->o()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 20
    .line 21
    if-eqz v0, :cond_9

    .line 22
    .line 23
    const-string v3, "com.txzing.voiceassistant"

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Lcom/syu/carlink/CarLink;->r(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    :goto_1
    move-object v2, v3

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 34
    .line 35
    if-eqz v0, :cond_8

    .line 36
    .line 37
    const-string v3, "com.txznet.adapter"

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Lcom/syu/carlink/CarLink;->r(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 47
    .line 48
    if-eqz v0, :cond_7

    .line 49
    .line 50
    const-string v3, "com.txznet.smartadapter"

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Lcom/syu/carlink/CarLink;->r(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 60
    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    const-string v1, "com.syu.voice"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/syu/carlink/CarLink;->r(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    move-object v2, v1

    .line 72
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 73
    .line 74
    new-instance v0, Landroid/content/Intent;

    .line 75
    .line 76
    const-string v1, "com.syu.voice.forbidvoice"

    .line 77
    .line 78
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    const-string v1, "show"

    .line 85
    .line 86
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 90
    .line 91
    .line 92
    new-instance v0, Landroid/content/Intent;

    .line 93
    .line 94
    const-string v3, "com.syu.voice.setfloat"

    .line 95
    .line 96
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 106
    .line 107
    .line 108
    :cond_5
    return-void

    .line 109
    :cond_6
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v2

    .line 113
    :cond_7
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v2

    .line 117
    :cond_8
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v2

    .line 121
    :cond_9
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v2

    .line 125
    :cond_a
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v2
.end method

.method public final g()V
    .locals 10

    .line 1
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 2
    .line 3
    const-string v1, "me"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->B()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v3, 0x3

    .line 13
    if-eq v0, v3, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object v3, p0, Lcom/syu/carlink/CarLinkService;->E:Lz/a;

    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    invoke-interface {v3}, Lz/a;->invoke()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroid/util/Size;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    move-object v3, v2

    .line 33
    :goto_0
    const-string v4, "HDL"

    .line 34
    .line 35
    if-nez v3, :cond_3

    .line 36
    .line 37
    const-string v0, "ensureCarplayDisplaySize no viewport value, skip check"

    .line 38
    .line 39
    invoke-static {v4, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/16 v6, 0x78

    .line 52
    .line 53
    if-lez v5, :cond_7

    .line 54
    .line 55
    if-lez v3, :cond_7

    .line 56
    .line 57
    iget v7, v0, Lh/c;->b:I

    .line 58
    .line 59
    if-lez v7, :cond_7

    .line 60
    .line 61
    iget v8, v0, Lh/c;->c:I

    .line 62
    .line 63
    if-gtz v8, :cond_4

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_4
    int-to-float v7, v7

    .line 67
    int-to-float v8, v8

    .line 68
    div-float/2addr v7, v8

    .line 69
    int-to-float v8, v5

    .line 70
    int-to-float v9, v3

    .line 71
    div-float/2addr v8, v9

    .line 72
    sub-float/2addr v7, v8

    .line 73
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    div-float/2addr v7, v8

    .line 78
    const v8, 0x3c23d70a    # 0.01f

    .line 79
    .line 80
    .line 81
    cmpg-float v7, v7, v8

    .line 82
    .line 83
    if-gtz v7, :cond_5

    .line 84
    .line 85
    return-void

    .line 86
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v8, "ensureCarplayDisplaySize aspect mismatch, negotiated: "

    .line 89
    .line 90
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget v8, v0, Lh/c;->b:I

    .line 94
    .line 95
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget v0, v0, Lh/c;->c:I

    .line 102
    .line 103
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v0, ", viewport: "

    .line 107
    .line 108
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v0, ", re-negotiate before link"

    .line 121
    .line 122
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v4, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iput-object v2, p0, Lcom/syu/carlink/CarLinkService;->p:Landroid/util/Size;

    .line 133
    .line 134
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 135
    .line 136
    if-eqz v0, :cond_6

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->s()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    xor-int/lit8 v0, v0, 0x1

    .line 143
    .line 144
    invoke-virtual {p0, v5, v3, v0}, Lcom/syu/carlink/CarLinkService;->v(III)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_6
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v2

    .line 152
    :cond_7
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v2, "ensureCarplayDisplaySize invalid size, viewport: "

    .line 155
    .line 156
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v2, " negotiated: "

    .line 169
    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget v2, v0, Lh/c;->b:I

    .line 174
    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget v0, v0, Lh/c;->c:I

    .line 182
    .line 183
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v0, ", skip check"

    .line 187
    .line 188
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-static {v4, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_8
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw v2
.end method

.method public final h(IZ)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLinkService;->l()Lo/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lo/e;->g:Z

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/syu/carlink/CarLinkService;->h:Ljava/lang/Integer;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eq v0, p1, :cond_2

    .line 19
    .line 20
    :goto_0
    if-eqz p2, :cond_1

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 p2, 0x0

    .line 28
    :goto_1
    iput-object p2, p0, Lcom/syu/carlink/CarLinkService;->i:Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/syu/carlink/CarLinkService;->l()Lo/e;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 p2, 0x1

    .line 37
    new-array v3, p2, [I

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    aput p1, v3, p2

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    const/16 v5, 0x18

    .line 44
    .line 45
    invoke-static/range {v0 .. v5}, Lo/e;->b(Lo/e;II[I[Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "me"

    .line 5
    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->p()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_7

    .line 13
    .line 14
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 15
    .line 16
    if-eqz v0, :cond_6

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->t()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 26
    .line 27
    if-eqz v0, :cond_5

    .line 28
    .line 29
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->a()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/16 v3, 0xa

    .line 38
    .line 39
    if-eq v0, v3, :cond_3

    .line 40
    .line 41
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->a()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v1, 0x1

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0, v1}, Lcom/syu/carlink/CarLinkService;->j(Z)V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p0, v3, v1}, Lcom/syu/carlink/CarLinkService;->h(IZ)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v1

    .line 63
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 64
    .line 65
    new-instance v1, Lcom/syu/carlink/a;

    .line 66
    .line 67
    const/4 v2, 0x7

    .line 68
    invoke-direct {v1, p0, v2}, Lcom/syu/carlink/a;-><init>(Lcom/syu/carlink/CarLinkService;I)V

    .line 69
    .line 70
    .line 71
    const-wide/16 v2, 0x64

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_4
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v1

    .line 81
    :cond_5
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v1

    .line 85
    :cond_6
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v1

    .line 89
    :cond_7
    :goto_1
    return-void

    .line 90
    :cond_8
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v1
.end method

.method public final j(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "me"

    .line 3
    .line 4
    if-nez p1, :cond_2

    .line 5
    .line 6
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->z()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->y()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_1
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :cond_2
    :goto_0
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 36
    .line 37
    if-eqz p1, :cond_7

    .line 38
    .line 39
    iget-boolean p1, p1, Lcom/syu/carlink/CarLink;->d:Z

    .line 40
    .line 41
    if-nez p1, :cond_3

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    const/4 p1, 0x0

    .line 46
    :goto_1
    if-nez p1, :cond_4

    .line 47
    .line 48
    return-void

    .line 49
    :cond_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_6

    .line 62
    .line 63
    const/high16 v2, 0x10200000

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 69
    .line 70
    if-eqz v2, :cond_5

    .line 71
    .line 72
    invoke-virtual {v2, p1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_5
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :cond_6
    :goto_2
    return-void

    .line 81
    :cond_7
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v0
.end method

.method public final k(Landroid/util/Size;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v2, v0, Lh/c;->b:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v2, v1

    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget v1, v0, Lh/c;->c:I

    .line 13
    .line 14
    :cond_1
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ne v2, v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-ne v1, v0, :cond_3

    .line 38
    .line 39
    iget-object v0, p0, Lcom/syu/carlink/CarLinkService;->p:Landroid/util/Size;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/syu/carlink/CarLinkService;->p:Landroid/util/Size;

    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    iput-object p1, p0, Lcom/syu/carlink/CarLinkService;->p:Landroid/util/Size;

    .line 48
    .line 49
    :cond_4
    :goto_1
    return-void
.end method

.method public final l()Lo/e;
    .locals 1

    iget-object v0, p0, Lcom/syu/carlink/CarLinkService;->l:Lo/e;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "autoServer"

    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final n()Lg/d;
    .locals 1

    iget-object v0, p0, Lcom/syu/carlink/CarLinkService;->k:Lg/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "controller"

    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final o()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/syu/carlink/CarLinkService;->c:Ls/a;

    invoke-interface {v0}, Ls/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/lifecycle/LifecycleService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    new-instance p1, Le/f;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Le/f;-><init>(Lcom/syu/carlink/CarLinkService;)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    const-string v0, "newConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/syu/carlink/CarLinkService;->m()Lcom/syu/carlink/CarLink;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->B()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v0, 0x3

    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 29
    .line 30
    const-string v1, "sys.carlink.size.width"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lt/b;->p(ILjava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const-string v1, "sys.carlink.size.height"

    .line 37
    .line 38
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 39
    .line 40
    invoke-static {p1, v1}, Lt/b;->p(ILjava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-static {}, Lcom/syu/carlink/CarLinkService;->m()Lcom/syu/carlink/CarLink;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->s()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    xor-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    invoke-virtual {p0, v0, p1, v1}, Lcom/syu/carlink/CarLinkService;->v(III)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method public final onConnected(Lo/a;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "conn"

    .line 7
    .line 8
    iget-object v1, p1, Lo/a;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-boolean p1, p1, Lo/a;->b:Z

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/syu/carlink/CarLinkService;->l()Lo/e;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget-object v0, Lcom/syu/carlink/CarLinkService;->p0:[I

    .line 25
    .line 26
    array-length v1, v0

    .line 27
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p1, v1, v0}, Lo/e;->d(I[I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/syu/carlink/CarLinkService;->l()Lo/e;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    sget-object v0, Lcom/syu/carlink/CarLinkService;->q0:[I

    .line 40
    .line 41
    array-length v1, v0

    .line 42
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/4 v1, 0x2

    .line 47
    invoke-virtual {p1, v1, v0}, Lo/e;->d(I[I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/syu/carlink/CarLinkService;->l()Lo/e;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    sget-object v0, Lcom/syu/carlink/CarLinkService;->r0:[I

    .line 55
    .line 56
    array-length v1, v0

    .line 57
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const/4 v1, 0x7

    .line 62
    invoke-virtual {p1, v1, v0}, Lo/e;->d(I[I)V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-void
.end method

.method public final onCreate()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/LifecycleService;->onCreate()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v0, v0, Lg/b;->G:Landroidx/lifecycle/MutableLiveData;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "audio"

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "null cannot be cast to non-null type android.media.AudioManager"

    .line 39
    .line 40
    invoke-static {v1, v2}, Lt/b;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    check-cast v1, Landroid/media/AudioManager;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/syu/carlink/CarLinkService;->B:Landroid/media/AudioManager;

    .line 46
    .line 47
    sget-object v1, Lcom/syu/carlink/UsbScanner;->j:Lcom/syu/carlink/UsbScanner;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    new-instance v2, Landroid/content/IntentFilter;

    .line 53
    .line 54
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v3, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v3, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v3, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v3, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-boolean v3, v1, Lcom/syu/carlink/UsbScanner;->d:Z

    .line 78
    .line 79
    const/4 v4, 0x1

    .line 80
    if-nez v3, :cond_0

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/syu/carlink/UsbScanner;->b()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    iput-boolean v4, v1, Lcom/syu/carlink/UsbScanner;->d:Z

    .line 90
    .line 91
    :cond_0
    new-instance v1, Lg/d;

    .line 92
    .line 93
    invoke-direct {v1}, Lg/d;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v1, p0, Lcom/syu/carlink/CarLinkService;->k:Lg/d;

    .line 97
    .line 98
    const-string v1, "HDL"

    .line 99
    .line 100
    const-string v2, "CarLink Start!!"

    .line 101
    .line 102
    invoke-static {v1, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    sget-object v1, Lo/d;->a:Ljava/util/LinkedHashMap;

    .line 106
    .line 107
    const-string v2, "com.syu.ms#com.syu.ms.toolkit"

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Lo/e;

    .line 114
    .line 115
    if-nez v3, :cond_1

    .line 116
    .line 117
    new-instance v3, Lo/e;

    .line 118
    .line 119
    const-string v5, "com.syu.ms.toolkit"

    .line 120
    .line 121
    const-string v6, "com.syu.ms"

    .line 122
    .line 123
    invoke-direct {v3, p0, v5, v6}, Lo/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    :cond_1
    iput-object v3, p0, Lcom/syu/carlink/CarLinkService;->l:Lo/e;

    .line 130
    .line 131
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 140
    .line 141
    const-string v2, "resources.configuration.locale"

    .line 142
    .line 143
    invoke-static {v1, v2}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-boolean v1, p0, Lcom/syu/carlink/CarLinkService;->j0:Z

    .line 147
    .line 148
    if-nez v1, :cond_2

    .line 149
    .line 150
    new-instance v1, Landroid/content/IntentFilter;

    .line 151
    .line 152
    iget-object v2, p0, Lcom/syu/carlink/CarLinkService;->g:Ljava/lang/String;

    .line 153
    .line 154
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object v2, p0, Lcom/syu/carlink/CarLinkService;->k0:Lcom/syu/carlink/CarLinkService$killedReceiver$1;

    .line 158
    .line 159
    invoke-virtual {p0, v2, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    iput-boolean v4, p0, Lcom/syu/carlink/CarLinkService;->j0:Z

    .line 163
    .line 164
    :cond_2
    invoke-virtual {p0}, Lcom/syu/carlink/CarLinkService;->p()Landroid/os/Handler;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    new-instance v2, Lcom/syu/carlink/a;

    .line 169
    .line 170
    const/4 v3, 0x0

    .line 171
    invoke-direct {v2, p0, v3}, Lcom/syu/carlink/a;-><init>(Lcom/syu/carlink/CarLinkService;I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    .line 176
    .line 177
    sget-object v1, Lcom/syu/carlink/base/a;->c:Ls/a;

    .line 178
    .line 179
    invoke-static {}, Le/b;->a()Lcom/syu/carlink/base/a;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    const/4 v2, 0x7

    .line 184
    iget-object v3, p0, Lcom/syu/carlink/CarLinkService;->Z:Lcom/syu/carlink/c;

    .line 185
    .line 186
    invoke-virtual {v1, v2, v3}, Lcom/syu/carlink/base/a;->a(ILg/c;)V

    .line 187
    .line 188
    .line 189
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    iget-object v1, v1, Lg/b;->s:Landroidx/lifecycle/MutableLiveData;

    .line 198
    .line 199
    iget-object v2, p0, Lcom/syu/carlink/CarLinkService;->X:Le/j;

    .line 200
    .line 201
    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 202
    .line 203
    .line 204
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 205
    .line 206
    const-string v2, "sys.carlink.size.width"

    .line 207
    .line 208
    invoke-static {v1, v2}, Lt/b;->p(ILjava/lang/String;)I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    const-string v2, "sys.carlink.size.height"

    .line 213
    .line 214
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 215
    .line 216
    invoke-static {v0, v2}, Lt/b;->p(ILjava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    invoke-virtual {p0, v1, v0}, Lcom/syu/carlink/CarLinkService;->w(II)V

    .line 221
    .line 222
    .line 223
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    iget-object v0, v0, Lg/b;->A:Landroidx/lifecycle/MutableLiveData;

    .line 232
    .line 233
    iget-object v1, p0, Lcom/syu/carlink/CarLinkService;->W:Le/d;

    .line 234
    .line 235
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 236
    .line 237
    .line 238
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    iget-object v0, v0, Lg/b;->u:Landroidx/lifecycle/MutableLiveData;

    .line 247
    .line 248
    iget-object v1, p0, Lcom/syu/carlink/CarLinkService;->N:Le/d;

    .line 249
    .line 250
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 251
    .line 252
    .line 253
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    iget-object v0, v0, Lg/b;->w:Landroidx/lifecycle/MutableLiveData;

    .line 262
    .line 263
    new-instance v1, Lcom/syu/carlink/CarLinkService$onCreate$2;

    .line 264
    .line 265
    invoke-direct {v1, p0}, Lcom/syu/carlink/CarLinkService$onCreate$2;-><init>(Lcom/syu/carlink/CarLinkService;)V

    .line 266
    .line 267
    .line 268
    new-instance v2, Le/a;

    .line 269
    .line 270
    const/4 v3, 0x2

    .line 271
    invoke-direct {v2, v1, v3}, Le/a;-><init>(Lz/l;I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 275
    .line 276
    .line 277
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    iget-object v0, v0, Lg/b;->v:Landroidx/lifecycle/MutableLiveData;

    .line 286
    .line 287
    iget-object v1, p0, Lcom/syu/carlink/CarLinkService;->P:Le/d;

    .line 288
    .line 289
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 290
    .line 291
    .line 292
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    iget-object v0, v0, Lg/b;->y:Landroidx/lifecycle/MutableLiveData;

    .line 301
    .line 302
    iget-object v1, p0, Lcom/syu/carlink/CarLinkService;->Q:Le/d;

    .line 303
    .line 304
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 305
    .line 306
    .line 307
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    iget-object v0, v0, Lg/b;->x:Landroidx/lifecycle/MutableLiveData;

    .line 316
    .line 317
    iget-object v1, p0, Lcom/syu/carlink/CarLinkService;->O:Le/d;

    .line 318
    .line 319
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 320
    .line 321
    .line 322
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    iget-object v0, v0, Lg/b;->i:Landroidx/lifecycle/MutableLiveData;

    .line 331
    .line 332
    iget-object v1, p0, Lcom/syu/carlink/CarLinkService;->a0:Le/d;

    .line 333
    .line 334
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 335
    .line 336
    .line 337
    invoke-static {}, Le/b;->a()Lcom/syu/carlink/base/a;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    iget-object v1, p0, Lcom/syu/carlink/CarLinkService;->T:Ls/a;

    .line 342
    .line 343
    invoke-interface {v1}, Ls/a;->getValue()Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    check-cast v1, Lcom/syu/carlink/d;

    .line 348
    .line 349
    const/4 v2, 0x3

    .line 350
    invoke-virtual {v0, v2, v1}, Lcom/syu/carlink/base/a;->a(ILg/c;)V

    .line 351
    .line 352
    .line 353
    invoke-static {}, Le/b;->a()Lcom/syu/carlink/base/a;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    const/4 v1, 0x4

    .line 358
    iget-object v2, p0, Lcom/syu/carlink/CarLinkService;->V:Lcom/syu/carlink/c;

    .line 359
    .line 360
    invoke-virtual {v0, v1, v2}, Lcom/syu/carlink/base/a;->a(ILg/c;)V

    .line 361
    .line 362
    .line 363
    invoke-static {}, Le/b;->a()Lcom/syu/carlink/base/a;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    iget-object v1, p0, Lcom/syu/carlink/CarLinkService;->U:Ls/a;

    .line 368
    .line 369
    invoke-interface {v1}, Ls/a;->getValue()Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    check-cast v1, Le/h;

    .line 374
    .line 375
    iput-object v1, v0, Lcom/syu/carlink/base/a;->b:Le/h;

    .line 376
    .line 377
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    iget-object v0, v0, Lg/b;->c:Landroidx/lifecycle/MutableLiveData;

    .line 386
    .line 387
    iget-object v1, p0, Lcom/syu/carlink/CarLinkService;->b0:Le/d;

    .line 388
    .line 389
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 390
    .line 391
    .line 392
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    iget-object v0, v0, Lg/b;->d:Landroidx/lifecycle/MutableLiveData;

    .line 401
    .line 402
    iget-object v1, p0, Lcom/syu/carlink/CarLinkService;->d0:Le/e;

    .line 403
    .line 404
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 405
    .line 406
    .line 407
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    iget-object v0, v0, Lg/b;->e:Landroidx/lifecycle/MutableLiveData;

    .line 416
    .line 417
    iget-object v1, p0, Lcom/syu/carlink/CarLinkService;->c0:Le/e;

    .line 418
    .line 419
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 420
    .line 421
    .line 422
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    iget-object v0, v0, Lg/b;->h:Landroidx/lifecycle/MutableLiveData;

    .line 431
    .line 432
    iget-object v1, p0, Lcom/syu/carlink/CarLinkService;->e0:Le/d;

    .line 433
    .line 434
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 435
    .line 436
    .line 437
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    iget-object v0, v0, Lg/b;->n:Landroidx/lifecycle/MutableLiveData;

    .line 446
    .line 447
    iget-object v1, p0, Lcom/syu/carlink/CarLinkService;->f0:Le/d;

    .line 448
    .line 449
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 450
    .line 451
    .line 452
    invoke-static {}, Lcom/syu/carlink/CarLinkService;->m()Lcom/syu/carlink/CarLink;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    iget-object v0, v0, Lg/b;->B:Landroidx/lifecycle/MutableLiveData;

    .line 461
    .line 462
    iget-object v1, p0, Lcom/syu/carlink/CarLinkService;->K:Le/d;

    .line 463
    .line 464
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 465
    .line 466
    .line 467
    return-void
.end method

.method public final onDestroy()V
    .locals 5

    .line 1
    sget-object v0, Lcom/syu/carlink/UsbScanner;->j:Lcom/syu/carlink/UsbScanner;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/syu/carlink/UsbScanner;->d:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/syu/carlink/UsbScanner;->b()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 13
    .line 14
    .line 15
    iput-boolean v2, v0, Lcom/syu/carlink/UsbScanner;->d:Z

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    new-array v1, v2, [I

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    const/16 v4, 0xdc

    .line 25
    .line 26
    invoke-virtual {v0, v4, v3, v1}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-boolean v0, p0, Lcom/syu/carlink/CarLinkService;->j0:Z

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/syu/carlink/CarLinkService;->k0:Lcom/syu/carlink/CarLinkService$killedReceiver$1;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iput-boolean v2, p0, Lcom/syu/carlink/CarLinkService;->j0:Z

    .line 39
    .line 40
    invoke-super {p0}, Landroidx/lifecycle/LifecycleService;->onDestroy()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final onHandle(Lo/b;)V
    .locals 17
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "msg"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, v1, Lo/b;->e:[Ljava/lang/String;

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    const-string v4, "HDL"

    .line 14
    .line 15
    const-string v5, "me"

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x1

    .line 19
    const/4 v8, 0x0

    .line 20
    iget v9, v1, Lo/b;->a:I

    .line 21
    .line 22
    iget-object v10, v1, Lo/b;->b:Ljava/lang/Integer;

    .line 23
    .line 24
    iget-object v11, v1, Lo/b;->c:[I

    .line 25
    .line 26
    if-eqz v9, :cond_5b

    .line 27
    .line 28
    const/4 v12, 0x7

    .line 29
    if-eq v9, v3, :cond_4

    .line 30
    .line 31
    if-eq v9, v12, :cond_0

    .line 32
    .line 33
    goto/16 :goto_4e

    .line 34
    .line 35
    :cond_0
    if-nez v10, :cond_1

    .line 36
    .line 37
    goto/16 :goto_4e

    .line 38
    .line 39
    :cond_1
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/16 v2, 0x3eb

    .line 44
    .line 45
    if-ne v1, v2, :cond_b3

    .line 46
    .line 47
    if-eqz v11, :cond_2

    .line 48
    .line 49
    array-length v1, v11

    .line 50
    if-lez v1, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move v7, v8

    .line 54
    :goto_0
    if-eqz v7, :cond_b3

    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v2, "FinalCanbus.U_DRIVER_ON_RIGHT isLeftHandDrive : "

    .line 59
    .line 60
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v11}, Lt/b;->e(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    aget v2, v11, v8

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v4, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 79
    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iget-object v1, v1, Lg/b;->r:Landroidx/lifecycle/MutableLiveData;

    .line 87
    .line 88
    aget v2, v11, v8

    .line 89
    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_4e

    .line 98
    .line 99
    :cond_3
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v6

    .line 103
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v13, "BT ==>> "

    .line 106
    .line 107
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    const/16 v3, 0xe

    .line 121
    .line 122
    const/16 v13, 0xf

    .line 123
    .line 124
    if-nez v10, :cond_5

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_5
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 128
    .line 129
    .line 130
    move-result v14

    .line 131
    const/16 v15, 0x40

    .line 132
    .line 133
    if-ne v14, v15, :cond_8

    .line 134
    .line 135
    if-eqz v11, :cond_6

    .line 136
    .line 137
    array-length v1, v11

    .line 138
    if-lez v1, :cond_6

    .line 139
    .line 140
    move v1, v7

    .line 141
    goto :goto_1

    .line 142
    :cond_6
    move v1, v8

    .line 143
    :goto_1
    if-eqz v1, :cond_34

    .line 144
    .line 145
    invoke-static {v11}, Lt/b;->e(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    aget v1, v11, v8

    .line 149
    .line 150
    if-ne v1, v7, :cond_7

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_7
    move v7, v8

    .line 154
    :goto_2
    iput-boolean v7, v0, Lcom/syu/carlink/CarLinkService;->b:Z

    .line 155
    .line 156
    goto/16 :goto_19

    .line 157
    .line 158
    :cond_8
    :goto_3
    iget-boolean v14, v0, Lcom/syu/carlink/CarLinkService;->b:Z

    .line 159
    .line 160
    if-eqz v14, :cond_9

    .line 161
    .line 162
    invoke-virtual/range {p0 .. p1}, Lcom/syu/carlink/CarLinkService;->u(Lo/b;)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_19

    .line 166
    .line 167
    :cond_9
    if-eqz v14, :cond_a

    .line 168
    .line 169
    goto/16 :goto_19

    .line 170
    .line 171
    :cond_a
    if-nez v10, :cond_b

    .line 172
    .line 173
    goto :goto_6

    .line 174
    :cond_b
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    const/16 v14, 0x1f

    .line 179
    .line 180
    if-ne v1, v14, :cond_f

    .line 181
    .line 182
    invoke-static {v11}, Lt/b;->e(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    invoke-static {v11}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    const-string v12, "toString(this)"

    .line 190
    .line 191
    invoke-static {v1, v12}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    const-string v12, "=== > FinalMain.Options.U_BT_POWER_ON : "

    .line 195
    .line 196
    invoke-virtual {v12, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-static {v4, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    array-length v1, v11

    .line 204
    if-lez v1, :cond_c

    .line 205
    .line 206
    move v1, v7

    .line 207
    goto :goto_4

    .line 208
    :cond_c
    move v1, v8

    .line 209
    :goto_4
    if-eqz v1, :cond_34

    .line 210
    .line 211
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 212
    .line 213
    if-eqz v1, :cond_e

    .line 214
    .line 215
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    iget-object v1, v1, Lg/b;->i:Landroidx/lifecycle/MutableLiveData;

    .line 220
    .line 221
    aget v4, v11, v8

    .line 222
    .line 223
    if-ne v4, v7, :cond_d

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_d
    move v7, v8

    .line 227
    :goto_5
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-virtual {v1, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_19

    .line 235
    .line 236
    :cond_e
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw v6

    .line 240
    :cond_f
    :goto_6
    if-nez v10, :cond_10

    .line 241
    .line 242
    goto :goto_8

    .line 243
    :cond_10
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-ne v1, v12, :cond_13

    .line 248
    .line 249
    if-eqz v2, :cond_11

    .line 250
    .line 251
    array-length v1, v2

    .line 252
    if-lez v1, :cond_11

    .line 253
    .line 254
    goto :goto_7

    .line 255
    :cond_11
    move v7, v8

    .line 256
    :goto_7
    if-eqz v7, :cond_34

    .line 257
    .line 258
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 259
    .line 260
    if-eqz v1, :cond_12

    .line 261
    .line 262
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    iget-object v1, v1, Lg/b;->l:Landroidx/lifecycle/MutableLiveData;

    .line 267
    .line 268
    invoke-static {v2}, Lt/b;->e(Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    aget-object v4, v2, v8

    .line 272
    .line 273
    invoke-virtual {v1, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    goto/16 :goto_19

    .line 277
    .line 278
    :cond_12
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw v6

    .line 282
    :cond_13
    :goto_8
    if-nez v10, :cond_14

    .line 283
    .line 284
    goto :goto_a

    .line 285
    :cond_14
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-ne v1, v13, :cond_17

    .line 290
    .line 291
    if-eqz v2, :cond_15

    .line 292
    .line 293
    array-length v1, v2

    .line 294
    if-lez v1, :cond_15

    .line 295
    .line 296
    goto :goto_9

    .line 297
    :cond_15
    move v7, v8

    .line 298
    :goto_9
    if-eqz v7, :cond_34

    .line 299
    .line 300
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 301
    .line 302
    if-eqz v1, :cond_16

    .line 303
    .line 304
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    iget-object v1, v1, Lg/b;->j:Landroidx/lifecycle/MutableLiveData;

    .line 309
    .line 310
    invoke-static {v2}, Lt/b;->e(Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    aget-object v4, v2, v8

    .line 314
    .line 315
    invoke-virtual {v1, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    goto/16 :goto_19

    .line 319
    .line 320
    :cond_16
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    throw v6

    .line 324
    :cond_17
    :goto_a
    const-string v1, ":"

    .line 325
    .line 326
    const-string v4, ""

    .line 327
    .line 328
    if-nez v10, :cond_18

    .line 329
    .line 330
    goto/16 :goto_e

    .line 331
    .line 332
    :cond_18
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 333
    .line 334
    .line 335
    move-result v12

    .line 336
    if-ne v12, v3, :cond_20

    .line 337
    .line 338
    if-eqz v2, :cond_19

    .line 339
    .line 340
    array-length v12, v2

    .line 341
    if-lez v12, :cond_19

    .line 342
    .line 343
    move v12, v7

    .line 344
    goto :goto_b

    .line 345
    :cond_19
    move v12, v8

    .line 346
    :goto_b
    if-eqz v12, :cond_34

    .line 347
    .line 348
    invoke-static {v2}, Lt/b;->e(Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    aget-object v12, v2, v8

    .line 352
    .line 353
    invoke-static {v12, v1}, Lf0/h;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 354
    .line 355
    .line 356
    move-result v12

    .line 357
    if-nez v12, :cond_1e

    .line 358
    .line 359
    aget-object v12, v2, v8

    .line 360
    .line 361
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 362
    .line 363
    .line 364
    move-result v14

    .line 365
    move v15, v8

    .line 366
    :goto_c
    if-ge v15, v14, :cond_1c

    .line 367
    .line 368
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 369
    .line 370
    .line 371
    move-result v16

    .line 372
    if-lez v16, :cond_1a

    .line 373
    .line 374
    goto :goto_d

    .line 375
    :cond_1a
    move v7, v8

    .line 376
    :goto_d
    if-eqz v7, :cond_1b

    .line 377
    .line 378
    rem-int/lit8 v7, v15, 0x2

    .line 379
    .line 380
    if-nez v7, :cond_1b

    .line 381
    .line 382
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v4

    .line 386
    :cond_1b
    invoke-static {v4}, Landroid/accessibilityservice/c;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    move-result-object v4

    .line 390
    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    .line 391
    .line 392
    .line 393
    move-result v7

    .line 394
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    add-int/lit8 v15, v15, 0x1

    .line 402
    .line 403
    const/4 v7, 0x1

    .line 404
    goto :goto_c

    .line 405
    :cond_1c
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 406
    .line 407
    if-eqz v1, :cond_1d

    .line 408
    .line 409
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    iget-object v1, v1, Lg/b;->k:Landroidx/lifecycle/MutableLiveData;

    .line 414
    .line 415
    invoke-virtual {v1, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    goto/16 :goto_19

    .line 419
    .line 420
    :cond_1d
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    throw v6

    .line 424
    :cond_1e
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 425
    .line 426
    if-eqz v1, :cond_1f

    .line 427
    .line 428
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    iget-object v1, v1, Lg/b;->k:Landroidx/lifecycle/MutableLiveData;

    .line 433
    .line 434
    aget-object v4, v2, v8

    .line 435
    .line 436
    invoke-virtual {v1, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    goto/16 :goto_19

    .line 440
    .line 441
    :cond_1f
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    throw v6

    .line 445
    :cond_20
    :goto_e
    if-nez v10, :cond_21

    .line 446
    .line 447
    goto :goto_10

    .line 448
    :cond_21
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 449
    .line 450
    .line 451
    move-result v7

    .line 452
    const/16 v12, 0x9

    .line 453
    .line 454
    if-ne v7, v12, :cond_24

    .line 455
    .line 456
    if-eqz v11, :cond_22

    .line 457
    .line 458
    array-length v1, v11

    .line 459
    if-lez v1, :cond_22

    .line 460
    .line 461
    const/4 v1, 0x1

    .line 462
    goto :goto_f

    .line 463
    :cond_22
    move v1, v8

    .line 464
    :goto_f
    if-eqz v1, :cond_34

    .line 465
    .line 466
    invoke-static {v11}, Lt/b;->e(Ljava/lang/Object;)V

    .line 467
    .line 468
    .line 469
    aget v1, v11, v8

    .line 470
    .line 471
    sget-object v4, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 472
    .line 473
    if-eqz v4, :cond_23

    .line 474
    .line 475
    invoke-virtual {v4}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 476
    .line 477
    .line 478
    move-result-object v4

    .line 479
    iget-object v4, v4, Lg/b;->n:Landroidx/lifecycle/MutableLiveData;

    .line 480
    .line 481
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    invoke-virtual {v4, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 486
    .line 487
    .line 488
    goto/16 :goto_19

    .line 489
    .line 490
    :cond_23
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    throw v6

    .line 494
    :cond_24
    :goto_10
    if-nez v10, :cond_25

    .line 495
    .line 496
    goto/16 :goto_17

    .line 497
    .line 498
    :cond_25
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 499
    .line 500
    .line 501
    move-result v7

    .line 502
    const/4 v12, 0x6

    .line 503
    if-ne v7, v12, :cond_30

    .line 504
    .line 505
    if-eqz v2, :cond_26

    .line 506
    .line 507
    array-length v7, v2

    .line 508
    if-lez v7, :cond_26

    .line 509
    .line 510
    const/4 v7, 0x1

    .line 511
    goto :goto_11

    .line 512
    :cond_26
    move v7, v8

    .line 513
    :goto_11
    if-eqz v7, :cond_34

    .line 514
    .line 515
    invoke-static {v2}, Lt/b;->e(Ljava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    aget-object v7, v2, v8

    .line 519
    .line 520
    if-eqz v7, :cond_29

    .line 521
    .line 522
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 523
    .line 524
    .line 525
    move-result v7

    .line 526
    if-nez v7, :cond_27

    .line 527
    .line 528
    const/4 v7, 0x1

    .line 529
    goto :goto_12

    .line 530
    :cond_27
    move v7, v8

    .line 531
    :goto_12
    if-eqz v7, :cond_28

    .line 532
    .line 533
    goto :goto_13

    .line 534
    :cond_28
    move v7, v8

    .line 535
    goto :goto_14

    .line 536
    :cond_29
    :goto_13
    const/4 v7, 0x1

    .line 537
    :goto_14
    if-nez v7, :cond_34

    .line 538
    .line 539
    aget-object v7, v2, v8

    .line 540
    .line 541
    invoke-static {v7, v1}, Lf0/h;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 542
    .line 543
    .line 544
    move-result v7

    .line 545
    if-nez v7, :cond_2e

    .line 546
    .line 547
    aget-object v7, v2, v8

    .line 548
    .line 549
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 550
    .line 551
    .line 552
    move-result v12

    .line 553
    move v14, v8

    .line 554
    :goto_15
    if-ge v14, v12, :cond_2c

    .line 555
    .line 556
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 557
    .line 558
    .line 559
    move-result v15

    .line 560
    if-lez v15, :cond_2a

    .line 561
    .line 562
    const/4 v15, 0x1

    .line 563
    goto :goto_16

    .line 564
    :cond_2a
    move v15, v8

    .line 565
    :goto_16
    if-eqz v15, :cond_2b

    .line 566
    .line 567
    rem-int/lit8 v15, v14, 0x2

    .line 568
    .line 569
    if-nez v15, :cond_2b

    .line 570
    .line 571
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v4

    .line 575
    :cond_2b
    invoke-static {v4}, Landroid/accessibilityservice/c;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    move-result-object v4

    .line 579
    invoke-virtual {v7, v14}, Ljava/lang/String;->charAt(I)C

    .line 580
    .line 581
    .line 582
    move-result v15

    .line 583
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v4

    .line 590
    add-int/lit8 v14, v14, 0x1

    .line 591
    .line 592
    goto :goto_15

    .line 593
    :cond_2c
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 594
    .line 595
    if-eqz v1, :cond_2d

    .line 596
    .line 597
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    iget-object v1, v1, Lg/b;->m:Landroidx/lifecycle/MutableLiveData;

    .line 602
    .line 603
    invoke-virtual {v1, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 604
    .line 605
    .line 606
    goto :goto_19

    .line 607
    :cond_2d
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    throw v6

    .line 611
    :cond_2e
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 612
    .line 613
    if-eqz v1, :cond_2f

    .line 614
    .line 615
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 616
    .line 617
    .line 618
    move-result-object v1

    .line 619
    iget-object v1, v1, Lg/b;->m:Landroidx/lifecycle/MutableLiveData;

    .line 620
    .line 621
    aget-object v4, v2, v8

    .line 622
    .line 623
    invoke-virtual {v1, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 624
    .line 625
    .line 626
    goto :goto_19

    .line 627
    :cond_2f
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    throw v6

    .line 631
    :cond_30
    :goto_17
    if-nez v10, :cond_31

    .line 632
    .line 633
    goto :goto_19

    .line 634
    :cond_31
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 635
    .line 636
    .line 637
    move-result v1

    .line 638
    const/16 v4, 0xd

    .line 639
    .line 640
    if-ne v1, v4, :cond_34

    .line 641
    .line 642
    if-eqz v11, :cond_32

    .line 643
    .line 644
    array-length v1, v11

    .line 645
    if-lez v1, :cond_32

    .line 646
    .line 647
    const/4 v1, 0x1

    .line 648
    goto :goto_18

    .line 649
    :cond_32
    move v1, v8

    .line 650
    :goto_18
    if-eqz v1, :cond_34

    .line 651
    .line 652
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 653
    .line 654
    if-eqz v1, :cond_33

    .line 655
    .line 656
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 657
    .line 658
    .line 659
    move-result-object v1

    .line 660
    iget-object v1, v1, Lg/b;->I:Landroidx/lifecycle/MutableLiveData;

    .line 661
    .line 662
    invoke-static {v11}, Lt/b;->e(Ljava/lang/Object;)V

    .line 663
    .line 664
    .line 665
    aget v4, v11, v8

    .line 666
    .line 667
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 668
    .line 669
    .line 670
    move-result-object v4

    .line 671
    invoke-virtual {v1, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 672
    .line 673
    .line 674
    goto :goto_19

    .line 675
    :cond_33
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    throw v6

    .line 679
    :cond_34
    :goto_19
    if-nez v10, :cond_35

    .line 680
    .line 681
    goto :goto_1a

    .line 682
    :cond_35
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 683
    .line 684
    .line 685
    move-result v1

    .line 686
    const/16 v4, 0xd

    .line 687
    .line 688
    if-eq v1, v4, :cond_b3

    .line 689
    .line 690
    :goto_1a
    iget-boolean v1, v0, Lcom/syu/carlink/CarLinkService;->b:Z

    .line 691
    .line 692
    iget-object v4, v0, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 693
    .line 694
    const-string v6, "IA"

    .line 695
    .line 696
    const-string v7, "=======>>> btDisconnected()"

    .line 697
    .line 698
    const-string v12, "BluetoothUtils"

    .line 699
    .line 700
    iget-object v14, v0, Lcom/syu/carlink/CarLinkService;->S:Lcom/syu/carlink/a;

    .line 701
    .line 702
    move-object/from16 v16, v4

    .line 703
    .line 704
    const-wide/16 v3, 0x258

    .line 705
    .line 706
    if-eqz v1, :cond_4c

    .line 707
    .line 708
    if-nez v1, :cond_36

    .line 709
    .line 710
    goto/16 :goto_4e

    .line 711
    .line 712
    :cond_36
    const/4 v1, 0x2

    .line 713
    if-ne v9, v1, :cond_b3

    .line 714
    .line 715
    if-nez v10, :cond_37

    .line 716
    .line 717
    goto :goto_1b

    .line 718
    :cond_37
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 719
    .line 720
    .line 721
    move-result v1

    .line 722
    if-ne v1, v13, :cond_38

    .line 723
    .line 724
    goto :goto_1c

    .line 725
    :cond_38
    :goto_1b
    if-nez v10, :cond_39

    .line 726
    .line 727
    goto :goto_1d

    .line 728
    :cond_39
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 729
    .line 730
    .line 731
    move-result v1

    .line 732
    const/4 v9, 0x6

    .line 733
    if-ne v1, v9, :cond_3a

    .line 734
    .line 735
    :goto_1c
    const/4 v1, 0x1

    .line 736
    goto :goto_1e

    .line 737
    :cond_3a
    :goto_1d
    move v1, v8

    .line 738
    :goto_1e
    if-eqz v1, :cond_3b

    .line 739
    .line 740
    goto :goto_1f

    .line 741
    :cond_3b
    if-nez v10, :cond_3c

    .line 742
    .line 743
    goto :goto_20

    .line 744
    :cond_3c
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 745
    .line 746
    .line 747
    move-result v1

    .line 748
    const/16 v9, 0xe

    .line 749
    .line 750
    if-ne v1, v9, :cond_3d

    .line 751
    .line 752
    :goto_1f
    const/4 v1, 0x1

    .line 753
    goto :goto_21

    .line 754
    :cond_3d
    :goto_20
    move v1, v8

    .line 755
    :goto_21
    iget-object v9, v0, Lcom/syu/carlink/CarLinkService;->d:Ljava/lang/String;

    .line 756
    .line 757
    if-eqz v1, :cond_3f

    .line 758
    .line 759
    iget-boolean v1, v0, Lcom/syu/carlink/CarLinkService;->e:Z

    .line 760
    .line 761
    if-nez v1, :cond_b3

    .line 762
    .line 763
    if-eqz v2, :cond_3e

    .line 764
    .line 765
    array-length v1, v2

    .line 766
    const/4 v5, 0x1

    .line 767
    if-le v1, v5, :cond_3e

    .line 768
    .line 769
    const/4 v1, 0x1

    .line 770
    goto :goto_22

    .line 771
    :cond_3e
    move v1, v8

    .line 772
    :goto_22
    if-eqz v1, :cond_b3

    .line 773
    .line 774
    invoke-static {v2}, Lt/b;->e(Ljava/lang/Object;)V

    .line 775
    .line 776
    .line 777
    aget-object v1, v2, v8

    .line 778
    .line 779
    invoke-static {v1, v9}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 780
    .line 781
    .line 782
    move-result v1

    .line 783
    if-eqz v1, :cond_b3

    .line 784
    .line 785
    move-object/from16 v1, v16

    .line 786
    .line 787
    invoke-virtual {v1, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v1, v14, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 791
    .line 792
    .line 793
    goto/16 :goto_4e

    .line 794
    .line 795
    :cond_3f
    move-object/from16 v1, v16

    .line 796
    .line 797
    if-nez v10, :cond_40

    .line 798
    .line 799
    goto/16 :goto_4e

    .line 800
    .line 801
    :cond_40
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 802
    .line 803
    .line 804
    move-result v10

    .line 805
    const/16 v13, 0x9

    .line 806
    .line 807
    if-ne v10, v13, :cond_b3

    .line 808
    .line 809
    if-eqz v2, :cond_41

    .line 810
    .line 811
    array-length v10, v2

    .line 812
    const/4 v13, 0x1

    .line 813
    if-le v10, v13, :cond_41

    .line 814
    .line 815
    const/4 v10, 0x1

    .line 816
    goto :goto_23

    .line 817
    :cond_41
    move v10, v8

    .line 818
    :goto_23
    if-eqz v10, :cond_b3

    .line 819
    .line 820
    invoke-static {v2}, Lt/b;->e(Ljava/lang/Object;)V

    .line 821
    .line 822
    .line 823
    aget-object v2, v2, v8

    .line 824
    .line 825
    invoke-static {v2, v9}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 826
    .line 827
    .line 828
    move-result v2

    .line 829
    if-eqz v2, :cond_b3

    .line 830
    .line 831
    if-eqz v11, :cond_42

    .line 832
    .line 833
    array-length v2, v11

    .line 834
    if-lez v2, :cond_42

    .line 835
    .line 836
    const/4 v2, 0x1

    .line 837
    goto :goto_24

    .line 838
    :cond_42
    move v2, v8

    .line 839
    :goto_24
    if-eqz v2, :cond_b3

    .line 840
    .line 841
    invoke-static {v11}, Lt/b;->e(Ljava/lang/Object;)V

    .line 842
    .line 843
    .line 844
    aget v2, v11, v8

    .line 845
    .line 846
    const/4 v9, 0x2

    .line 847
    if-eq v2, v9, :cond_47

    .line 848
    .line 849
    const/4 v9, 0x3

    .line 850
    if-eq v2, v9, :cond_46

    .line 851
    .line 852
    const/4 v9, 0x4

    .line 853
    if-eq v2, v9, :cond_45

    .line 854
    .line 855
    const/4 v9, 0x5

    .line 856
    if-eq v2, v9, :cond_44

    .line 857
    .line 858
    const/4 v9, 0x6

    .line 859
    if-eq v2, v9, :cond_43

    .line 860
    .line 861
    move v2, v8

    .line 862
    goto :goto_25

    .line 863
    :cond_43
    const/4 v2, 0x5

    .line 864
    goto :goto_25

    .line 865
    :cond_44
    const/4 v2, 0x4

    .line 866
    goto :goto_25

    .line 867
    :cond_45
    const/4 v2, 0x3

    .line 868
    goto :goto_25

    .line 869
    :cond_46
    const/4 v2, 0x2

    .line 870
    goto :goto_25

    .line 871
    :cond_47
    const/4 v2, 0x1

    .line 872
    :goto_25
    if-eqz v2, :cond_48

    .line 873
    .line 874
    const/4 v9, 0x1

    .line 875
    if-eq v2, v9, :cond_48

    .line 876
    .line 877
    const/4 v8, 0x1

    .line 878
    :cond_48
    iget-boolean v2, v0, Lcom/syu/carlink/CarLinkService;->m:Z

    .line 879
    .line 880
    if-eq v8, v2, :cond_b3

    .line 881
    .line 882
    iput-boolean v8, v0, Lcom/syu/carlink/CarLinkService;->m:Z

    .line 883
    .line 884
    if-eqz v8, :cond_4a

    .line 885
    .line 886
    iget-boolean v2, v0, Lcom/syu/carlink/CarLinkService;->e:Z

    .line 887
    .line 888
    if-nez v2, :cond_b3

    .line 889
    .line 890
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 891
    .line 892
    if-eqz v2, :cond_49

    .line 893
    .line 894
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->B()I

    .line 895
    .line 896
    .line 897
    move-result v2

    .line 898
    const/4 v5, 0x3

    .line 899
    if-ne v2, v5, :cond_b3

    .line 900
    .line 901
    invoke-virtual {v1, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 902
    .line 903
    .line 904
    invoke-virtual {v1, v14, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 905
    .line 906
    .line 907
    goto/16 :goto_4e

    .line 908
    .line 909
    :cond_49
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 910
    .line 911
    .line 912
    const/4 v1, 0x0

    .line 913
    throw v1

    .line 914
    :cond_4a
    invoke-virtual {v1, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 915
    .line 916
    .line 917
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 918
    .line 919
    if-eqz v1, :cond_4b

    .line 920
    .line 921
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->q()Z

    .line 922
    .line 923
    .line 924
    move-result v1

    .line 925
    if-eqz v1, :cond_b3

    .line 926
    .line 927
    iget-object v1, v0, Lcom/syu/carlink/CarLinkService;->C:Ll/b;

    .line 928
    .line 929
    if-eqz v1, :cond_b3

    .line 930
    .line 931
    invoke-static {v12, v7}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    .line 933
    .line 934
    invoke-static {v6}, Ll/b;->a(Ljava/lang/String;)V

    .line 935
    .line 936
    .line 937
    goto/16 :goto_4e

    .line 938
    .line 939
    :cond_4b
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 940
    .line 941
    .line 942
    const/4 v1, 0x0

    .line 943
    throw v1

    .line 944
    :cond_4c
    move-object/from16 v2, v16

    .line 945
    .line 946
    if-eqz v1, :cond_4d

    .line 947
    .line 948
    goto/16 :goto_4e

    .line 949
    .line 950
    :cond_4d
    const/4 v1, 0x2

    .line 951
    if-ne v9, v1, :cond_b3

    .line 952
    .line 953
    if-nez v10, :cond_4e

    .line 954
    .line 955
    goto :goto_26

    .line 956
    :cond_4e
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 957
    .line 958
    .line 959
    move-result v1

    .line 960
    if-ne v1, v13, :cond_4f

    .line 961
    .line 962
    goto :goto_27

    .line 963
    :cond_4f
    :goto_26
    if-nez v10, :cond_50

    .line 964
    .line 965
    goto :goto_28

    .line 966
    :cond_50
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 967
    .line 968
    .line 969
    move-result v1

    .line 970
    const/16 v9, 0xe

    .line 971
    .line 972
    if-ne v1, v9, :cond_51

    .line 973
    .line 974
    :goto_27
    const/4 v1, 0x1

    .line 975
    goto :goto_29

    .line 976
    :cond_51
    :goto_28
    move v1, v8

    .line 977
    :goto_29
    if-eqz v1, :cond_52

    .line 978
    .line 979
    iget-boolean v1, v0, Lcom/syu/carlink/CarLinkService;->e:Z

    .line 980
    .line 981
    if-nez v1, :cond_b3

    .line 982
    .line 983
    invoke-virtual {v2, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 984
    .line 985
    .line 986
    invoke-virtual {v2, v14, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 987
    .line 988
    .line 989
    goto/16 :goto_4e

    .line 990
    .line 991
    :cond_52
    if-nez v10, :cond_53

    .line 992
    .line 993
    goto :goto_2a

    .line 994
    :cond_53
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 995
    .line 996
    .line 997
    move-result v1

    .line 998
    const/4 v9, 0x6

    .line 999
    if-ne v1, v9, :cond_54

    .line 1000
    .line 1001
    iget-boolean v1, v0, Lcom/syu/carlink/CarLinkService;->e:Z

    .line 1002
    .line 1003
    if-nez v1, :cond_b3

    .line 1004
    .line 1005
    invoke-virtual {v2, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v2, v14, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1009
    .line 1010
    .line 1011
    goto/16 :goto_4e

    .line 1012
    .line 1013
    :cond_54
    :goto_2a
    if-nez v10, :cond_55

    .line 1014
    .line 1015
    goto/16 :goto_4e

    .line 1016
    .line 1017
    :cond_55
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 1018
    .line 1019
    .line 1020
    move-result v1

    .line 1021
    const/16 v9, 0x9

    .line 1022
    .line 1023
    if-ne v1, v9, :cond_b3

    .line 1024
    .line 1025
    if-eqz v11, :cond_56

    .line 1026
    .line 1027
    array-length v1, v11

    .line 1028
    if-lez v1, :cond_56

    .line 1029
    .line 1030
    const/4 v1, 0x1

    .line 1031
    goto :goto_2b

    .line 1032
    :cond_56
    move v1, v8

    .line 1033
    :goto_2b
    if-eqz v1, :cond_b3

    .line 1034
    .line 1035
    invoke-static {v11}, Lt/b;->e(Ljava/lang/Object;)V

    .line 1036
    .line 1037
    .line 1038
    aget v1, v11, v8

    .line 1039
    .line 1040
    if-eqz v1, :cond_57

    .line 1041
    .line 1042
    const/4 v9, 0x6

    .line 1043
    if-eq v1, v9, :cond_57

    .line 1044
    .line 1045
    const/4 v9, 0x1

    .line 1046
    if-eq v1, v9, :cond_57

    .line 1047
    .line 1048
    const/4 v8, 0x1

    .line 1049
    :cond_57
    iget-boolean v1, v0, Lcom/syu/carlink/CarLinkService;->m:Z

    .line 1050
    .line 1051
    if-eq v8, v1, :cond_b3

    .line 1052
    .line 1053
    iput-boolean v8, v0, Lcom/syu/carlink/CarLinkService;->m:Z

    .line 1054
    .line 1055
    if-eqz v8, :cond_59

    .line 1056
    .line 1057
    iget-boolean v1, v0, Lcom/syu/carlink/CarLinkService;->e:Z

    .line 1058
    .line 1059
    if-nez v1, :cond_b3

    .line 1060
    .line 1061
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 1062
    .line 1063
    if-eqz v1, :cond_58

    .line 1064
    .line 1065
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->B()I

    .line 1066
    .line 1067
    .line 1068
    move-result v1

    .line 1069
    const/4 v5, 0x3

    .line 1070
    if-ne v1, v5, :cond_b3

    .line 1071
    .line 1072
    invoke-virtual {v2, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v2, v14, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1076
    .line 1077
    .line 1078
    goto/16 :goto_4e

    .line 1079
    .line 1080
    :cond_58
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 1081
    .line 1082
    .line 1083
    const/4 v1, 0x0

    .line 1084
    throw v1

    .line 1085
    :cond_59
    invoke-virtual {v2, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1086
    .line 1087
    .line 1088
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 1089
    .line 1090
    if-eqz v1, :cond_5a

    .line 1091
    .line 1092
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->q()Z

    .line 1093
    .line 1094
    .line 1095
    move-result v1

    .line 1096
    if-eqz v1, :cond_b3

    .line 1097
    .line 1098
    iget-object v1, v0, Lcom/syu/carlink/CarLinkService;->C:Ll/b;

    .line 1099
    .line 1100
    if-eqz v1, :cond_b3

    .line 1101
    .line 1102
    invoke-static {v12, v7}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    .line 1104
    .line 1105
    invoke-static {v6}, Ll/b;->a(Ljava/lang/String;)V

    .line 1106
    .line 1107
    .line 1108
    goto/16 :goto_4e

    .line 1109
    .line 1110
    :cond_5a
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 1111
    .line 1112
    .line 1113
    const/4 v1, 0x0

    .line 1114
    throw v1

    .line 1115
    :cond_5b
    const/16 v1, 0x7f

    .line 1116
    .line 1117
    iget-object v3, v0, Lcom/syu/carlink/CarLinkService;->i0:Lcom/syu/carlink/a;

    .line 1118
    .line 1119
    if-nez v10, :cond_5c

    .line 1120
    .line 1121
    goto/16 :goto_30

    .line 1122
    .line 1123
    :cond_5c
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 1124
    .line 1125
    .line 1126
    move-result v6

    .line 1127
    if-nez v6, :cond_66

    .line 1128
    .line 1129
    if-eqz v11, :cond_5d

    .line 1130
    .line 1131
    array-length v2, v11

    .line 1132
    if-lez v2, :cond_5d

    .line 1133
    .line 1134
    const/4 v2, 0x1

    .line 1135
    goto :goto_2c

    .line 1136
    :cond_5d
    move v2, v8

    .line 1137
    :goto_2c
    if-eqz v2, :cond_b3

    .line 1138
    .line 1139
    invoke-static {v11}, Lt/b;->e(Ljava/lang/Object;)V

    .line 1140
    .line 1141
    .line 1142
    aget v2, v11, v8

    .line 1143
    .line 1144
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1145
    .line 1146
    const-string v6, "===================>>  APPID: "

    .line 1147
    .line 1148
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1149
    .line 1150
    .line 1151
    iget-object v6, v0, Lcom/syu/carlink/CarLinkService;->h:Ljava/lang/Integer;

    .line 1152
    .line 1153
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1154
    .line 1155
    .line 1156
    const-string v6, "  request: "

    .line 1157
    .line 1158
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    .line 1160
    .line 1161
    iget-object v6, v0, Lcom/syu/carlink/CarLinkService;->i:Ljava/lang/Integer;

    .line 1162
    .line 1163
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1164
    .line 1165
    .line 1166
    const-string v6, "  id: "

    .line 1167
    .line 1168
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1172
    .line 1173
    .line 1174
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v5

    .line 1178
    invoke-static {v4, v5}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    .line 1180
    .line 1181
    iget-object v5, v0, Lcom/syu/carlink/CarLinkService;->i:Ljava/lang/Integer;

    .line 1182
    .line 1183
    const-string v6, "===================>>  request appid: "

    .line 1184
    .line 1185
    if-eqz v5, :cond_5e

    .line 1186
    .line 1187
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1188
    .line 1189
    .line 1190
    move-result v5

    .line 1191
    if-eq v5, v2, :cond_5e

    .line 1192
    .line 1193
    invoke-virtual/range {p0 .. p0}, Lcom/syu/carlink/CarLinkService;->p()Landroid/os/Handler;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v1

    .line 1197
    new-instance v2, Lcom/syu/carlink/a;

    .line 1198
    .line 1199
    const/4 v3, 0x1

    .line 1200
    invoke-direct {v2, v0, v3}, Lcom/syu/carlink/a;-><init>(Lcom/syu/carlink/CarLinkService;I)V

    .line 1201
    .line 1202
    .line 1203
    const-wide/16 v7, 0xc8

    .line 1204
    .line 1205
    invoke-virtual {v1, v2, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1206
    .line 1207
    .line 1208
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1209
    .line 1210
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1211
    .line 1212
    .line 1213
    iget-object v2, v0, Lcom/syu/carlink/CarLinkService;->i:Ljava/lang/Integer;

    .line 1214
    .line 1215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v1

    .line 1222
    invoke-static {v4, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    .line 1224
    .line 1225
    goto/16 :goto_4e

    .line 1226
    .line 1227
    :cond_5e
    iget-object v5, v0, Lcom/syu/carlink/CarLinkService;->i:Ljava/lang/Integer;

    .line 1228
    .line 1229
    if-eqz v5, :cond_5f

    .line 1230
    .line 1231
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1232
    .line 1233
    .line 1234
    move-result v5

    .line 1235
    if-ne v5, v2, :cond_5f

    .line 1236
    .line 1237
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1238
    .line 1239
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1240
    .line 1241
    .line 1242
    iget-object v5, v0, Lcom/syu/carlink/CarLinkService;->i:Ljava/lang/Integer;

    .line 1243
    .line 1244
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1245
    .line 1246
    .line 1247
    const-string v5, " finish!!"

    .line 1248
    .line 1249
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    .line 1251
    .line 1252
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v1

    .line 1256
    invoke-static {v4, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    .line 1258
    .line 1259
    const/4 v1, 0x0

    .line 1260
    iput-object v1, v0, Lcom/syu/carlink/CarLinkService;->i:Ljava/lang/Integer;

    .line 1261
    .line 1262
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v1

    .line 1266
    iput-object v1, v0, Lcom/syu/carlink/CarLinkService;->h:Ljava/lang/Integer;

    .line 1267
    .line 1268
    invoke-virtual/range {p0 .. p0}, Lcom/syu/carlink/CarLinkService;->p()Landroid/os/Handler;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v1

    .line 1272
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1273
    .line 1274
    .line 1275
    goto/16 :goto_4e

    .line 1276
    .line 1277
    :cond_5f
    iget-object v5, v0, Lcom/syu/carlink/CarLinkService;->i:Ljava/lang/Integer;

    .line 1278
    .line 1279
    if-nez v5, :cond_b3

    .line 1280
    .line 1281
    iget-object v5, v0, Lcom/syu/carlink/CarLinkService;->h:Ljava/lang/Integer;

    .line 1282
    .line 1283
    if-nez v5, :cond_60

    .line 1284
    .line 1285
    goto :goto_2d

    .line 1286
    :cond_60
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1287
    .line 1288
    .line 1289
    move-result v5

    .line 1290
    if-eq v2, v5, :cond_b3

    .line 1291
    .line 1292
    :goto_2d
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1293
    .line 1294
    const-string v6, "===================>>  exit appid: "

    .line 1295
    .line 1296
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1297
    .line 1298
    .line 1299
    iget-object v6, v0, Lcom/syu/carlink/CarLinkService;->h:Ljava/lang/Integer;

    .line 1300
    .line 1301
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1302
    .line 1303
    .line 1304
    const/16 v6, 0x20

    .line 1305
    .line 1306
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1307
    .line 1308
    .line 1309
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v6

    .line 1313
    invoke-virtual {v6}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v6

    .line 1317
    invoke-virtual {v6}, Lg/b;->b()Z

    .line 1318
    .line 1319
    .line 1320
    move-result v6

    .line 1321
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1322
    .line 1323
    .line 1324
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v5

    .line 1328
    invoke-static {v4, v5}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    .line 1330
    .line 1331
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v4

    .line 1335
    iput-object v4, v0, Lcom/syu/carlink/CarLinkService;->h:Ljava/lang/Integer;

    .line 1336
    .line 1337
    invoke-virtual/range {p0 .. p0}, Lcom/syu/carlink/CarLinkService;->p()Landroid/os/Handler;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v4

    .line 1341
    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1342
    .line 1343
    .line 1344
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v3

    .line 1348
    invoke-virtual {v3}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v3

    .line 1352
    invoke-virtual {v3}, Lg/b;->b()Z

    .line 1353
    .line 1354
    .line 1355
    move-result v3

    .line 1356
    if-nez v3, :cond_62

    .line 1357
    .line 1358
    invoke-static {}, Lcom/syu/carlink/CarLinkService;->s()Z

    .line 1359
    .line 1360
    .line 1361
    move-result v3

    .line 1362
    if-nez v3, :cond_62

    .line 1363
    .line 1364
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v3

    .line 1368
    invoke-virtual {v3}, Lcom/syu/carlink/CarLink;->A()Z

    .line 1369
    .line 1370
    .line 1371
    move-result v3

    .line 1372
    if-nez v3, :cond_62

    .line 1373
    .line 1374
    const/16 v3, 0x9

    .line 1375
    .line 1376
    if-eq v2, v3, :cond_61

    .line 1377
    .line 1378
    const/16 v3, 0x8

    .line 1379
    .line 1380
    if-eq v2, v3, :cond_61

    .line 1381
    .line 1382
    goto :goto_2e

    .line 1383
    :cond_61
    return-void

    .line 1384
    :cond_62
    :goto_2e
    const/16 v3, 0xa

    .line 1385
    .line 1386
    if-eq v2, v3, :cond_63

    .line 1387
    .line 1388
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v4

    .line 1392
    invoke-virtual {v4}, Lcom/syu/carlink/CarLink;->p()Z

    .line 1393
    .line 1394
    .line 1395
    move-result v4

    .line 1396
    if-eqz v4, :cond_63

    .line 1397
    .line 1398
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v4

    .line 1402
    invoke-virtual {v4}, Lcom/syu/carlink/CarLink;->t()Z

    .line 1403
    .line 1404
    .line 1405
    move-result v4

    .line 1406
    if-eqz v4, :cond_63

    .line 1407
    .line 1408
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v4

    .line 1412
    invoke-virtual {v4}, Lcom/syu/carlink/CarLink;->o()Z

    .line 1413
    .line 1414
    .line 1415
    move-result v4

    .line 1416
    if-nez v4, :cond_63

    .line 1417
    .line 1418
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v4

    .line 1422
    invoke-virtual {v4}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v4

    .line 1426
    if-eqz v4, :cond_63

    .line 1427
    .line 1428
    iget-object v4, v4, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 1429
    .line 1430
    if-eqz v4, :cond_63

    .line 1431
    .line 1432
    invoke-virtual {v4, v8}, Lh/c;->j(Z)V

    .line 1433
    .line 1434
    .line 1435
    :cond_63
    if-eq v2, v3, :cond_65

    .line 1436
    .line 1437
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v3

    .line 1441
    invoke-virtual {v3}, Lcom/syu/carlink/CarLink;->l()Z

    .line 1442
    .line 1443
    .line 1444
    move-result v3

    .line 1445
    if-eqz v3, :cond_65

    .line 1446
    .line 1447
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v3

    .line 1451
    invoke-virtual {v3}, Lcom/syu/carlink/CarLink;->c()I

    .line 1452
    .line 1453
    .line 1454
    move-result v3

    .line 1455
    const/4 v4, 0x3

    .line 1456
    if-eq v3, v4, :cond_65

    .line 1457
    .line 1458
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v3

    .line 1462
    invoke-virtual {v3}, Lcom/syu/carlink/CarLink;->c()I

    .line 1463
    .line 1464
    .line 1465
    move-result v3

    .line 1466
    const/4 v4, 0x4

    .line 1467
    if-eq v3, v4, :cond_65

    .line 1468
    .line 1469
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 1470
    .line 1471
    .line 1472
    move-result-object v3

    .line 1473
    invoke-virtual {v3}, Lcom/syu/carlink/CarLink;->c()I

    .line 1474
    .line 1475
    .line 1476
    move-result v3

    .line 1477
    if-eq v3, v4, :cond_65

    .line 1478
    .line 1479
    sget-object v3, Lf/k;->y:Lf/k;

    .line 1480
    .line 1481
    invoke-virtual {v3, v1}, Lf/k;->j(I)V

    .line 1482
    .line 1483
    .line 1484
    if-eq v2, v4, :cond_64

    .line 1485
    .line 1486
    const/4 v1, 0x5

    .line 1487
    if-eq v2, v1, :cond_64

    .line 1488
    .line 1489
    goto :goto_2f

    .line 1490
    :cond_64
    sget-object v1, Lf/k;->y:Lf/k;

    .line 1491
    .line 1492
    invoke-virtual {v1}, Lf/k;->c()V

    .line 1493
    .line 1494
    .line 1495
    :cond_65
    :goto_2f
    return-void

    .line 1496
    :cond_66
    :goto_30
    if-nez v10, :cond_67

    .line 1497
    .line 1498
    goto :goto_33

    .line 1499
    :cond_67
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 1500
    .line 1501
    .line 1502
    move-result v6

    .line 1503
    const/4 v7, 0x1

    .line 1504
    if-ne v6, v7, :cond_6c

    .line 1505
    .line 1506
    if-eqz v11, :cond_68

    .line 1507
    .line 1508
    array-length v1, v11

    .line 1509
    if-lez v1, :cond_68

    .line 1510
    .line 1511
    move v1, v7

    .line 1512
    goto :goto_31

    .line 1513
    :cond_68
    move v1, v8

    .line 1514
    :goto_31
    if-eqz v1, :cond_b3

    .line 1515
    .line 1516
    invoke-static {v11}, Lt/b;->e(Ljava/lang/Object;)V

    .line 1517
    .line 1518
    .line 1519
    aget v1, v11, v8

    .line 1520
    .line 1521
    if-ne v1, v7, :cond_69

    .line 1522
    .line 1523
    const/4 v1, 0x1

    .line 1524
    goto :goto_32

    .line 1525
    :cond_69
    move v1, v8

    .line 1526
    :goto_32
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 1527
    .line 1528
    if-eqz v2, :cond_6b

    .line 1529
    .line 1530
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->v()Z

    .line 1531
    .line 1532
    .line 1533
    move-result v2

    .line 1534
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1535
    .line 1536
    const-string v4, "============>> MCUON "

    .line 1537
    .line 1538
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1539
    .line 1540
    .line 1541
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1542
    .line 1543
    .line 1544
    const-string v4, "   to State : "

    .line 1545
    .line 1546
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    .line 1548
    .line 1549
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1550
    .line 1551
    .line 1552
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v3

    .line 1556
    const-string v4, "Usb"

    .line 1557
    .line 1558
    invoke-static {v4, v3}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    .line 1560
    .line 1561
    if-eq v2, v1, :cond_b3

    .line 1562
    .line 1563
    iput v8, v0, Lcom/syu/carlink/CarLinkService;->n:I

    .line 1564
    .line 1565
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 1566
    .line 1567
    if-eqz v2, :cond_6a

    .line 1568
    .line 1569
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 1570
    .line 1571
    .line 1572
    move-result-object v2

    .line 1573
    iget-object v2, v2, Lg/b;->d:Landroidx/lifecycle/MutableLiveData;

    .line 1574
    .line 1575
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1576
    .line 1577
    .line 1578
    move-result-object v1

    .line 1579
    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1580
    .line 1581
    .line 1582
    goto/16 :goto_4e

    .line 1583
    .line 1584
    :cond_6a
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 1585
    .line 1586
    .line 1587
    const/4 v1, 0x0

    .line 1588
    throw v1

    .line 1589
    :cond_6b
    const/4 v1, 0x0

    .line 1590
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 1591
    .line 1592
    .line 1593
    throw v1

    .line 1594
    :cond_6c
    :goto_33
    if-nez v10, :cond_6d

    .line 1595
    .line 1596
    goto :goto_35

    .line 1597
    :cond_6d
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 1598
    .line 1599
    .line 1600
    move-result v6

    .line 1601
    const/16 v7, 0x32

    .line 1602
    .line 1603
    if-ne v6, v7, :cond_72

    .line 1604
    .line 1605
    if-eqz v11, :cond_6e

    .line 1606
    .line 1607
    array-length v1, v11

    .line 1608
    if-lez v1, :cond_6e

    .line 1609
    .line 1610
    const/4 v1, 0x1

    .line 1611
    goto :goto_34

    .line 1612
    :cond_6e
    move v1, v8

    .line 1613
    :goto_34
    if-eqz v1, :cond_b3

    .line 1614
    .line 1615
    invoke-static {v11}, Lt/b;->e(Ljava/lang/Object;)V

    .line 1616
    .line 1617
    .line 1618
    aget v1, v11, v8

    .line 1619
    .line 1620
    const/4 v2, 0x1

    .line 1621
    if-ne v1, v2, :cond_6f

    .line 1622
    .line 1623
    const/4 v8, 0x1

    .line 1624
    :cond_6f
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 1625
    .line 1626
    if-eqz v1, :cond_71

    .line 1627
    .line 1628
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 1629
    .line 1630
    .line 1631
    move-result-object v1

    .line 1632
    iget-object v1, v1, Lg/b;->f:Landroidx/lifecycle/MutableLiveData;

    .line 1633
    .line 1634
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 1635
    .line 1636
    .line 1637
    move-result-object v1

    .line 1638
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1639
    .line 1640
    invoke-static {v1, v2}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1641
    .line 1642
    .line 1643
    move-result v1

    .line 1644
    if-eq v1, v8, :cond_b3

    .line 1645
    .line 1646
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 1647
    .line 1648
    if-eqz v1, :cond_70

    .line 1649
    .line 1650
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 1651
    .line 1652
    .line 1653
    move-result-object v1

    .line 1654
    iget-object v1, v1, Lg/b;->f:Landroidx/lifecycle/MutableLiveData;

    .line 1655
    .line 1656
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1657
    .line 1658
    .line 1659
    move-result-object v2

    .line 1660
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1661
    .line 1662
    .line 1663
    goto/16 :goto_4e

    .line 1664
    .line 1665
    :cond_70
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 1666
    .line 1667
    .line 1668
    const/4 v1, 0x0

    .line 1669
    throw v1

    .line 1670
    :cond_71
    const/4 v1, 0x0

    .line 1671
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 1672
    .line 1673
    .line 1674
    throw v1

    .line 1675
    :cond_72
    :goto_35
    if-nez v10, :cond_73

    .line 1676
    .line 1677
    goto :goto_37

    .line 1678
    :cond_73
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 1679
    .line 1680
    .line 1681
    move-result v6

    .line 1682
    const/16 v7, 0x2b

    .line 1683
    .line 1684
    if-ne v6, v7, :cond_78

    .line 1685
    .line 1686
    if-eqz v11, :cond_74

    .line 1687
    .line 1688
    array-length v1, v11

    .line 1689
    if-lez v1, :cond_74

    .line 1690
    .line 1691
    const/4 v1, 0x1

    .line 1692
    goto :goto_36

    .line 1693
    :cond_74
    move v1, v8

    .line 1694
    :goto_36
    if-eqz v1, :cond_b3

    .line 1695
    .line 1696
    invoke-static {v11}, Lt/b;->e(Ljava/lang/Object;)V

    .line 1697
    .line 1698
    .line 1699
    aget v1, v11, v8

    .line 1700
    .line 1701
    const/4 v2, 0x1

    .line 1702
    if-ne v1, v2, :cond_75

    .line 1703
    .line 1704
    const/4 v8, 0x1

    .line 1705
    :cond_75
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 1706
    .line 1707
    if-eqz v1, :cond_77

    .line 1708
    .line 1709
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->x()Z

    .line 1710
    .line 1711
    .line 1712
    move-result v1

    .line 1713
    if-eq v8, v1, :cond_b3

    .line 1714
    .line 1715
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 1716
    .line 1717
    if-eqz v1, :cond_76

    .line 1718
    .line 1719
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 1720
    .line 1721
    .line 1722
    move-result-object v1

    .line 1723
    iget-object v1, v1, Lg/b;->g:Landroidx/lifecycle/MutableLiveData;

    .line 1724
    .line 1725
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1726
    .line 1727
    .line 1728
    move-result-object v2

    .line 1729
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1730
    .line 1731
    .line 1732
    if-nez v8, :cond_b3

    .line 1733
    .line 1734
    sget-object v1, Lcom/syu/carlink/base/a;->c:Ls/a;

    .line 1735
    .line 1736
    invoke-static {}, Le/b;->a()Lcom/syu/carlink/base/a;

    .line 1737
    .line 1738
    .line 1739
    move-result-object v1

    .line 1740
    new-instance v9, Lg/a;

    .line 1741
    .line 1742
    const/4 v3, 0x1

    .line 1743
    const/4 v4, 0x0

    .line 1744
    const/4 v5, 0x2

    .line 1745
    const/4 v6, 0x0

    .line 1746
    const/4 v7, 0x0

    .line 1747
    const/16 v8, 0x18

    .line 1748
    .line 1749
    move-object v2, v9

    .line 1750
    invoke-direct/range {v2 .. v8}, Lg/a;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1751
    .line 1752
    .line 1753
    invoke-virtual {v1, v9}, Lcom/syu/carlink/base/a;->b(Lg/a;)V

    .line 1754
    .line 1755
    .line 1756
    goto/16 :goto_4e

    .line 1757
    .line 1758
    :cond_76
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 1759
    .line 1760
    .line 1761
    const/4 v1, 0x0

    .line 1762
    throw v1

    .line 1763
    :cond_77
    const/4 v1, 0x0

    .line 1764
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 1765
    .line 1766
    .line 1767
    throw v1

    .line 1768
    :cond_78
    :goto_37
    if-nez v10, :cond_79

    .line 1769
    .line 1770
    goto :goto_39

    .line 1771
    :cond_79
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 1772
    .line 1773
    .line 1774
    move-result v6

    .line 1775
    const/4 v7, 0x4

    .line 1776
    if-ne v6, v7, :cond_7e

    .line 1777
    .line 1778
    if-eqz v11, :cond_7a

    .line 1779
    .line 1780
    array-length v1, v11

    .line 1781
    if-lez v1, :cond_7a

    .line 1782
    .line 1783
    const/4 v1, 0x1

    .line 1784
    goto :goto_38

    .line 1785
    :cond_7a
    move v1, v8

    .line 1786
    :goto_38
    if-eqz v1, :cond_b3

    .line 1787
    .line 1788
    invoke-static {v11}, Lt/b;->e(Ljava/lang/Object;)V

    .line 1789
    .line 1790
    .line 1791
    aget v1, v11, v8

    .line 1792
    .line 1793
    const/4 v2, 0x1

    .line 1794
    if-ne v1, v2, :cond_7b

    .line 1795
    .line 1796
    const/4 v8, 0x1

    .line 1797
    :cond_7b
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 1798
    .line 1799
    if-eqz v1, :cond_7d

    .line 1800
    .line 1801
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->u()Z

    .line 1802
    .line 1803
    .line 1804
    move-result v1

    .line 1805
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1806
    .line 1807
    const-string v3, "===================>>  isNightMode last: "

    .line 1808
    .line 1809
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1810
    .line 1811
    .line 1812
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1813
    .line 1814
    .line 1815
    const-string v3, " to : "

    .line 1816
    .line 1817
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1818
    .line 1819
    .line 1820
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1821
    .line 1822
    .line 1823
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v2

    .line 1827
    invoke-static {v4, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    .line 1829
    .line 1830
    if-eq v8, v1, :cond_b3

    .line 1831
    .line 1832
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 1833
    .line 1834
    if-eqz v1, :cond_7c

    .line 1835
    .line 1836
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 1837
    .line 1838
    .line 1839
    move-result-object v1

    .line 1840
    iget-object v1, v1, Lg/b;->h:Landroidx/lifecycle/MutableLiveData;

    .line 1841
    .line 1842
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1843
    .line 1844
    .line 1845
    move-result-object v2

    .line 1846
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1847
    .line 1848
    .line 1849
    goto/16 :goto_4e

    .line 1850
    .line 1851
    :cond_7c
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 1852
    .line 1853
    .line 1854
    const/4 v1, 0x0

    .line 1855
    throw v1

    .line 1856
    :cond_7d
    const/4 v1, 0x0

    .line 1857
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 1858
    .line 1859
    .line 1860
    throw v1

    .line 1861
    :cond_7e
    :goto_39
    const/16 v6, 0x100a

    .line 1862
    .line 1863
    const/16 v7, 0x1009

    .line 1864
    .line 1865
    const/16 v9, 0x100b

    .line 1866
    .line 1867
    if-nez v10, :cond_7f

    .line 1868
    .line 1869
    goto/16 :goto_3c

    .line 1870
    .line 1871
    :cond_7f
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 1872
    .line 1873
    .line 1874
    move-result v12

    .line 1875
    const/16 v13, 0x85

    .line 1876
    .line 1877
    if-ne v12, v13, :cond_8d

    .line 1878
    .line 1879
    if-eqz v11, :cond_80

    .line 1880
    .line 1881
    array-length v2, v11

    .line 1882
    if-lez v2, :cond_80

    .line 1883
    .line 1884
    const/4 v2, 0x1

    .line 1885
    goto :goto_3a

    .line 1886
    :cond_80
    move v2, v8

    .line 1887
    :goto_3a
    if-eqz v2, :cond_b3

    .line 1888
    .line 1889
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1890
    .line 1891
    const-string v3, "   TO UI  ======>>>  "

    .line 1892
    .line 1893
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1894
    .line 1895
    .line 1896
    invoke-static {v11}, Lt/b;->e(Ljava/lang/Object;)V

    .line 1897
    .line 1898
    .line 1899
    aget v3, v11, v8

    .line 1900
    .line 1901
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1902
    .line 1903
    .line 1904
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1905
    .line 1906
    .line 1907
    move-result-object v2

    .line 1908
    invoke-static {v4, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    .line 1910
    .line 1911
    invoke-static {v11}, Lt/b;->e(Ljava/lang/Object;)V

    .line 1912
    .line 1913
    .line 1914
    aget v2, v11, v8

    .line 1915
    .line 1916
    const/4 v3, 0x5

    .line 1917
    if-eq v2, v3, :cond_8b

    .line 1918
    .line 1919
    const/4 v3, 0x6

    .line 1920
    if-eq v2, v3, :cond_8a

    .line 1921
    .line 1922
    const/16 v3, 0x55

    .line 1923
    .line 1924
    if-eq v2, v3, :cond_89

    .line 1925
    .line 1926
    const/16 v3, 0x223

    .line 1927
    .line 1928
    if-eq v2, v3, :cond_88

    .line 1929
    .line 1930
    const/16 v3, 0x57

    .line 1931
    .line 1932
    if-eq v2, v3, :cond_87

    .line 1933
    .line 1934
    const/16 v3, 0x58

    .line 1935
    .line 1936
    if-eq v2, v3, :cond_86

    .line 1937
    .line 1938
    const/16 v3, 0x7e

    .line 1939
    .line 1940
    if-eq v2, v3, :cond_85

    .line 1941
    .line 1942
    if-eq v2, v1, :cond_84

    .line 1943
    .line 1944
    const/16 v1, 0x226

    .line 1945
    .line 1946
    if-eq v2, v1, :cond_83

    .line 1947
    .line 1948
    const/16 v1, 0x227

    .line 1949
    .line 1950
    if-eq v2, v1, :cond_8c

    .line 1951
    .line 1952
    const/16 v1, 0x24b

    .line 1953
    .line 1954
    if-eq v2, v1, :cond_82

    .line 1955
    .line 1956
    const/16 v1, 0x24c

    .line 1957
    .line 1958
    if-eq v2, v1, :cond_81

    .line 1959
    .line 1960
    packed-switch v2, :pswitch_data_0

    .line 1961
    .line 1962
    .line 1963
    const v6, -0xffff

    .line 1964
    .line 1965
    .line 1966
    goto :goto_3b

    .line 1967
    :pswitch_0
    const/16 v6, 0x1005

    .line 1968
    .line 1969
    goto :goto_3b

    .line 1970
    :pswitch_1
    const/16 v6, 0x100c

    .line 1971
    .line 1972
    goto :goto_3b

    .line 1973
    :pswitch_2
    const/16 v6, 0x100d

    .line 1974
    .line 1975
    goto :goto_3b

    .line 1976
    :cond_81
    const/16 v6, 0x100e

    .line 1977
    .line 1978
    goto :goto_3b

    .line 1979
    :cond_82
    const/16 v6, 0x100f

    .line 1980
    .line 1981
    goto :goto_3b

    .line 1982
    :cond_83
    move v6, v7

    .line 1983
    goto :goto_3b

    .line 1984
    :cond_84
    const/16 v6, 0x1007

    .line 1985
    .line 1986
    goto :goto_3b

    .line 1987
    :cond_85
    const/16 v6, 0x1006

    .line 1988
    .line 1989
    goto :goto_3b

    .line 1990
    :cond_86
    const/16 v6, 0x1002

    .line 1991
    .line 1992
    goto :goto_3b

    .line 1993
    :cond_87
    const/16 v6, 0x1001

    .line 1994
    .line 1995
    goto :goto_3b

    .line 1996
    :cond_88
    move v6, v9

    .line 1997
    goto :goto_3b

    .line 1998
    :cond_89
    const/16 v6, 0x1008

    .line 1999
    .line 2000
    goto :goto_3b

    .line 2001
    :cond_8a
    const/16 v6, 0x1004

    .line 2002
    .line 2003
    goto :goto_3b

    .line 2004
    :cond_8b
    const/16 v6, 0x1003

    .line 2005
    .line 2006
    :cond_8c
    :goto_3b
    invoke-virtual/range {p0 .. p0}, Lcom/syu/carlink/CarLinkService;->n()Lg/d;

    .line 2007
    .line 2008
    .line 2009
    move-result-object v1

    .line 2010
    invoke-virtual {v1, v6}, Lg/d;->a(I)V

    .line 2011
    .line 2012
    .line 2013
    goto/16 :goto_4e

    .line 2014
    .line 2015
    :cond_8d
    :goto_3c
    if-nez v10, :cond_8e

    .line 2016
    .line 2017
    goto/16 :goto_40

    .line 2018
    .line 2019
    :cond_8e
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 2020
    .line 2021
    .line 2022
    move-result v1

    .line 2023
    const/16 v12, 0x8a

    .line 2024
    .line 2025
    if-ne v1, v12, :cond_98

    .line 2026
    .line 2027
    if-eqz v2, :cond_8f

    .line 2028
    .line 2029
    array-length v1, v2

    .line 2030
    if-lez v1, :cond_8f

    .line 2031
    .line 2032
    const/4 v1, 0x1

    .line 2033
    goto :goto_3d

    .line 2034
    :cond_8f
    move v1, v8

    .line 2035
    :goto_3d
    if-eqz v1, :cond_b3

    .line 2036
    .line 2037
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 2038
    .line 2039
    if-eqz v1, :cond_97

    .line 2040
    .line 2041
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 2042
    .line 2043
    .line 2044
    move-result-object v1

    .line 2045
    iget-object v1, v1, Lg/b;->q:Landroidx/lifecycle/MutableLiveData;

    .line 2046
    .line 2047
    invoke-static {v2}, Lt/b;->e(Ljava/lang/Object;)V

    .line 2048
    .line 2049
    .line 2050
    aget-object v4, v2, v8

    .line 2051
    .line 2052
    invoke-virtual {v1, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 2053
    .line 2054
    .line 2055
    invoke-static {v2}, Lt/b;->e(Ljava/lang/Object;)V

    .line 2056
    .line 2057
    .line 2058
    aget-object v1, v2, v8

    .line 2059
    .line 2060
    sget-object v4, Lcom/syu/carlink/CarLinkService;->n0:Ljava/util/ArrayList;

    .line 2061
    .line 2062
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 2063
    .line 2064
    .line 2065
    move-result v1

    .line 2066
    if-nez v1, :cond_92

    .line 2067
    .line 2068
    invoke-static {v2}, Lt/b;->e(Ljava/lang/Object;)V

    .line 2069
    .line 2070
    .line 2071
    aget-object v2, v2, v8

    .line 2072
    .line 2073
    sget-object v4, Lcom/syu/carlink/CarLinkService;->o0:Ljava/util/ArrayList;

    .line 2074
    .line 2075
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 2076
    .line 2077
    .line 2078
    move-result v2

    .line 2079
    if-eqz v2, :cond_92

    .line 2080
    .line 2081
    invoke-static {}, Lcom/syu/carlink/CarLinkService;->s()Z

    .line 2082
    .line 2083
    .line 2084
    move-result v1

    .line 2085
    if-nez v1, :cond_91

    .line 2086
    .line 2087
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 2088
    .line 2089
    if-eqz v1, :cond_90

    .line 2090
    .line 2091
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->A()Z

    .line 2092
    .line 2093
    .line 2094
    move-result v1

    .line 2095
    if-nez v1, :cond_91

    .line 2096
    .line 2097
    const/4 v8, 0x1

    .line 2098
    goto :goto_3e

    .line 2099
    :cond_90
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 2100
    .line 2101
    .line 2102
    const/4 v1, 0x0

    .line 2103
    throw v1

    .line 2104
    :cond_91
    :goto_3e
    move v1, v8

    .line 2105
    :cond_92
    if-nez v1, :cond_93

    .line 2106
    .line 2107
    return-void

    .line 2108
    :cond_93
    invoke-virtual/range {p0 .. p0}, Lcom/syu/carlink/CarLinkService;->p()Landroid/os/Handler;

    .line 2109
    .line 2110
    .line 2111
    move-result-object v1

    .line 2112
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2113
    .line 2114
    .line 2115
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 2116
    .line 2117
    if-eqz v1, :cond_96

    .line 2118
    .line 2119
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->p()Z

    .line 2120
    .line 2121
    .line 2122
    move-result v1

    .line 2123
    if-nez v1, :cond_95

    .line 2124
    .line 2125
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 2126
    .line 2127
    if-eqz v1, :cond_94

    .line 2128
    .line 2129
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->l()Z

    .line 2130
    .line 2131
    .line 2132
    move-result v1

    .line 2133
    if-eqz v1, :cond_b3

    .line 2134
    .line 2135
    goto :goto_3f

    .line 2136
    :cond_94
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 2137
    .line 2138
    .line 2139
    const/4 v1, 0x0

    .line 2140
    throw v1

    .line 2141
    :cond_95
    :goto_3f
    invoke-virtual/range {p0 .. p0}, Lcom/syu/carlink/CarLinkService;->p()Landroid/os/Handler;

    .line 2142
    .line 2143
    .line 2144
    move-result-object v1

    .line 2145
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2146
    .line 2147
    .line 2148
    goto/16 :goto_4e

    .line 2149
    .line 2150
    :cond_96
    const/4 v1, 0x0

    .line 2151
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 2152
    .line 2153
    .line 2154
    throw v1

    .line 2155
    :cond_97
    const/4 v1, 0x0

    .line 2156
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 2157
    .line 2158
    .line 2159
    throw v1

    .line 2160
    :cond_98
    :goto_40
    if-nez v10, :cond_99

    .line 2161
    .line 2162
    goto :goto_42

    .line 2163
    :cond_99
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 2164
    .line 2165
    .line 2166
    move-result v1

    .line 2167
    const/16 v3, 0x3c

    .line 2168
    .line 2169
    if-ne v1, v3, :cond_9b

    .line 2170
    .line 2171
    if-eqz v11, :cond_9a

    .line 2172
    .line 2173
    array-length v1, v11

    .line 2174
    if-lez v1, :cond_9a

    .line 2175
    .line 2176
    const/4 v1, 0x1

    .line 2177
    goto :goto_41

    .line 2178
    :cond_9a
    move v1, v8

    .line 2179
    :goto_41
    if-eqz v1, :cond_b3

    .line 2180
    .line 2181
    invoke-static {v11}, Lt/b;->e(Ljava/lang/Object;)V

    .line 2182
    .line 2183
    .line 2184
    aget v1, v11, v8

    .line 2185
    .line 2186
    packed-switch v1, :pswitch_data_1

    .line 2187
    .line 2188
    .line 2189
    goto/16 :goto_4e

    .line 2190
    .line 2191
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/syu/carlink/CarLinkService;->n()Lg/d;

    .line 2192
    .line 2193
    .line 2194
    move-result-object v1

    .line 2195
    invoke-virtual {v1, v6}, Lg/d;->a(I)V

    .line 2196
    .line 2197
    .line 2198
    goto/16 :goto_4e

    .line 2199
    .line 2200
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/syu/carlink/CarLinkService;->n()Lg/d;

    .line 2201
    .line 2202
    .line 2203
    move-result-object v1

    .line 2204
    invoke-virtual {v1, v7}, Lg/d;->a(I)V

    .line 2205
    .line 2206
    .line 2207
    goto/16 :goto_4e

    .line 2208
    .line 2209
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/syu/carlink/CarLinkService;->n()Lg/d;

    .line 2210
    .line 2211
    .line 2212
    move-result-object v1

    .line 2213
    invoke-virtual {v1, v9}, Lg/d;->a(I)V

    .line 2214
    .line 2215
    .line 2216
    goto/16 :goto_4e

    .line 2217
    .line 2218
    :cond_9b
    :goto_42
    if-nez v10, :cond_9c

    .line 2219
    .line 2220
    goto/16 :goto_45

    .line 2221
    .line 2222
    :cond_9c
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 2223
    .line 2224
    .line 2225
    move-result v1

    .line 2226
    const/16 v3, 0xa6

    .line 2227
    .line 2228
    if-ne v1, v3, :cond_a2

    .line 2229
    .line 2230
    if-eqz v11, :cond_9d

    .line 2231
    .line 2232
    array-length v1, v11

    .line 2233
    if-lez v1, :cond_9d

    .line 2234
    .line 2235
    const/4 v1, 0x1

    .line 2236
    goto :goto_43

    .line 2237
    :cond_9d
    move v1, v8

    .line 2238
    :goto_43
    if-eqz v1, :cond_b3

    .line 2239
    .line 2240
    invoke-static {v11}, Lt/b;->e(Ljava/lang/Object;)V

    .line 2241
    .line 2242
    .line 2243
    aget v1, v11, v8

    .line 2244
    .line 2245
    const/4 v2, 0x1

    .line 2246
    if-ne v1, v2, :cond_9e

    .line 2247
    .line 2248
    const/4 v1, 0x1

    .line 2249
    goto :goto_44

    .line 2250
    :cond_9e
    move v1, v8

    .line 2251
    :goto_44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2252
    .line 2253
    const-string v3, "FinalMain.Options.CARLINK_WIRELESSED_AUTO_CONN  : "

    .line 2254
    .line 2255
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2256
    .line 2257
    .line 2258
    invoke-static {v11}, Lt/b;->e(Ljava/lang/Object;)V

    .line 2259
    .line 2260
    .line 2261
    aget v3, v11, v8

    .line 2262
    .line 2263
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2264
    .line 2265
    .line 2266
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2267
    .line 2268
    .line 2269
    move-result-object v2

    .line 2270
    invoke-static {v4, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2271
    .line 2272
    .line 2273
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 2274
    .line 2275
    if-eqz v2, :cond_a1

    .line 2276
    .line 2277
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->z()Z

    .line 2278
    .line 2279
    .line 2280
    move-result v2

    .line 2281
    if-eq v1, v2, :cond_b3

    .line 2282
    .line 2283
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 2284
    .line 2285
    if-eqz v2, :cond_a0

    .line 2286
    .line 2287
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 2288
    .line 2289
    .line 2290
    move-result-object v2

    .line 2291
    iget-object v2, v2, Lg/b;->D:Landroidx/lifecycle/MutableLiveData;

    .line 2292
    .line 2293
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2294
    .line 2295
    .line 2296
    move-result-object v3

    .line 2297
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 2298
    .line 2299
    .line 2300
    const/4 v2, 0x2

    .line 2301
    new-array v2, v2, [Ljava/lang/Integer;

    .line 2302
    .line 2303
    const/16 v3, 0x70

    .line 2304
    .line 2305
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2306
    .line 2307
    .line 2308
    move-result-object v3

    .line 2309
    aput-object v3, v2, v8

    .line 2310
    .line 2311
    const/16 v3, 0x8c

    .line 2312
    .line 2313
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2314
    .line 2315
    .line 2316
    move-result-object v3

    .line 2317
    const/4 v6, 0x1

    .line 2318
    aput-object v3, v2, v6

    .line 2319
    .line 2320
    sget-object v3, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 2321
    .line 2322
    if-eqz v3, :cond_9f

    .line 2323
    .line 2324
    invoke-virtual {v3}, Lcom/syu/carlink/CarLink;->h()I

    .line 2325
    .line 2326
    .line 2327
    move-result v3

    .line 2328
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2329
    .line 2330
    .line 2331
    move-result-object v3

    .line 2332
    invoke-static {v2, v3}, Lt/c;->I([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2333
    .line 2334
    .line 2335
    move-result v2

    .line 2336
    if-nez v2, :cond_b3

    .line 2337
    .line 2338
    const-string v2, "=============>>  FinalMain.Options.CARLINK_WIRED_AUTO_CONN TO ON"

    .line 2339
    .line 2340
    invoke-static {v4, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    .line 2342
    .line 2343
    invoke-virtual/range {p0 .. p0}, Lcom/syu/carlink/CarLinkService;->l()Lo/e;

    .line 2344
    .line 2345
    .line 2346
    move-result-object v9

    .line 2347
    const/4 v10, 0x0

    .line 2348
    const/16 v11, 0xa7

    .line 2349
    .line 2350
    const/4 v2, 0x1

    .line 2351
    new-array v12, v2, [I

    .line 2352
    .line 2353
    aput v1, v12, v8

    .line 2354
    .line 2355
    const/4 v13, 0x0

    .line 2356
    const/16 v14, 0x18

    .line 2357
    .line 2358
    invoke-static/range {v9 .. v14}, Lo/e;->b(Lo/e;II[I[Ljava/lang/String;I)V

    .line 2359
    .line 2360
    .line 2361
    goto/16 :goto_4e

    .line 2362
    .line 2363
    :cond_9f
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 2364
    .line 2365
    .line 2366
    const/4 v1, 0x0

    .line 2367
    throw v1

    .line 2368
    :cond_a0
    const/4 v1, 0x0

    .line 2369
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 2370
    .line 2371
    .line 2372
    throw v1

    .line 2373
    :cond_a1
    const/4 v1, 0x0

    .line 2374
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 2375
    .line 2376
    .line 2377
    throw v1

    .line 2378
    :cond_a2
    :goto_45
    if-nez v10, :cond_a3

    .line 2379
    .line 2380
    goto :goto_48

    .line 2381
    :cond_a3
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 2382
    .line 2383
    .line 2384
    move-result v1

    .line 2385
    const/16 v3, 0xa7

    .line 2386
    .line 2387
    if-ne v1, v3, :cond_a8

    .line 2388
    .line 2389
    if-eqz v11, :cond_a4

    .line 2390
    .line 2391
    array-length v1, v11

    .line 2392
    if-lez v1, :cond_a4

    .line 2393
    .line 2394
    const/4 v1, 0x1

    .line 2395
    goto :goto_46

    .line 2396
    :cond_a4
    move v1, v8

    .line 2397
    :goto_46
    if-eqz v1, :cond_b3

    .line 2398
    .line 2399
    invoke-static {v11}, Lt/b;->e(Ljava/lang/Object;)V

    .line 2400
    .line 2401
    .line 2402
    aget v1, v11, v8

    .line 2403
    .line 2404
    const/4 v2, 0x1

    .line 2405
    if-ne v1, v2, :cond_a5

    .line 2406
    .line 2407
    const/4 v1, 0x1

    .line 2408
    goto :goto_47

    .line 2409
    :cond_a5
    move v1, v8

    .line 2410
    :goto_47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2411
    .line 2412
    const-string v3, "FinalMain.Options.CARLINK_WIRED_AUTO_CONN  : "

    .line 2413
    .line 2414
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2415
    .line 2416
    .line 2417
    invoke-static {v11}, Lt/b;->e(Ljava/lang/Object;)V

    .line 2418
    .line 2419
    .line 2420
    aget v3, v11, v8

    .line 2421
    .line 2422
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2423
    .line 2424
    .line 2425
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2426
    .line 2427
    .line 2428
    move-result-object v2

    .line 2429
    invoke-static {v4, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    .line 2431
    .line 2432
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 2433
    .line 2434
    if-eqz v2, :cond_a7

    .line 2435
    .line 2436
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->y()Z

    .line 2437
    .line 2438
    .line 2439
    move-result v2

    .line 2440
    if-eq v1, v2, :cond_b3

    .line 2441
    .line 2442
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 2443
    .line 2444
    if-eqz v2, :cond_a6

    .line 2445
    .line 2446
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 2447
    .line 2448
    .line 2449
    move-result-object v2

    .line 2450
    iget-object v2, v2, Lg/b;->C:Landroidx/lifecycle/MutableLiveData;

    .line 2451
    .line 2452
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2453
    .line 2454
    .line 2455
    move-result-object v1

    .line 2456
    invoke-virtual {v2, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 2457
    .line 2458
    .line 2459
    goto/16 :goto_4e

    .line 2460
    .line 2461
    :cond_a6
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 2462
    .line 2463
    .line 2464
    const/4 v1, 0x0

    .line 2465
    throw v1

    .line 2466
    :cond_a7
    const/4 v1, 0x0

    .line 2467
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 2468
    .line 2469
    .line 2470
    throw v1

    .line 2471
    :cond_a8
    :goto_48
    if-nez v10, :cond_a9

    .line 2472
    .line 2473
    goto :goto_4a

    .line 2474
    :cond_a9
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 2475
    .line 2476
    .line 2477
    move-result v1

    .line 2478
    const/16 v3, 0xa8

    .line 2479
    .line 2480
    if-ne v1, v3, :cond_ad

    .line 2481
    .line 2482
    if-eqz v11, :cond_aa

    .line 2483
    .line 2484
    array-length v1, v11

    .line 2485
    if-lez v1, :cond_aa

    .line 2486
    .line 2487
    const/4 v1, 0x1

    .line 2488
    goto :goto_49

    .line 2489
    :cond_aa
    move v1, v8

    .line 2490
    :goto_49
    if-eqz v1, :cond_b3

    .line 2491
    .line 2492
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2493
    .line 2494
    const-string v2, "=== > FinalMain.Options.SCREEN_ON : "

    .line 2495
    .line 2496
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2497
    .line 2498
    .line 2499
    invoke-static {v11}, Lt/b;->e(Ljava/lang/Object;)V

    .line 2500
    .line 2501
    .line 2502
    aget v2, v11, v8

    .line 2503
    .line 2504
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2505
    .line 2506
    .line 2507
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2508
    .line 2509
    .line 2510
    move-result-object v1

    .line 2511
    invoke-static {v4, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2512
    .line 2513
    .line 2514
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 2515
    .line 2516
    if-eqz v1, :cond_ac

    .line 2517
    .line 2518
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 2519
    .line 2520
    .line 2521
    move-result-object v1

    .line 2522
    iget-object v1, v1, Lg/b;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2523
    .line 2524
    invoke-static {v11}, Lt/b;->e(Ljava/lang/Object;)V

    .line 2525
    .line 2526
    .line 2527
    aget v2, v11, v8

    .line 2528
    .line 2529
    const/4 v3, 0x1

    .line 2530
    if-ne v2, v3, :cond_ab

    .line 2531
    .line 2532
    move v8, v3

    .line 2533
    :cond_ab
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2534
    .line 2535
    .line 2536
    move-result-object v2

    .line 2537
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 2538
    .line 2539
    .line 2540
    goto/16 :goto_4e

    .line 2541
    .line 2542
    :cond_ac
    invoke-static {v5}, Lt/b;->B(Ljava/lang/String;)V

    .line 2543
    .line 2544
    .line 2545
    const/4 v1, 0x0

    .line 2546
    throw v1

    .line 2547
    :cond_ad
    :goto_4a
    const/4 v1, 0x1

    .line 2548
    if-nez v10, :cond_ae

    .line 2549
    .line 2550
    goto :goto_4c

    .line 2551
    :cond_ae
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 2552
    .line 2553
    .line 2554
    move-result v3

    .line 2555
    const/16 v5, 0xba

    .line 2556
    .line 2557
    if-ne v3, v5, :cond_b0

    .line 2558
    .line 2559
    if-eqz v2, :cond_af

    .line 2560
    .line 2561
    array-length v3, v2

    .line 2562
    if-lez v3, :cond_af

    .line 2563
    .line 2564
    goto :goto_4b

    .line 2565
    :cond_af
    move v1, v8

    .line 2566
    :goto_4b
    if-eqz v1, :cond_b3

    .line 2567
    .line 2568
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2569
    .line 2570
    const-string v3, "=== > FinalMain.Options.APP_BE_KILLED : "

    .line 2571
    .line 2572
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2573
    .line 2574
    .line 2575
    invoke-static {v2}, Lt/b;->e(Ljava/lang/Object;)V

    .line 2576
    .line 2577
    .line 2578
    aget-object v3, v2, v8

    .line 2579
    .line 2580
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2581
    .line 2582
    .line 2583
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2584
    .line 2585
    .line 2586
    move-result-object v1

    .line 2587
    invoke-static {v4, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2588
    .line 2589
    .line 2590
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    .line 2591
    .line 2592
    .line 2593
    move-result-object v1

    .line 2594
    invoke-static {v2}, Lt/b;->e(Ljava/lang/Object;)V

    .line 2595
    .line 2596
    .line 2597
    aget-object v2, v2, v8

    .line 2598
    .line 2599
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2600
    .line 2601
    .line 2602
    move-result v1

    .line 2603
    if-eqz v1, :cond_b3

    .line 2604
    .line 2605
    invoke-virtual/range {p0 .. p0}, Lcom/syu/carlink/CarLinkService;->p()Landroid/os/Handler;

    .line 2606
    .line 2607
    .line 2608
    move-result-object v1

    .line 2609
    new-instance v2, Lcom/syu/carlink/a;

    .line 2610
    .line 2611
    const/4 v3, 0x2

    .line 2612
    invoke-direct {v2, v0, v3}, Lcom/syu/carlink/a;-><init>(Lcom/syu/carlink/CarLinkService;I)V

    .line 2613
    .line 2614
    .line 2615
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2616
    .line 2617
    .line 2618
    goto :goto_4e

    .line 2619
    :cond_b0
    :goto_4c
    if-nez v10, :cond_b1

    .line 2620
    .line 2621
    goto :goto_4e

    .line 2622
    :cond_b1
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 2623
    .line 2624
    .line 2625
    move-result v2

    .line 2626
    const/16 v3, 0xc5

    .line 2627
    .line 2628
    if-ne v2, v3, :cond_b3

    .line 2629
    .line 2630
    if-eqz v11, :cond_b2

    .line 2631
    .line 2632
    array-length v2, v11

    .line 2633
    if-lez v2, :cond_b2

    .line 2634
    .line 2635
    goto :goto_4d

    .line 2636
    :cond_b2
    move v1, v8

    .line 2637
    :goto_4d
    if-eqz v1, :cond_b3

    .line 2638
    .line 2639
    invoke-static {}, Lcom/syu/carlink/CarLinkService;->m()Lcom/syu/carlink/CarLink;

    .line 2640
    .line 2641
    .line 2642
    move-result-object v1

    .line 2643
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 2644
    .line 2645
    .line 2646
    move-result-object v1

    .line 2647
    iget-object v1, v1, Lg/b;->J:Landroidx/lifecycle/MutableLiveData;

    .line 2648
    .line 2649
    invoke-static {v11}, Lt/b;->e(Ljava/lang/Object;)V

    .line 2650
    .line 2651
    .line 2652
    aget v2, v11, v8

    .line 2653
    .line 2654
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2655
    .line 2656
    .line 2657
    move-result-object v2

    .line 2658
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 2659
    .line 2660
    .line 2661
    :cond_b3
    :goto_4e
    return-void

    .line 2662
    nop

    :pswitch_data_0
    .packed-switch 0x23e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "com.syu.carlink.disconnect"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/syu/carlink/CarLinkService;->e()V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    const-string v2, "me"

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->p()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-static {v0}, Lh/c;->i(Lh/c;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->l()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    sget-object v0, Lf/k;->y:Lf/k;

    .line 50
    .line 51
    iget-object v0, v0, Lf/k;->k:Lf/g;

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    check-cast v0, Lcom/syu/carlink/MainActivity;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/syu/carlink/MainActivity;->e()Lcom/syu/carlink/auto/AutoFragment;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/syu/carlink/auto/AutoFragment;->g()V

    .line 62
    .line 63
    .line 64
    sget-object v0, Lf/k;->y:Lf/k;

    .line 65
    .line 66
    const-wide/16 v1, 0xa

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Lf/k;->e(J)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v1

    .line 76
    :cond_2
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v1

    .line 80
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/lifecycle/LifecycleService;->onStartCommand(Landroid/content/Intent;II)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    return p1
.end method

.method public final p()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/syu/carlink/CarLinkService;->j:Ls/a;

    invoke-interface {v0}, Ls/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public final q(IIILz/l;)V
    .locals 12

    .line 1
    move-object v7, p0

    .line 2
    move v1, p1

    .line 3
    move v2, p2

    .line 4
    if-eqz v1, :cond_b

    .line 5
    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    goto/16 :goto_3

    .line 9
    .line 10
    :cond_0
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const-string v4, "me"

    .line 14
    .line 15
    if-eqz v0, :cond_a

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->p()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v8, 0x0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    iget-object v0, v7, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-static {v0}, Lh/c;->i(Lh/c;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, v7, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    new-array v5, v8, [I

    .line 36
    .line 37
    const/16 v6, 0xdc

    .line 38
    .line 39
    invoke-virtual {v0, v6, v3, v5}, Lh/c;->n(I[Ljava/lang/String;[I)Z

    .line 40
    .line 41
    .line 42
    :cond_2
    const-wide/16 v5, 0x64

    .line 43
    .line 44
    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    move-object v5, v0

    .line 50
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v5, "initRunner size: "

    .line 56
    .line 57
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "  "

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v9, "HDL"

    .line 76
    .line 77
    invoke-static {v9, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 v0, 0x2

    .line 81
    new-array v0, v0, [Ljava/lang/Object;

    .line 82
    .line 83
    const-string v1, "sys.syu.carlink.logo_label"

    .line 84
    .line 85
    aput-object v1, v0, v8

    .line 86
    .line 87
    const/4 v10, 0x1

    .line 88
    const-string v1, ""

    .line 89
    .line 90
    aput-object v1, v0, v10

    .line 91
    .line 92
    const-string v2, "android.os.SystemProperties"

    .line 93
    .line 94
    const-string v5, "get"

    .line 95
    .line 96
    invoke-static {v2, v3, v5, v0}, Lp/a;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-string v2, "invoke(\"android.os.Syste\u2026erties\", \"get\", key, def)"

    .line 101
    .line 102
    invoke-static {v0, v2}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    check-cast v0, Ljava/lang/String;

    .line 106
    .line 107
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 108
    .line 109
    if-eqz v2, :cond_9

    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->k()Lp/b;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    sget v4, Le/m;->a:I

    .line 116
    .line 117
    iget-object v2, v2, Lp/b;->b:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v2, Landroid/content/SharedPreferences;

    .line 120
    .line 121
    const-string v5, "fps"

    .line 122
    .line 123
    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    move v2, p3

    .line 128
    if-ne v2, v10, :cond_4

    .line 129
    .line 130
    move v5, v10

    .line 131
    goto :goto_1

    .line 132
    :cond_4
    move v5, v8

    .line 133
    :goto_1
    invoke-static {v0, v1}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_5

    .line 138
    .line 139
    move-object v0, v3

    .line 140
    :cond_5
    const-string v1, "=================>>> Carplay setup 00"

    .line 141
    .line 142
    invoke-static {v9, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    new-instance v11, Le/k;

    .line 146
    .line 147
    move-object v1, v11

    .line 148
    move-object v2, p0

    .line 149
    move v3, v4

    .line 150
    move v4, v5

    .line 151
    move-object v5, v0

    .line 152
    move-object/from16 v6, p4

    .line 153
    .line 154
    invoke-direct/range {v1 .. v6}, Le/k;-><init>(Lcom/syu/carlink/CarLinkService;IILjava/lang/String;Lz/l;)V

    .line 155
    .line 156
    .line 157
    const-string v0, "=================>>> Carplay setup 11"

    .line 158
    .line 159
    invoke-static {v9, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v0, v7, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 163
    .line 164
    if-nez v0, :cond_6

    .line 165
    .line 166
    new-instance v0, Lh/c;

    .line 167
    .line 168
    invoke-direct {v0, v11}, Lh/c;-><init>(Le/k;)V

    .line 169
    .line 170
    .line 171
    iput-object v0, v7, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_6
    iget-object v1, v0, Lh/c;->j:Landroid/os/IBinder;

    .line 175
    .line 176
    if-eqz v1, :cond_7

    .line 177
    .line 178
    move v8, v10

    .line 179
    :cond_7
    if-eqz v8, :cond_8

    .line 180
    .line 181
    invoke-virtual {v11, v0}, Le/k;->a(Lh/c;)V

    .line 182
    .line 183
    .line 184
    :cond_8
    :goto_2
    return-void

    .line 185
    :cond_9
    invoke-static {v4}, Lt/b;->B(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v3

    .line 189
    :cond_a
    invoke-static {v4}, Lt/b;->B(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw v3

    .line 193
    :cond_b
    :goto_3
    return-void
.end method

.method public final r()V
    .locals 1

    .line 1
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, v0, Lcom/syu/carlink/CarLink;->g:Ls/a;

    .line 6
    .line 7
    invoke-interface {v0}, Ls/a;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/syu/carlink/CarLinkService;->z:Lh/i;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    new-instance v0, Lh/i;

    .line 25
    .line 26
    invoke-direct {v0}, Lh/i;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lh/i;->start()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/syu/carlink/CarLinkService;->z:Lh/i;

    .line 33
    .line 34
    :cond_1
    return-void

    .line 35
    :cond_2
    const-string v0, "me"

    .line 36
    .line 37
    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    throw v0
.end method

.method public final t(Lg/e;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLinkService;->n()Lg/d;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/syu/carlink/CarLinkService;->n()Lg/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object p1, v0, Lg/d;->b:Lg/e;

    .line 9
    .line 10
    return-void
.end method

.method public final u(Lo/b;)V
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-boolean v1, v6, Lcom/syu/carlink/CarLinkService;->b:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    const-string v8, "me"

    .line 14
    .line 15
    if-eqz v1, :cond_2c

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 18
    .line 19
    .line 20
    move-result-object v9

    .line 21
    iget-object v1, v0, Lo/b;->b:Ljava/lang/Integer;

    .line 22
    .line 23
    const/4 v10, 0x1

    .line 24
    const/4 v11, 0x0

    .line 25
    iget-object v12, v0, Lo/b;->c:[I

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/16 v3, 0x1f

    .line 35
    .line 36
    if-ne v2, v3, :cond_5

    .line 37
    .line 38
    invoke-static {v12}, Lt/b;->e(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v12}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "toString(this)"

    .line 46
    .line 47
    invoke-static {v0, v1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v1, "=== > FinalMain.Options.U_BT_POWER_ON : "

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "HDL"

    .line 57
    .line 58
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    array-length v0, v12

    .line 62
    if-lez v0, :cond_2

    .line 63
    .line 64
    move v0, v10

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    move v0, v11

    .line 67
    :goto_0
    if-eqz v0, :cond_2b

    .line 68
    .line 69
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v0, v0, Lg/b;->i:Landroidx/lifecycle/MutableLiveData;

    .line 78
    .line 79
    aget v1, v12, v11

    .line 80
    .line 81
    if-ne v1, v10, :cond_3

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move v10, v11

    .line 85
    :goto_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_18

    .line 93
    .line 94
    :cond_4
    invoke-static {v8}, Lt/b;->B(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v7

    .line 98
    :cond_5
    :goto_2
    iget-object v13, v0, Lo/b;->e:[Ljava/lang/String;

    .line 99
    .line 100
    if-nez v1, :cond_6

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    const/16 v3, 0xf

    .line 108
    .line 109
    if-ne v2, v3, :cond_9

    .line 110
    .line 111
    if-eqz v13, :cond_7

    .line 112
    .line 113
    array-length v0, v13

    .line 114
    if-lez v0, :cond_7

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_7
    move v10, v11

    .line 118
    :goto_3
    if-eqz v10, :cond_2b

    .line 119
    .line 120
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 121
    .line 122
    if-eqz v0, :cond_8

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-object v0, v0, Lg/b;->j:Landroidx/lifecycle/MutableLiveData;

    .line 129
    .line 130
    invoke-static {v13}, Lt/b;->e(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    aget-object v1, v13, v11

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_18

    .line 139
    .line 140
    :cond_8
    invoke-static {v8}, Lt/b;->B(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v7

    .line 144
    :cond_9
    :goto_4
    const-string v14, ":"

    .line 145
    .line 146
    const-string v15, ""

    .line 147
    .line 148
    if-nez v1, :cond_a

    .line 149
    .line 150
    goto/16 :goto_8

    .line 151
    .line 152
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    const/16 v3, 0xe

    .line 157
    .line 158
    if-ne v2, v3, :cond_12

    .line 159
    .line 160
    if-eqz v13, :cond_b

    .line 161
    .line 162
    array-length v0, v13

    .line 163
    if-lez v0, :cond_b

    .line 164
    .line 165
    move v0, v10

    .line 166
    goto :goto_5

    .line 167
    :cond_b
    move v0, v11

    .line 168
    :goto_5
    if-eqz v0, :cond_2b

    .line 169
    .line 170
    invoke-static {v13}, Lt/b;->e(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    aget-object v0, v13, v11

    .line 174
    .line 175
    invoke-static {v0, v14}, Lf0/h;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-nez v0, :cond_10

    .line 180
    .line 181
    aget-object v0, v13, v11

    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    move v2, v11

    .line 188
    :goto_6
    if-ge v2, v1, :cond_e

    .line 189
    .line 190
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-lez v3, :cond_c

    .line 195
    .line 196
    move v3, v10

    .line 197
    goto :goto_7

    .line 198
    :cond_c
    move v3, v11

    .line 199
    :goto_7
    if-eqz v3, :cond_d

    .line 200
    .line 201
    rem-int/lit8 v3, v2, 0x2

    .line 202
    .line 203
    if-nez v3, :cond_d

    .line 204
    .line 205
    invoke-virtual {v15, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v15

    .line 209
    :cond_d
    invoke-static {v15}, Landroid/accessibilityservice/c;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v15

    .line 224
    add-int/lit8 v2, v2, 0x1

    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_e
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 228
    .line 229
    if-eqz v0, :cond_f

    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    iget-object v0, v0, Lg/b;->k:Landroidx/lifecycle/MutableLiveData;

    .line 236
    .line 237
    invoke-virtual {v0, v15}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_18

    .line 241
    .line 242
    :cond_f
    invoke-static {v8}, Lt/b;->B(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    throw v7

    .line 246
    :cond_10
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 247
    .line 248
    if-eqz v0, :cond_11

    .line 249
    .line 250
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    iget-object v0, v0, Lg/b;->k:Landroidx/lifecycle/MutableLiveData;

    .line 255
    .line 256
    aget-object v1, v13, v11

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_18

    .line 262
    .line 263
    :cond_11
    invoke-static {v8}, Lt/b;->B(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    throw v7

    .line 267
    :cond_12
    :goto_8
    iget-object v5, v6, Lcom/syu/carlink/CarLinkService;->d:Ljava/lang/String;

    .line 268
    .line 269
    if-nez v1, :cond_13

    .line 270
    .line 271
    goto :goto_a

    .line 272
    :cond_13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    const/4 v3, 0x7

    .line 277
    if-ne v2, v3, :cond_15

    .line 278
    .line 279
    if-eqz v13, :cond_14

    .line 280
    .line 281
    array-length v1, v13

    .line 282
    if-le v1, v10, :cond_14

    .line 283
    .line 284
    move v1, v10

    .line 285
    goto :goto_9

    .line 286
    :cond_14
    move v1, v11

    .line 287
    :goto_9
    if-eqz v1, :cond_2b

    .line 288
    .line 289
    iget-object v1, v9, Lg/b;->o:Landroidx/lifecycle/MutableLiveData;

    .line 290
    .line 291
    invoke-static {v13}, Lt/b;->e(Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    aget-object v2, v13, v11

    .line 295
    .line 296
    const/4 v3, 0x0

    .line 297
    new-instance v4, Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$1;

    .line 298
    .line 299
    invoke-direct {v4, v0}, Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$1;-><init>(Lo/b;)V

    .line 300
    .line 301
    .line 302
    const/4 v7, 0x4

    .line 303
    move-object/from16 v0, p0

    .line 304
    .line 305
    move-object v8, v5

    .line 306
    move v5, v7

    .line 307
    invoke-static/range {v0 .. v5}, Lcom/syu/carlink/CarLinkService;->y(Lcom/syu/carlink/CarLinkService;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;Lz/l;I)V

    .line 308
    .line 309
    .line 310
    aget-object v0, v13, v11

    .line 311
    .line 312
    invoke-static {v0, v8}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    if-eqz v0, :cond_2b

    .line 317
    .line 318
    iget-object v0, v9, Lg/b;->l:Landroidx/lifecycle/MutableLiveData;

    .line 319
    .line 320
    aget-object v1, v13, v10

    .line 321
    .line 322
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    goto/16 :goto_18

    .line 326
    .line 327
    :cond_15
    :goto_a
    const/4 v4, 0x6

    .line 328
    if-nez v1, :cond_16

    .line 329
    .line 330
    goto/16 :goto_e

    .line 331
    .line 332
    :cond_16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    if-ne v2, v4, :cond_1c

    .line 337
    .line 338
    if-eqz v13, :cond_17

    .line 339
    .line 340
    array-length v0, v13

    .line 341
    if-le v0, v10, :cond_17

    .line 342
    .line 343
    move v0, v10

    .line 344
    goto :goto_b

    .line 345
    :cond_17
    move v0, v11

    .line 346
    :goto_b
    if-eqz v0, :cond_2b

    .line 347
    .line 348
    iget-object v1, v9, Lg/b;->o:Landroidx/lifecycle/MutableLiveData;

    .line 349
    .line 350
    invoke-static {v13}, Lt/b;->e(Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    aget-object v2, v13, v11

    .line 354
    .line 355
    aget-object v3, v13, v10

    .line 356
    .line 357
    const/4 v4, 0x0

    .line 358
    const/16 v7, 0x8

    .line 359
    .line 360
    move-object/from16 v0, p0

    .line 361
    .line 362
    move-object v8, v5

    .line 363
    move v5, v7

    .line 364
    invoke-static/range {v0 .. v5}, Lcom/syu/carlink/CarLinkService;->y(Lcom/syu/carlink/CarLinkService;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;Lz/l;I)V

    .line 365
    .line 366
    .line 367
    aget-object v0, v13, v11

    .line 368
    .line 369
    invoke-static {v0, v8}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    if-eqz v0, :cond_2b

    .line 374
    .line 375
    aget-object v0, v13, v10

    .line 376
    .line 377
    invoke-static {v0, v14}, Lf0/h;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    iget-object v1, v9, Lg/b;->m:Landroidx/lifecycle/MutableLiveData;

    .line 382
    .line 383
    if-nez v0, :cond_1b

    .line 384
    .line 385
    aget-object v0, v13, v10

    .line 386
    .line 387
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 388
    .line 389
    .line 390
    move-result v2

    .line 391
    move v3, v11

    .line 392
    :goto_c
    if-ge v3, v2, :cond_1a

    .line 393
    .line 394
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 395
    .line 396
    .line 397
    move-result v4

    .line 398
    if-lez v4, :cond_18

    .line 399
    .line 400
    move v4, v10

    .line 401
    goto :goto_d

    .line 402
    :cond_18
    move v4, v11

    .line 403
    :goto_d
    if-eqz v4, :cond_19

    .line 404
    .line 405
    rem-int/lit8 v4, v3, 0x2

    .line 406
    .line 407
    if-nez v4, :cond_19

    .line 408
    .line 409
    invoke-virtual {v15, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v15

    .line 413
    :cond_19
    invoke-static {v15}, Landroid/accessibilityservice/c;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 418
    .line 419
    .line 420
    move-result v5

    .line 421
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v15

    .line 428
    add-int/lit8 v3, v3, 0x1

    .line 429
    .line 430
    goto :goto_c

    .line 431
    :cond_1a
    invoke-virtual {v1, v15}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_18

    .line 435
    .line 436
    :cond_1b
    aget-object v0, v13, v10

    .line 437
    .line 438
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    goto/16 :goto_18

    .line 442
    .line 443
    :cond_1c
    :goto_e
    move-object v14, v5

    .line 444
    if-nez v1, :cond_1d

    .line 445
    .line 446
    goto :goto_11

    .line 447
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    const/16 v3, 0xd

    .line 452
    .line 453
    if-ne v2, v3, :cond_20

    .line 454
    .line 455
    if-eqz v13, :cond_1e

    .line 456
    .line 457
    array-length v1, v13

    .line 458
    if-lez v1, :cond_1e

    .line 459
    .line 460
    move v1, v10

    .line 461
    goto :goto_f

    .line 462
    :cond_1e
    move v1, v11

    .line 463
    :goto_f
    if-eqz v1, :cond_2b

    .line 464
    .line 465
    if-eqz v12, :cond_1f

    .line 466
    .line 467
    array-length v1, v12

    .line 468
    if-lez v1, :cond_1f

    .line 469
    .line 470
    goto :goto_10

    .line 471
    :cond_1f
    move v10, v11

    .line 472
    :goto_10
    if-eqz v10, :cond_2b

    .line 473
    .line 474
    iget-object v1, v9, Lg/b;->o:Landroidx/lifecycle/MutableLiveData;

    .line 475
    .line 476
    invoke-static {v13}, Lt/b;->e(Ljava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    aget-object v2, v13, v11

    .line 480
    .line 481
    const/4 v3, 0x0

    .line 482
    new-instance v4, Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$2;

    .line 483
    .line 484
    invoke-direct {v4, v0, v9}, Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$2;-><init>(Lo/b;Lg/b;)V

    .line 485
    .line 486
    .line 487
    const/4 v5, 0x4

    .line 488
    move-object/from16 v0, p0

    .line 489
    .line 490
    invoke-static/range {v0 .. v5}, Lcom/syu/carlink/CarLinkService;->y(Lcom/syu/carlink/CarLinkService;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;Lz/l;I)V

    .line 491
    .line 492
    .line 493
    goto/16 :goto_18

    .line 494
    .line 495
    :cond_20
    :goto_11
    if-nez v1, :cond_21

    .line 496
    .line 497
    goto/16 :goto_15

    .line 498
    .line 499
    :cond_21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 500
    .line 501
    .line 502
    move-result v2

    .line 503
    const/16 v3, 0x3d

    .line 504
    .line 505
    if-ne v2, v3, :cond_27

    .line 506
    .line 507
    if-eqz v12, :cond_22

    .line 508
    .line 509
    array-length v1, v12

    .line 510
    if-lez v1, :cond_22

    .line 511
    .line 512
    move v1, v10

    .line 513
    goto :goto_12

    .line 514
    :cond_22
    move v1, v11

    .line 515
    :goto_12
    if-eqz v1, :cond_2b

    .line 516
    .line 517
    if-eqz v13, :cond_23

    .line 518
    .line 519
    array-length v1, v13

    .line 520
    if-lez v1, :cond_23

    .line 521
    .line 522
    move v1, v10

    .line 523
    goto :goto_13

    .line 524
    :cond_23
    move v1, v11

    .line 525
    :goto_13
    if-eqz v1, :cond_2b

    .line 526
    .line 527
    iget-object v1, v9, Lg/b;->o:Landroidx/lifecycle/MutableLiveData;

    .line 528
    .line 529
    invoke-static {v13}, Lt/b;->e(Ljava/lang/Object;)V

    .line 530
    .line 531
    .line 532
    aget-object v2, v13, v11

    .line 533
    .line 534
    const/4 v3, 0x0

    .line 535
    new-instance v5, Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$3;

    .line 536
    .line 537
    invoke-direct {v5, v0}, Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$3;-><init>(Lo/b;)V

    .line 538
    .line 539
    .line 540
    const/4 v9, 0x4

    .line 541
    move-object/from16 v0, p0

    .line 542
    .line 543
    move v15, v4

    .line 544
    move-object v4, v5

    .line 545
    move v5, v9

    .line 546
    invoke-static/range {v0 .. v5}, Lcom/syu/carlink/CarLinkService;->y(Lcom/syu/carlink/CarLinkService;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;Lz/l;I)V

    .line 547
    .line 548
    .line 549
    aget-object v0, v13, v11

    .line 550
    .line 551
    invoke-static {v0, v14}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    move-result v0

    .line 555
    if-eqz v0, :cond_2b

    .line 556
    .line 557
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 558
    .line 559
    if-eqz v0, :cond_26

    .line 560
    .line 561
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    iget-object v0, v0, Lg/b;->n:Landroidx/lifecycle/MutableLiveData;

    .line 566
    .line 567
    invoke-static {v12}, Lt/b;->e(Ljava/lang/Object;)V

    .line 568
    .line 569
    .line 570
    aget v1, v12, v11

    .line 571
    .line 572
    const/4 v2, 0x2

    .line 573
    if-eq v1, v2, :cond_25

    .line 574
    .line 575
    const/4 v10, 0x3

    .line 576
    if-eq v1, v10, :cond_24

    .line 577
    .line 578
    const/4 v2, 0x4

    .line 579
    if-eq v1, v2, :cond_25

    .line 580
    .line 581
    const/4 v10, 0x5

    .line 582
    if-eq v1, v10, :cond_24

    .line 583
    .line 584
    if-eq v1, v15, :cond_25

    .line 585
    .line 586
    move v10, v11

    .line 587
    goto :goto_14

    .line 588
    :cond_24
    move v10, v2

    .line 589
    :cond_25
    :goto_14
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 594
    .line 595
    .line 596
    goto :goto_18

    .line 597
    :cond_26
    invoke-static {v8}, Lt/b;->B(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    throw v7

    .line 601
    :cond_27
    :goto_15
    if-nez v1, :cond_28

    .line 602
    .line 603
    goto :goto_18

    .line 604
    :cond_28
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 605
    .line 606
    .line 607
    move-result v1

    .line 608
    const/16 v2, 0x3e

    .line 609
    .line 610
    if-ne v1, v2, :cond_2b

    .line 611
    .line 612
    if-eqz v12, :cond_29

    .line 613
    .line 614
    array-length v1, v12

    .line 615
    if-lez v1, :cond_29

    .line 616
    .line 617
    move v1, v10

    .line 618
    goto :goto_16

    .line 619
    :cond_29
    move v1, v11

    .line 620
    :goto_16
    if-eqz v1, :cond_2b

    .line 621
    .line 622
    if-eqz v13, :cond_2a

    .line 623
    .line 624
    array-length v1, v13

    .line 625
    if-lez v1, :cond_2a

    .line 626
    .line 627
    goto :goto_17

    .line 628
    :cond_2a
    move v10, v11

    .line 629
    :goto_17
    if-eqz v10, :cond_2b

    .line 630
    .line 631
    iget-object v1, v9, Lg/b;->o:Landroidx/lifecycle/MutableLiveData;

    .line 632
    .line 633
    invoke-static {v13}, Lt/b;->e(Ljava/lang/Object;)V

    .line 634
    .line 635
    .line 636
    aget-object v2, v13, v11

    .line 637
    .line 638
    const/4 v3, 0x0

    .line 639
    new-instance v4, Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$4;

    .line 640
    .line 641
    invoke-direct {v4, v0, v9}, Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$4;-><init>(Lo/b;Lg/b;)V

    .line 642
    .line 643
    .line 644
    const/4 v5, 0x4

    .line 645
    move-object/from16 v0, p0

    .line 646
    .line 647
    invoke-static/range {v0 .. v5}, Lcom/syu/carlink/CarLinkService;->y(Lcom/syu/carlink/CarLinkService;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;Lz/l;I)V

    .line 648
    .line 649
    .line 650
    :cond_2b
    :goto_18
    return-void

    .line 651
    :cond_2c
    invoke-static {v8}, Lt/b;->B(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    throw v7
.end method

.method public final v(III)V
    .locals 3

    .line 1
    const-string v0, "reinitCarplay size: "

    .line 2
    .line 3
    const-string v1, "  x  "

    .line 4
    .line 5
    const-string v2, "  driveMode: "

    .line 6
    .line 7
    invoke-static {v0, p1, v1, p2, v2}, Landroid/accessibilityservice/c;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "HDL"

    .line 19
    .line 20
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iput p1, p0, Lcom/syu/carlink/CarLinkService;->q:I

    .line 29
    .line 30
    iput p2, p0, Lcom/syu/carlink/CarLinkService;->r:I

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/syu/carlink/CarLinkService;->p()Landroid/os/Handler;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/syu/carlink/CarLinkService;->h0:Lcom/syu/carlink/b;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    iget p1, p0, Lcom/syu/carlink/CarLinkService;->q:I

    .line 42
    .line 43
    iget p2, p0, Lcom/syu/carlink/CarLinkService;->r:I

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/syu/carlink/CarLinkService;->q(IIILz/l;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    return-void
.end method

.method public final w(II)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "setCarPlaySize size: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "  x  "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "HDL"

    .line 24
    .line 25
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    if-eqz p1, :cond_5

    .line 29
    .line 30
    if-eqz p2, :cond_5

    .line 31
    .line 32
    iget v0, p0, Lcom/syu/carlink/CarLinkService;->q:I

    .line 33
    .line 34
    if-ne v0, p1, :cond_0

    .line 35
    .line 36
    iget v0, p0, Lcom/syu/carlink/CarLinkService;->r:I

    .line 37
    .line 38
    if-ne v0, p2, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    iput p1, p0, Lcom/syu/carlink/CarLinkService;->q:I

    .line 42
    .line 43
    iput p2, p0, Lcom/syu/carlink/CarLinkService;->r:I

    .line 44
    .line 45
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    const-string v2, "me"

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->p()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    iget-boolean v0, v0, Lcom/syu/carlink/CarLink;->d:Z

    .line 63
    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {v0, p1, p2}, Lh/c;->b(II)Landroid/util/Size;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Lcom/syu/carlink/CarLinkService;->k(Landroid/util/Size;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v1

    .line 82
    :cond_2
    :goto_0
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 83
    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object p1, p1, Lg/b;->r:Landroidx/lifecycle/MutableLiveData;

    .line 91
    .line 92
    iget-object p2, p0, Lcom/syu/carlink/CarLinkService;->g0:Le/d;

    .line 93
    .line 94
    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_3
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v1

    .line 102
    :cond_4
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v1

    .line 106
    :cond_5
    :goto_1
    return-void
.end method

.method public final x(Lz/a;Lz/a;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLinkService;->c()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v1, v0, [Ljava/lang/Class;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-class v3, Ljava/lang/String;

    .line 9
    .line 10
    aput-object v3, v1, v2

    .line 11
    .line 12
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 13
    .line 14
    invoke-static {v3}, Lt/b;->e(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    aput-object v3, v1, v4

    .line 19
    .line 20
    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    .line 22
    const-string v3, "persist.carlink.cp_link.enter_ui"

    .line 23
    .line 24
    aput-object v3, v0, v2

    .line 25
    .line 26
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    .line 28
    aput-object v3, v0, v4

    .line 29
    .line 30
    const-string v3, "android.os.SystemProperties"

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    const-string v5, "getBoolean"

    .line 34
    .line 35
    invoke-static {v3, v4, v5, v1, v0}, Lp/a;->d(Ljava/lang/String;Landroid/net/wifi/WifiManager;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/Boolean;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move v0, v2

    .line 49
    :goto_0
    if-eqz v0, :cond_6

    .line 50
    .line 51
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 52
    .line 53
    const-string v1, "me"

    .line 54
    .line 55
    if-eqz v0, :cond_5

    .line 56
    .line 57
    iget-boolean v3, v0, Lcom/syu/carlink/CarLink;->d:Z

    .line 58
    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->z()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->y()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_3

    .line 79
    .line 80
    const-string p1, "HDL"

    .line 81
    .line 82
    const-string v0, "startLinkAfterUi =====>> ui will not launch, link now"

    .line 83
    .line 84
    invoke-static {p1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-interface {p2}, Lz/a;->invoke()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_2
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v4

    .line 95
    :cond_3
    invoke-virtual {p0, v2}, Lcom/syu/carlink/CarLinkService;->j(Z)V

    .line 96
    .line 97
    .line 98
    iput v2, p0, Lcom/syu/carlink/CarLinkService;->w:I

    .line 99
    .line 100
    iput-object p1, p0, Lcom/syu/carlink/CarLinkService;->t:Lz/a;

    .line 101
    .line 102
    iput-object p2, p0, Lcom/syu/carlink/CarLinkService;->s:Lz/a;

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/syu/carlink/CarLinkService;->p()Landroid/os/Handler;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iget-object p2, p0, Lcom/syu/carlink/CarLinkService;->Y:Lcom/syu/carlink/b;

    .line 109
    .line 110
    iget-wide v0, p0, Lcom/syu/carlink/CarLinkService;->x:J

    .line 111
    .line 112
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_4
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v4

    .line 120
    :cond_5
    invoke-static {v1}, Lt/b;->B(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v4

    .line 124
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/syu/carlink/CarLinkService;->g()V

    .line 125
    .line 126
    .line 127
    invoke-interface {p2}, Lz/a;->invoke()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    return-void
.end method
