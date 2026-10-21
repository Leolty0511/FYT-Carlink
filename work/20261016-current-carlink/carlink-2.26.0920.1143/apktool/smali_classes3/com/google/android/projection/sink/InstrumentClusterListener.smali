.class public Lcom/google/android/projection/sink/InstrumentClusterListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/NavigationStatus$NavigationStatusListener;
.implements Lcom/google/android/projection/protocol/MediaPlaybackStatus$MediaPlaybackStatusListener;
.implements Lcom/google/android/projection/protocol/MediaBrowser$MediaBrowserListener;
.implements Lcom/google/android/projection/protocol/PhoneStatus$PhoneStatusListener;


# static fields
.field public static final MEDIA_ALBUM:Ljava/lang/String; = "Media Album"

.field public static final MEDIA_ALBUM_ART:Ljava/lang/String; = "Media Album Art"

.field public static final MEDIA_ARTIST:Ljava/lang/String; = "Media Artist"

.field public static final MEDIA_BROWSER_LIST_STRING:Ljava/lang/String; = "Media Browser List String"

.field public static final MEDIA_BROWSER_ROOT_STRING:Ljava/lang/String; = "Media Browser Root String"

.field public static final MEDIA_BROWSER_SONG_STRING:Ljava/lang/String; = "Media Browser Song String"

.field public static final MEDIA_BROWSER_SOURCE_STRING:Ljava/lang/String; = "Media Browser Source String"

.field public static final MEDIA_DURATION:Ljava/lang/String; = "Media Duration"

.field public static final MEDIA_PLAY_BACK:Ljava/lang/String; = "Media Back"

.field public static final MEDIA_STATE:Ljava/lang/String; = "Media State"

.field public static final MEDIA_STATUS_STRING:Ljava/lang/String; = "Media Status String"

.field public static final MEDIA_TITLE:Ljava/lang/String; = "Media Title"

.field public static final NAVIGATION_BITMAP:Ljava/lang/String; = "Navigation Bitmap"

.field public static final NAVIGATION_STRING:Ljava/lang/String; = "Navigation String"

.field public static final PHONE_STATUS_PHOTO:Ljava/lang/String; = "Phone Status Photo"

.field public static final PHONE_STATUS_STRING:Ljava/lang/String; = "Phone Status String"

.field private static final TAG:Ljava/lang/String; = "AHU.NAVIGATION"

.field public static final UPDATE_IC_MEDIA_BROWSER:I = 0x4

.field public static final UPDATE_IC_MEDIA_STATUS:I = 0x3

.field public static final UPDATE_IC_NAVIGATION:I = 0x2

.field public static final UPDATE_IC_PHONE_STATUS:I = 0x5

