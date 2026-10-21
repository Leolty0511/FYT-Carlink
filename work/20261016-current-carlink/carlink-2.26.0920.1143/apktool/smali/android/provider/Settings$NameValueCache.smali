.class Landroid/provider/Settings$NameValueCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameValueCache"
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final SELECT_VALUE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mCallGetCommand:Ljava/lang/String;

.field private final mCallSetCommand:Ljava/lang/String;

.field private mGenerationTracker:Landroid/provider/Settings$GenerationTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "value"

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;)V
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
    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    .line 10
    .line 11
    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 12
    .line 13
    iput-object p2, p0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p3, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p4, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic a(Landroid/provider/Settings$NameValueCache;)V
    .locals 0

    invoke-direct {p0}, Landroid/provider/Settings$NameValueCache;->lambda$getStringForUser$0()V

    return-void
.end method

.method private synthetic lambda$getStringForUser$0()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "Settings"

    .line 3
    .line 4
    const-string v1, "Error accessing generation tracker - removing"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 22
    .line 23
    .line 24
    :cond_0
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v0
.end method


# virtual methods
.method public clearGenerationTrackerForTest()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v0
.end method

.method public getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne p3, v0, :cond_0

    .line 8
    .line 9
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    if-eqz v0, :cond_3

    .line 13
    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v3, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 16
    .line 17
    if-eqz v3, :cond_2

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    iget-object v3, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget-object v3, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Ljava/lang/String;

    .line 46
    .line 47
    monitor-exit p0

    .line 48
    return-object p1

    .line 49
    :cond_2
    :goto_1
    monitor-exit p0

    .line 50
    goto :goto_2

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p1

    .line 54
    :cond_3
    :goto_2
    iget-object v3, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    .line 55
    .line 56
    invoke-virtual {v3, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iget-object v3, p0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 61
    .line 62
    const/4 v10, 0x0

    .line 63
    if-eqz v3, :cond_b

    .line 64
    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    :try_start_1
    new-instance v3, Landroid/os/Bundle;

    .line 68
    .line 69
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v5, "_user"

    .line 73
    .line 74
    invoke-virtual {v3, v5, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_4
    move-object v3, v10

    .line 79
    :goto_3
    monitor-enter p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    if-eqz v0, :cond_6

    .line 81
    .line 82
    :try_start_2
    iget-object p3, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 83
    .line 84
    if-nez p3, :cond_6

    .line 85
    .line 86
    if-nez v3, :cond_5

    .line 87
    .line 88
    new-instance p3, Landroid/os/Bundle;

    .line 89
    .line 90
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 91
    .line 92
    .line 93
    move-object v3, p3

    .line 94
    :cond_5
    const-string p3, "_track_generation"

    .line 95
    .line 96
    invoke-virtual {v3, p3, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    move p3, v1

    .line 100
    goto :goto_4

    .line 101
    :cond_6
    move p3, v2

    .line 102
    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 103
    :try_start_3
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-eqz v5, :cond_7

    .line 108
    .line 109
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-eq v5, v6, :cond_7

    .line 118
    .line 119
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 120
    .line 121
    .line 122
    move-result-wide v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 123
    :try_start_4
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    iget-object v8, p0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 128
    .line 129
    invoke-interface {v4, v7, v8, p2, v3}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 130
    .line 131
    .line 132
    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 133
    :try_start_5
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    .line 135
    .line 136
    goto :goto_5

    .line 137
    :catchall_1
    move-exception p3

    .line 138
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    .line 140
    .line 141
    throw p3

    .line 142
    :cond_7
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    iget-object v6, p0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 147
    .line 148
    invoke-interface {v4, v5, v6, p2, v3}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    :goto_5
    if-eqz v3, :cond_b

    .line 153
    .line 154
    const-string/jumbo v5, "value"

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    if-eqz v0, :cond_a

    .line 162
    .line 163
    monitor-enter p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 164
    if-eqz p3, :cond_9

    .line 165
    .line 166
    :try_start_6
    const-string p3, "_track_generation"

    .line 167
    .line 168
    invoke-virtual {v3, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 169
    .line 170
    .line 171
    move-result-object p3

    .line 172
    check-cast p3, Landroid/util/MemoryIntArray;

    .line 173
    .line 174
    const-string v0, "_generation_index"

    .line 175
    .line 176
    const/4 v6, -0x1

    .line 177
    invoke-virtual {v3, v0, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz p3, :cond_9

    .line 182
    .line 183
    if-ltz v0, :cond_9

    .line 184
    .line 185
    const-string v6, "_generation"

    .line 186
    .line 187
    invoke-virtual {v3, v6, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    iget-object v6, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 192
    .line 193
    if-eqz v6, :cond_8

    .line 194
    .line 195
    invoke-virtual {v6}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 196
    .line 197
    .line 198
    :cond_8
    new-instance v6, Landroid/provider/Settings$GenerationTracker;

    .line 199
    .line 200
    new-instance v7, Landroid/provider/b;

    .line 201
    .line 202
    const/4 v8, 0x7

    .line 203
    invoke-direct {v7, p0, v8}, Landroid/provider/b;-><init>(Ljava/lang/Object;I)V

    .line 204
    .line 205
    .line 206
    invoke-direct {v6, p3, v0, v3, v7}, Landroid/provider/Settings$GenerationTracker;-><init>(Landroid/util/MemoryIntArray;IILjava/lang/Runnable;)V

    .line 207
    .line 208
    .line 209
    iput-object v6, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 210
    .line 211
    :cond_9
    iget-object p3, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    .line 212
    .line 213
    invoke-virtual {p3, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    monitor-exit p0

    .line 217
    goto :goto_6

    .line 218
    :catchall_2
    move-exception p3

    .line 219
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 220
    :try_start_7
    throw p3
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 221
    :cond_a
    :goto_6
    return-object v5

    .line 222
    :catchall_3
    move-exception p3

    .line 223
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 224
    :try_start_9
    throw p3
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    .line 225
    :catch_0
    :cond_b
    :try_start_a
    const-string/jumbo p3, "name=?"

    .line 226
    .line 227
    .line 228
    new-array v0, v1, [Ljava/lang/String;

    .line 229
    .line 230
    aput-object p2, v0, v2

    .line 231
    .line 232
    invoke-static {p3, v0, v10}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 233
    .line 234
    .line 235
    move-result-object v8

    .line 236
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    .line 237
    .line 238
    .line 239
    move-result p3

    .line 240
    if-eqz p3, :cond_c

    .line 241
    .line 242
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 243
    .line 244
    .line 245
    move-result p3

    .line 246
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-eq p3, v0, :cond_c

    .line 251
    .line 252
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 253
    .line 254
    .line 255
    move-result-wide v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 256
    :try_start_b
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    iget-object v6, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 261
    .line 262
    sget-object v7, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    .line 263
    .line 264
    const/4 v9, 0x0

    .line 265
    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    .line 266
    .line 267
    .line 268
    move-result-object p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 269
    :try_start_c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 270
    .line 271
    .line 272
    goto :goto_7

    .line 273
    :catchall_4
    move-exception p1

    .line 274
    :try_start_d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 275
    .line 276
    .line 277
    throw p1

    .line 278
    :cond_c
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    iget-object v6, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 283
    .line 284
    sget-object v7, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    .line 285
    .line 286
    const/4 v9, 0x0

    .line 287
    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    .line 288
    .line 289
    .line 290
    move-result-object p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 291
    :goto_7
    if-nez p1, :cond_e

    .line 292
    .line 293
    :try_start_e
    const-string p3, "Settings"

    .line 294
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .line 299
    .line 300
    const-string v1, "Can\'t get key "

    .line 301
    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const-string v1, " from "

    .line 309
    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 314
    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-static {p3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 323
    .line 324
    .line 325
    if-eqz p1, :cond_d

    .line 326
    .line 327
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 328
    .line 329
    .line 330
    :cond_d
    return-object v10

    .line 331
    :cond_e
    :try_start_f
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 332
    .line 333
    .line 334
    move-result p3

    .line 335
    if-eqz p3, :cond_f

    .line 336
    .line 337
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p3

    .line 341
    goto :goto_8

    .line 342
    :cond_f
    move-object p3, v10

    .line 343
    :goto_8
    monitor-enter p0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 344
    :try_start_10
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    .line 345
    .line 346
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 350
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 351
    .line 352
    .line 353
    return-object p3

    .line 354
    :catchall_5
    move-exception p3

    .line 355
    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 356
    :try_start_12
    throw p3
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 357
    :catch_1
    move-exception p3

    .line 358
    goto :goto_9

    .line 359
    :catchall_6
    move-exception p2

    .line 360
    goto :goto_a

    .line 361
    :catch_2
    move-exception p3

    .line 362
    move-object p1, v10

    .line 363
    :goto_9
    :try_start_13
    const-string v0, "Settings"

    .line 364
    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .line 369
    .line 370
    const-string v2, "Can\'t get key "

    .line 371
    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    const-string p2, " from "

    .line 379
    .line 380
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    iget-object p2, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 384
    .line 385
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object p2

    .line 392
    invoke-static {v0, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 393
    .line 394
    .line 395
    if-eqz p1, :cond_10

    .line 396
    .line 397
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 398
    .line 399
    .line 400
    :cond_10
    return-object v10

    .line 401
    :catchall_7
    move-exception p2

    .line 402
    move-object v10, p1

    .line 403
    :goto_a
    if-eqz v10, :cond_11

    .line 404
    .line 405
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 406
    .line 407
    .line 408
    :cond_11
    throw p2
.end method

.method public putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "value"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string p3, "_user"

    .line 13
    .line 14
    invoke-virtual {v0, p3, p6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    if-eqz p4, :cond_0

    .line 18
    .line 19
    const-string p3, "_tag"

    .line 20
    .line 21
    invoke-virtual {v0, p3, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 p3, 0x1

    .line 25
    if-eqz p5, :cond_1

    .line 26
    .line 27
    const-string p4, "_make_default"

    .line 28
    .line 29
    invoke-virtual {v0, p4, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object p4, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    .line 33
    .line 34
    invoke-virtual {p4, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object p5, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {p4, p1, p5, p2, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    return p3

    .line 48
    :catch_0
    move-exception p1

    .line 49
    const-string p3, "Can\'t set key "

    .line 50
    .line 51
    const-string p4, " in "

    .line 52
    .line 53
    invoke-static {p3, p2, p4}, Landroid/accessibilityservice/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iget-object p3, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 58
    .line 59
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    const-string p3, "Settings"

    .line 67
    .line 68
    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    return p1
.end method