.field public static final UPDATE_VTOGGLE_TEXT:I = 0x1


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumArt:[B

.field private mArtist:Ljava/lang/String;

.field private mDistanceMeters:I

.field private mDurationSeconds:I

.field private mEvent:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

.field private mImage:[B

.field private final mNativePanelUpdateHandler:Landroid/os/Handler;

.field private mPlaybackSeconds:I

.field private mPlaylist:Ljava/lang/String;

.field private mRatings:I

.field private mRepeat:Z

.field private mRepeatOne:Z

.field private mRoad:Ljava/lang/String;

.field private mShuffle:Z

.field private mSong:Ljava/lang/String;

.field private mSource:Ljava/lang/String;

.field private mState:I

.field private mStatus:Lcom/google/android/projection/proto/Protos$NavigationStatus$NavigationStatusEnum;

.field private mTimeSeconds:I

.field private mTurnAngle:I

.field private mTurnNumber:I

.field private mTurnSide:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mNativePanelUpdateHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mNativePanelUpdateHandler:Landroid/os/Handler;

    return-void
.end method

.method private updateMedia()V
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "State: "

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v3, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mState:I

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v3, "\n"

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v4, "Source: "

    .line 38
    .line 39
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v4, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mSource:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v4, "Song: "

    .line 60
    .line 61
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v4, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mSong:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v4, "Album: "

    .line 82
    .line 83
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v4, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mAlbum:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v4, "Artist: "

    .line 104
    .line 105
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v4, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mArtist:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v4, "Playlist: "

    .line 126
    .line 127
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v4, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mPlaylist:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v4, "Duration: "

    .line 148
    .line 149
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget v4, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mDurationSeconds:I

    .line 153
    .line 154
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v4, "Playback: "

    .line 170
    .line 171
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget v4, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mPlaybackSeconds:I

    .line 175
    .line 176
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string v4, "Ratings: "

    .line 192
    .line 193
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget v4, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mRatings:I

    .line 197
    .line 198
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string v4, "Shuffle: "

    .line 214
    .line 215
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iget-boolean v4, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mShuffle:Z

    .line 219
    .line 220
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    const-string v4, "Repeat: "

    .line 236
    .line 237
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget-boolean v4, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mRepeat:Z

    .line 241
    .line 242
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v4, "Repeat One: "

    .line 258
    .line 259
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-boolean v4, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mRepeatOne:Z

    .line 263
    .line 264
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v2, "Media State"

    .line 278
    .line 279
    iget v3, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mState:I

    .line 280
    .line 281
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 282
    .line 283
    .line 284
    iget-object v2, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mSong:Ljava/lang/String;

    .line 285
    .line 286
    const-string v3, ""

    .line 287
    .line 288
    if-nez v2, :cond_0

    .line 289
    .line 290
    move-object v2, v3

    .line 291
    :cond_0
    const-string v4, "Media Title"

    .line 292
    .line 293
    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    iget-object v2, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mArtist:Ljava/lang/String;

    .line 297
    .line 298
    if-nez v2, :cond_1

    .line 299
    .line 300
    move-object v2, v3

    .line 301
    :cond_1
    const-string v4, "Media Artist"

    .line 302
    .line 303
    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    iget-object v2, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mAlbum:Ljava/lang/String;

    .line 307
    .line 308
    if-nez v2, :cond_2

    .line 309
    .line 310
    goto :goto_0

    .line 311
    :cond_2
    move-object v3, v2

    .line 312
    :goto_0
    const-string v2, "Media Album"

    .line 313
    .line 314
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    const-string v2, "Media Duration"

    .line 318
    .line 319
    iget v3, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mDurationSeconds:I

    .line 320
    .line 321
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 322
    .line 323
    .line 324
    const-string v2, "Media Back"

    .line 325
    .line 326
    iget v3, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mPlaybackSeconds:I

    .line 327
    .line 328
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 329
    .line 330
    .line 331
    const-string v2, "Media Status String"

    .line 332
    .line 333
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    iget-object v1, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mAlbumArt:[B

    .line 341
    .line 342
    if-eqz v1, :cond_3

    .line 343
    .line 344
    const-string v2, "Media Album Art"

    .line 345
    .line 346
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 347
    .line 348
    .line 349
    :cond_3
    new-instance v1, Landroid/os/Message;

    .line 350
    .line 351
    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 355
    .line 356
    .line 357
    const/4 v0, 0x3

    .line 358
    iput v0, v1, Landroid/os/Message;->what:I

    .line 359
    .line 360
    iget-object v0, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mNativePanelUpdateHandler:Landroid/os/Handler;

    .line 361
    .line 362
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 363
    .line 364
    .line 365
    return-void
.end method

.method private updateNavigationViews()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mStatus:Lcom/google/android/projection/proto/Protos$NavigationStatus$NavigationStatusEnum;

    .line 7
    .line 8
    const-string v2, "\n"

    .line 9
    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    const-string v1, "Status: "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mStatus:Lcom/google/android/projection/proto/Protos$NavigationStatus$NavigationStatusEnum;

    .line 18
    .line 19
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationStatus$NavigationStatusEnum;->ACTIVE:Lcom/google/android/projection/proto/Protos$NavigationStatus$NavigationStatusEnum;

    .line 20
    .line 21
    if-ne v1, v3, :cond_0

    .line 22
    .line 23
    const-string v1, "Active"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationStatus$NavigationStatusEnum;->UNAVAILABLE:Lcom/google/android/projection/proto/Protos$NavigationStatus$NavigationStatusEnum;

    .line 30
    .line 31
    if-ne v1, v3, :cond_1

    .line 32
    .line 33
    const-string v1, "Unavailable"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationStatus$NavigationStatusEnum;->INACTIVE:Lcom/google/android/projection/proto/Protos$NavigationStatus$NavigationStatusEnum;

    .line 40
    .line 41
    if-ne v1, v3, :cond_2

    .line 42
    .line 43
    const-string v1, "Inactive"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :cond_3
    iget-object v1, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mStatus:Lcom/google/android/projection/proto/Protos$NavigationStatus$NavigationStatusEnum;

    .line 52
    .line 53
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationStatus$NavigationStatusEnum;->ACTIVE:Lcom/google/android/projection/proto/Protos$NavigationStatus$NavigationStatusEnum;

    .line 54
    .line 55
    if-ne v1, v3, :cond_1d

    .line 56
    .line 57
    iget-object v1, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mRoad:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v3, "Road: "

    .line 64
    .line 65
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v3, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mRoad:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    :cond_4
    iget-object v1, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mTurnSide:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    .line 84
    .line 85
    if-eqz v1, :cond_8

    .line 86
    .line 87
    const-string v1, "Turn: "

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mTurnSide:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    .line 93
    .line 94
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->LEFT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    .line 95
    .line 96
    if-ne v1, v3, :cond_5

    .line 97
    .line 98
    const-string v1, "Left"

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->RIGHT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    .line 105
    .line 106
    if-ne v1, v3, :cond_6

    .line 107
    .line 108
    const-string v1, "Right"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_6
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->UNSPECIFIED:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    .line 115
    .line 116
    if-ne v1, v3, :cond_7

    .line 117
    .line 118
    const-string v1, "Unspecified"

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    :cond_7
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    :cond_8
    iget-object v1, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mEvent:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    .line 127
    .line 128
    if-eqz v1, :cond_1b

    .line 129
    .line 130
    const-string v1, "Event: "

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mEvent:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    .line 136
    .line 137
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->DEPART:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    .line 138
    .line 139
    if-ne v1, v3, :cond_9

    .line 140
    .line 141
    const-string v1, "Depart"

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    goto/16 :goto_2

    .line 147
    .line 148
    :cond_9
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->DESTINATION:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    .line 149
    .line 150
    if-ne v1, v3, :cond_a

    .line 151
    .line 152
    const-string v1, "Destination"

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    goto/16 :goto_2

    .line 158
    .line 159
    :cond_a
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->FERRY_BOAT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    .line 160
    .line 161
    if-ne v1, v3, :cond_b

    .line 162
    .line 163
    const-string v1, "Ferry boat"

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    goto/16 :goto_2

    .line 169
    .line 170
    :cond_b
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->FERRY_TRAIN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    .line 171
    .line 172
    if-ne v1, v3, :cond_c

    .line 173
    .line 174
    const-string v1, "Ferry train"

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    goto/16 :goto_2

    .line 180
    .line 181
    :cond_c
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->FORK:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    .line 182
    .line 183
    if-ne v1, v3, :cond_d

    .line 184
    .line 185
    const-string v1, "Fork"

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    goto/16 :goto_2

    .line 191
    .line 192
    :cond_d
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->MERGE:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    .line 193
    .line 194
    if-ne v1, v3, :cond_e

    .line 195
    .line 196
    const-string v1, "Merge"

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    goto/16 :goto_2

    .line 202
    .line 203
    :cond_e
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->NAME_CHANGE:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    .line 204
    .line 205
    if-ne v1, v3, :cond_f

    .line 206
    .line 207
    const-string v1, "Name change"

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    goto/16 :goto_2

    .line 213
    .line 214
    :cond_f
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->OFF_RAMP:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    .line 215
    .line 216
    if-ne v1, v3, :cond_10

    .line 217
    .line 218
    const-string v1, "Off ramp"

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    goto/16 :goto_2

    .line 224
    .line 225
    :cond_10
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->ON_RAMP:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    .line 226
    .line 227
    if-ne v1, v3, :cond_11

    .line 228
    .line 229
    const-string v1, "On ramp"

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_11
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->ROUNDABOUT_ENTER:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    .line 236
    .line 237
    if-ne v1, v3, :cond_12

    .line 238
    .line 239
    const-string v1, "Roundabout enter"

    .line 240
    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_12
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->ROUNDABOUT_ENTER_AND_EXIT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    .line 246
    .line 247
    if-ne v1, v3, :cond_13

    .line 248
    .line 249
    const-string v1, "Roundabout enter and exit"

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    goto :goto_2

    .line 255
    :cond_13
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->ROUNDABOUT_EXIT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    .line 256
    .line 257
    if-ne v1, v3, :cond_14

    .line 258
    .line 259
    const-string v1, "Roundabout exit"

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_14
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->SHARP_TURN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    .line 266
    .line 267
    if-ne v1, v3, :cond_15

    .line 268
    .line 269
    const-string v1, "Sharp turn"

    .line 270
    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    goto :goto_2

    .line 275
    :cond_15
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->SLIGHT_TURN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    .line 276
    .line 277
    if-ne v1, v3, :cond_16

    .line 278
    .line 279
    const-string v1, "Slight turn"

    .line 280
    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_16
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->STRAIGHT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    .line 286
    .line 287
    if-ne v1, v3, :cond_17

    .line 288
    .line 289
    const-string v1, "Straight"

    .line 290
    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    goto :goto_2

    .line 295
    :cond_17
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->TURN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    .line 296
    .line 297
    if-ne v1, v3, :cond_18

    .line 298
    .line 299
    const-string v1, "Turn"

    .line 300
    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    goto :goto_2

    .line 305
    :cond_18
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->U_TURN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    .line 306
    .line 307
    if-ne v1, v3, :cond_19

    .line 308
    .line 309
    const-string v1, "U-Turn"

    .line 310
    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    goto :goto_2

    .line 315
    :cond_19
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->UNKNOWN:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    .line 316
    .line 317
    if-ne v1, v3, :cond_1a

    .line 318
    .line 319
    const-string v1, "Unknown"

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    :cond_1a
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    :cond_1b
    iget-object v1, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mEvent:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    .line 328
    .line 329
    sget-object v3, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->ROUNDABOUT_ENTER_AND_EXIT:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    .line 330
    .line 331
    if-ne v1, v3, :cond_1c

    .line 332
    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    const-string v3, "Turn Angle: "

    .line 336
    .line 337
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    iget v3, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mTurnAngle:I

    .line 341
    .line 342
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    const-string v3, "Turn Number: "

    .line 358
    .line 359
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    iget v3, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mTurnNumber:I

    .line 363
    .line 364
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    const-string v2, "Distance: "

    .line 380
    .line 381
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    iget v2, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mDistanceMeters:I

    .line 385
    .line 386
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    const-string v2, "m\n"

    .line 390
    .line 391
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    const-string v2, "Time: "

    .line 404
    .line 405
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    iget v2, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mTimeSeconds:I

    .line 409
    .line 410
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    const-string v2, "s\n"

    .line 414
    .line 415
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    :cond_1d
    new-instance v1, Landroid/os/Bundle;

    .line 426
    .line 427
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 428
    .line 429
    .line 430
    const-string v2, "Navigation String"

    .line 431
    .line 432
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    const-string v0, "Navigation Bitmap"

    .line 440
    .line 441
    iget-object v2, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mImage:[B

    .line 442
    .line 443
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 444
    .line 445
    .line 446
    new-instance v0, Landroid/os/Message;

    .line 447
    .line 448
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 452
    .line 453
    .line 454
    const/4 v1, 0x2

    .line 455
    iput v1, v0, Landroid/os/Message;->what:I

    .line 456
    .line 457
    iget-object v1, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mNativePanelUpdateHandler:Landroid/os/Handler;

    .line 458
    .line 459
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 460
    .line 461
    .line 462
    return-void
.end method


# virtual methods
.method public onMediaListNode(Lcom/google/android/projection/protocol/MediaBrowser$MediaList;II[Lcom/google/android/projection/protocol/MediaBrowser$MediaSong;)V
    .locals 0

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string p4, "List Node: "

    .line 9
    .line 10
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p4, p1, Lcom/google/android/projection/protocol/MediaBrowser$MediaList;->path:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p4, " "

    .line 19
    .line 20
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object p1, p1, Lcom/google/android/projection/protocol/MediaBrowser$MediaList;->name:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, "\n"

    .line 29
    .line 30
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    new-instance p1, Landroid/os/Bundle;

    .line 41
    .line 42
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string p3, "Media Browser List String"

    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p1, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance p2, Landroid/os/Message;

    .line 55
    .line 56
    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 60
    .line 61
    .line 62
    const/4 p1, 0x4

    .line 63
    iput p1, p2, Landroid/os/Message;->what:I

    .line 64
    .line 65
    iget-object p1, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mNativePanelUpdateHandler:Landroid/os/Handler;

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public onMediaMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mSong:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mAlbum:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mArtist:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mAlbumArt:[B

    .line 8
    .line 9
    iput-object p5, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mPlaylist:Ljava/lang/String;

    .line 10
    .line 11
    iput p6, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mDurationSeconds:I

    .line 12
    .line 13
    iput p7, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mRatings:I

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/google/android/projection/sink/InstrumentClusterListener;->updateMedia()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onMediaRootNode(Ljava/lang/String;[Lcom/google/android/projection/protocol/MediaBrowser$MediaSource;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "Root Node: "

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, "\n"

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    array-length v1, p2

    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_0
    if-ge v2, v1, :cond_0

    .line 31
    .line 32
    aget-object v3, p2, v2

    .line 33
    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v5, v3, Lcom/google/android/projection/protocol/MediaBrowser$MediaSource;->name:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v5, " "

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v3, v3, Lcom/google/android/projection/protocol/MediaBrowser$MediaSource;->path:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    add-int/lit8 v2, v2, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .line 68
    .line 69
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string p2, "Media Browser Root String"

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance p2, Landroid/os/Message;

    .line 82
    .line 83
    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 87
    .line 88
    .line 89
    const/4 p1, 0x4

    .line 90
    iput p1, p2, Landroid/os/Message;->what:I

    .line 91
    .line 92
    iget-object p1, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mNativePanelUpdateHandler:Landroid/os/Handler;

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public onMediaSongNode(Lcom/google/android/projection/protocol/MediaBrowser$MediaSong;[BI)V
    .locals 2

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v0, "Song Node: "

    .line 9
    .line 10
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p1, Lcom/google/android/projection/protocol/MediaBrowser$MediaSong;->path:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, "\n"

    .line 19
    .line 20
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    new-instance p3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p1, Lcom/google/android/projection/protocol/MediaBrowser$MediaSong;->name:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, " - "

    .line 41
    .line 42
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v1, p1, Lcom/google/android/projection/protocol/MediaBrowser$MediaSong;->artist:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object p1, p1, Lcom/google/android/projection/protocol/MediaBrowser$MediaSong;->album:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    new-instance p1, Landroid/os/Bundle;

    .line 66
    .line 67
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string p3, "Media Browser Song String"

    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p1, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance p2, Landroid/os/Message;

    .line 80
    .line 81
    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 85
    .line 86
    .line 87
    const/4 p1, 0x4

    .line 88
    iput p1, p2, Landroid/os/Message;->what:I

    .line 89
    .line 90
    iget-object p1, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mNativePanelUpdateHandler:Landroid/os/Handler;

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public onMediaSourceNode(Lcom/google/android/projection/protocol/MediaBrowser$MediaSource;II[Lcom/google/android/projection/protocol/MediaBrowser$MediaList;)V
    .locals 0

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string p4, "Source Node: "

    .line 9
    .line 10
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p4, p1, Lcom/google/android/projection/protocol/MediaBrowser$MediaSource;->path:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p4, " "

    .line 19
    .line 20
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object p1, p1, Lcom/google/android/projection/protocol/MediaBrowser$MediaSource;->name:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, "\n"

    .line 29
    .line 30
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    new-instance p1, Landroid/os/Bundle;

    .line 41
    .line 42
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string p3, "Media Browser Source String"

    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p1, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance p2, Landroid/os/Message;

    .line 55
    .line 56
    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 60
    .line 61
    .line 62
    const/4 p1, 0x4

    .line 63
    iput p1, p2, Landroid/os/Message;->what:I

    .line 64
    .line 65
    iget-object p1, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mNativePanelUpdateHandler:Landroid/os/Handler;

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public onMediaStatus(ILjava/lang/String;IZZZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mState:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mSource:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mPlaybackSeconds:I

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mShuffle:Z

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mRepeat:Z

    .line 10
    .line 11
    iput-boolean p6, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mRepeatOne:Z

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/android/projection/sink/InstrumentClusterListener;->updateMedia()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onNavigationCurrentPosition(Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;)V
    .locals 1

    .line 1
    const-string p1, "AHU.NAVIGATION"

    .line 2
    .line 3
    const-string v0, "Not supported operations."

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onNavigationState(Lcom/google/android/projection/proto/Protos$NavigationState;)V
    .locals 1

    .line 1
    const-string p1, "AHU.NAVIGATION"

    .line 2
    .line 3
    const-string v0, "Not supported operations."

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onNextTurn(Ljava/lang/String;II[BII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mRoad:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;->valueOf(I)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mTurnSide:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$TurnSide;

    .line 8
    .line 9
    invoke-static {p3}, Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;->valueOf(I)Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mEvent:Lcom/google/android/projection/proto/Protos$NavigationNextTurnEvent$NextTurnEnum;

    .line 14
    .line 15
    iput p5, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mTurnAngle:I

    .line 16
    .line 17
    iput p6, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mTurnNumber:I

    .line 18
    .line 19
    iput-object p4, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mImage:[B

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/google/android/projection/sink/InstrumentClusterListener;->updateNavigationViews()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onNextTurnDistance(IIFI)V
    .locals 0

    .line 1
    return-void
.end method

.method public onNextTurnDistance(IIII)V
    .locals 1

    int-to-float p3, p3

    const v0, 0x3a83126f    # 0.001f

    mul-float/2addr p3, v0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/projection/sink/InstrumentClusterListener;->onNextTurnDistance(IIFI)V

    .line 3
    iput p1, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mDistanceMeters:I

    .line 4
    iput p2, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mTimeSeconds:I

    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/sink/InstrumentClusterListener;->updateNavigationViews()V

    return-void
.end method

.method public onPhoneStatus([Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;I)V
    .locals 7

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_3

    .line 10
    .line 11
    aget-object v3, p1, v2

    .line 12
    .line 13
    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->hasCallerNumber()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const-string v5, " "

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->getCallerNumber()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->hasCallerId()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->getCallerId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->hasCallerNumberType()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->getCallerNumberType()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    .line 88
    .line 89
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v2, "Phone Status String"

    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {v0, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    array-length p2, p1

    .line 102
    if-lez p2, :cond_4

    .line 103
    .line 104
    aget-object p2, p1, v1

    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->hasCallerThumbnail()Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-eqz p2, :cond_4

    .line 111
    .line 112
    aget-object p1, p1, v1

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;->getCallerThumbnail()Lcom/google/protobuf/ByteString;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const-string p2, "Phone Status Photo"

    .line 123
    .line 124
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 125
    .line 126
    .line 127
    :cond_4
    new-instance p1, Landroid/os/Message;

    .line 128
    .line 129
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 133
    .line 134
    .line 135
    const/4 p2, 0x5

    .line 136
    iput p2, p1, Landroid/os/Message;->what:I

    .line 137
    .line 138
    iget-object p2, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mNativePanelUpdateHandler:Landroid/os/Handler;

    .line 139
    .line 140
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public onStatus(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/projection/proto/Protos$NavigationStatus$NavigationStatusEnum;->valueOf(I)Lcom/google/android/projection/proto/Protos$NavigationStatus$NavigationStatusEnum;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/projection/sink/InstrumentClusterListener;->mStatus:Lcom/google/android/projection/proto/Protos$NavigationStatus$NavigationStatusEnum;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/projection/sink/InstrumentClusterListener;->updateNavigationViews()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
