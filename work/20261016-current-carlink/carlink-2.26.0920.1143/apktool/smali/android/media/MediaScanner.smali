.class public Landroid/media/MediaScanner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScanner$WplHandler;,
        Landroid/media/MediaScanner$MediaBulkDeleter;,
        Landroid/media/MediaScanner$MyMediaScannerClient;,
        Landroid/media/MediaScanner$PlaylistEntry;,
        Landroid/media/MediaScanner$FileEntry;
    }
.end annotation


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field private static final DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX:I = 0x2

.field protected static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final ENABLE_BULK_INSERTS:Z = true

.field private static final FILES_PRESCAN_DATE_MODIFIED_COLUMN_INDEX:I = 0x3

.field private static final FILES_PRESCAN_FORMAT_COLUMN_INDEX:I = 0x2

.field private static final FILES_PRESCAN_ID_COLUMN_INDEX:I = 0x0

.field private static final FILES_PRESCAN_PATH_COLUMN_INDEX:I = 0x1

.field private static final FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

.field private static final ID3_GENRES:[Ljava/lang/String;

.field private static final ID_PLAYLISTS_COLUMN_INDEX:I = 0x0

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field public static final IMG_TYPE_MODE_3D_CAPTURE:I = 0x7

.field public static final IMG_TYPE_MODE_AUDIO_CAPTURE:I = 0x35

.field public static final IMG_TYPE_MODE_BLUR_HAS_BOKEH:I = 0xc

.field public static final IMG_TYPE_MODE_BLUR_NO_BOKEH:I = 0x10c

.field public static final IMG_TYPE_MODE_BURST:I = 0x33

.field public static final IMG_TYPE_MODE_BURST_COVER:I = 0x37

.field public static final IMG_TYPE_MODE_HDR:I = 0x34

.field public static final IMG_TYPE_MODE_HDR_AUDIO_CAPTURE:I = 0x36

.field public static final IMG_TYPE_MODE_NORMAL:I = 0x0

.field public static final IMG_TYPE_MODE_REAL_BOKEH_HAS_BOKEH:I = 0x10

.field public static final IMG_TYPE_MODE_REAL_BOKEH_NO_BOKEH:I = 0x110

.field public static final IMG_TYPE_MODE_SOFY_OPTICAL_ZOOM:I = 0xb

.field public static final IMG_TYPE_MODE_THUMBNAIL:I = 0x38

.field public static final LAST_INTERNAL_SCAN_FINGERPRINT:Ljava/lang/String; = "lastScanFingerprint"

.field private static final MUSIC_DIR:Ljava/lang/String; = "/music/"

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final PATH_PLAYLISTS_COLUMN_INDEX:I = 0x1

.field private static final PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field public static final SCANNED_BUILD_PREFS_NAME:Ljava/lang/String; = "MediaScanBuild"

.field private static final SYSTEM_SOUNDS_DIR:Ljava/lang/String; = "/system/media/audio"

.field private static final TAG:Ljava/lang/String; = "MediaScanner"

.field private static mMediaPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mNoMediaPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastInternalScanFingerprint:Ljava/lang/String;


# instance fields
.field private final mAudioUri:Landroid/net/Uri;

.field private final mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field protected final mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultAlarmSet:Z

.field protected mDefaultMessageFilename:[Ljava/lang/String;

.field protected mDefaultMessageSet:[Z

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationSet:Z

.field protected mDefaultRingtoneFilename:[Ljava/lang/String;

.field protected mDefaultRingtoneSet:[Z

.field private mDrmManagerClient:Landroid/drm/DrmManagerClientEx;

.field private final mFilesUri:Landroid/net/Uri;

.field private final mFilesUriNoNotify:Landroid/net/Uri;

.field private final mImagesUri:Landroid/net/Uri;

.field private mMediaInserter:Landroid/media/MediaInserter;

.field private final mMediaProvider:Landroid/content/ContentProviderClient;

.field private final mMediaScannerExUtils:Landroid/media/MediaScannerExUtils;

.field private mMtpObjectHandle:I

.field private mNativeContext:J

.field private mOriginalCount:I

.field private final mPackageName:Ljava/lang/String;

.field private mPathInDatabase:Ljava/lang/String;

.field protected mPhoneCount:I

.field private final mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaylistEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaScanner$PlaylistEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaylistsUri:Landroid/net/Uri;

.field private final mProcessGenres:Z

.field private final mProcessPlaylists:Z

.field private final mThumbsUri:Landroid/net/Uri;

.field private final mVideoUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 149

    .line 1
    const-string/jumbo v0, "media_jni"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/media/MediaScanner;->native_init()V

    .line 8
    .line 9
    .line 10
    const-string v0, "format"

    .line 11
    .line 12
    const-string v1, "date_modified"

    .line 13
    .line 14
    const-string v2, "_id"

    .line 15
    .line 16
    const-string v3, "_data"

    .line 17
    .line 18
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 23
    .line 24
    filled-new-array {v2}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    .line 29
    .line 30
    const-string/jumbo v0, "playlist_id"

    .line 31
    .line 32
    .line 33
    filled-new-array {v0}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    .line 38
    .line 39
    const-string v1, "Blues"

    .line 40
    .line 41
    const-string v2, "Classic Rock"

    .line 42
    .line 43
    const-string v3, "Country"

    .line 44
    .line 45
    const-string v4, "Dance"

    .line 46
    .line 47
    const-string v5, "Disco"

    .line 48
    .line 49
    const-string v6, "Funk"

    .line 50
    .line 51
    const-string v7, "Grunge"

    .line 52
    .line 53
    const-string v8, "Hip-Hop"

    .line 54
    .line 55
    const-string v9, "Jazz"

    .line 56
    .line 57
    const-string v10, "Metal"

    .line 58
    .line 59
    const-string v11, "New Age"

    .line 60
    .line 61
    const-string v12, "Oldies"

    .line 62
    .line 63
    const-string v13, "Other"

    .line 64
    .line 65
    const-string v14, "Pop"

    .line 66
    .line 67
    const-string v15, "R&B"

    .line 68
    .line 69
    const-string v16, "Rap"

    .line 70
    .line 71
    const-string v17, "Reggae"

    .line 72
    .line 73
    const-string v18, "Rock"

    .line 74
    .line 75
    const-string v19, "Techno"

    .line 76
    .line 77
    const-string v20, "Industrial"

    .line 78
    .line 79
    const-string v21, "Alternative"

    .line 80
    .line 81
    const-string v22, "Ska"

    .line 82
    .line 83
    const-string v23, "Death Metal"

    .line 84
    .line 85
    const-string v24, "Pranks"

    .line 86
    .line 87
    const-string v25, "Soundtrack"

    .line 88
    .line 89
    const-string v26, "Euro-Techno"

    .line 90
    .line 91
    const-string v27, "Ambient"

    .line 92
    .line 93
    const-string v28, "Trip-Hop"

    .line 94
    .line 95
    const-string v29, "Vocal"

    .line 96
    .line 97
    const-string v30, "Jazz+Funk"

    .line 98
    .line 99
    const-string v31, "Fusion"

    .line 100
    .line 101
    const-string v32, "Trance"

    .line 102
    .line 103
    const-string v33, "Classical"

    .line 104
    .line 105
    const-string v34, "Instrumental"

    .line 106
    .line 107
    const-string v35, "Acid"

    .line 108
    .line 109
    const-string v36, "House"

    .line 110
    .line 111
    const-string v37, "Game"

    .line 112
    .line 113
    const-string v38, "Sound Clip"

    .line 114
    .line 115
    const-string v39, "Gospel"

    .line 116
    .line 117
    const-string v40, "Noise"

    .line 118
    .line 119
    const-string v41, "AlternRock"

    .line 120
    .line 121
    const-string v42, "Bass"

    .line 122
    .line 123
    const-string v43, "Soul"

    .line 124
    .line 125
    const-string v44, "Punk"

    .line 126
    .line 127
    const-string v45, "Space"

    .line 128
    .line 129
    const-string v46, "Meditative"

    .line 130
    .line 131
    const-string v47, "Instrumental Pop"

    .line 132
    .line 133
    const-string v48, "Instrumental Rock"

    .line 134
    .line 135
    const-string v49, "Ethnic"

    .line 136
    .line 137
    const-string v50, "Gothic"

    .line 138
    .line 139
    const-string v51, "Darkwave"

    .line 140
    .line 141
    const-string v52, "Techno-Industrial"

    .line 142
    .line 143
    const-string v53, "Electronic"

    .line 144
    .line 145
    const-string v54, "Pop-Folk"

    .line 146
    .line 147
    const-string v55, "Eurodance"

    .line 148
    .line 149
    const-string v56, "Dream"

    .line 150
    .line 151
    const-string v57, "Southern Rock"

    .line 152
    .line 153
    const-string v58, "Comedy"

    .line 154
    .line 155
    const-string v59, "Cult"

    .line 156
    .line 157
    const-string v60, "Gangsta"

    .line 158
    .line 159
    const-string v61, "Top 40"

    .line 160
    .line 161
    const-string v62, "Christian Rap"

    .line 162
    .line 163
    const-string v63, "Pop/Funk"

    .line 164
    .line 165
    const-string v64, "Jungle"

    .line 166
    .line 167
    const-string v65, "Native American"

    .line 168
    .line 169
    const-string v66, "Cabaret"

    .line 170
    .line 171
    const-string v67, "New Wave"

    .line 172
    .line 173
    const-string v68, "Psychadelic"

    .line 174
    .line 175
    const-string v69, "Rave"

    .line 176
    .line 177
    const-string v70, "Showtunes"

    .line 178
    .line 179
    const-string v71, "Trailer"

    .line 180
    .line 181
    const-string v72, "Lo-Fi"

    .line 182
    .line 183
    const-string v73, "Tribal"

    .line 184
    .line 185
    const-string v74, "Acid Punk"

    .line 186
    .line 187
    const-string v75, "Acid Jazz"

    .line 188
    .line 189
    const-string v76, "Polka"

    .line 190
    .line 191
    const-string v77, "Retro"

    .line 192
    .line 193
    const-string v78, "Musical"

    .line 194
    .line 195
    const-string v79, "Rock & Roll"

    .line 196
    .line 197
    const-string v80, "Hard Rock"

    .line 198
    .line 199
    const-string v81, "Folk"

    .line 200
    .line 201
    const-string v82, "Folk-Rock"

    .line 202
    .line 203
    const-string v83, "National Folk"

    .line 204
    .line 205
    const-string v84, "Swing"

    .line 206
    .line 207
    const-string v85, "Fast Fusion"

    .line 208
    .line 209
    const-string v86, "Bebob"

    .line 210
    .line 211
    const-string v87, "Latin"

    .line 212
    .line 213
    const-string v88, "Revival"

    .line 214
    .line 215
    const-string v89, "Celtic"

    .line 216
    .line 217
    const-string v90, "Bluegrass"

    .line 218
    .line 219
    const-string v91, "Avantgarde"

    .line 220
    .line 221
    const-string v92, "Gothic Rock"

    .line 222
    .line 223
    const-string v93, "Progressive Rock"

    .line 224
    .line 225
    const-string v94, "Psychedelic Rock"

    .line 226
    .line 227
    const-string v95, "Symphonic Rock"

    .line 228
    .line 229
    const-string v96, "Slow Rock"

    .line 230
    .line 231
    const-string v97, "Big Band"

    .line 232
    .line 233
    const-string v98, "Chorus"

    .line 234
    .line 235
    const-string v99, "Easy Listening"

    .line 236
    .line 237
    const-string v100, "Acoustic"

    .line 238
    .line 239
    const-string v101, "Humour"

    .line 240
    .line 241
    const-string v102, "Speech"

    .line 242
    .line 243
    const-string v103, "Chanson"

    .line 244
    .line 245
    const-string v104, "Opera"

    .line 246
    .line 247
    const-string v105, "Chamber Music"

    .line 248
    .line 249
    const-string v106, "Sonata"

    .line 250
    .line 251
    const-string v107, "Symphony"

    .line 252
    .line 253
    const-string v108, "Booty Bass"

    .line 254
    .line 255
    const-string v109, "Primus"

    .line 256
    .line 257
    const-string v110, "Porn Groove"

    .line 258
    .line 259
    const-string v111, "Satire"

    .line 260
    .line 261
    const-string v112, "Slow Jam"

    .line 262
    .line 263
    const-string v113, "Club"

    .line 264
    .line 265
    const-string v114, "Tango"

    .line 266
    .line 267
    const-string v115, "Samba"

    .line 268
    .line 269
    const-string v116, "Folklore"

    .line 270
    .line 271
    const-string v117, "Ballad"

    .line 272
    .line 273
    const-string v118, "Power Ballad"

    .line 274
    .line 275
    const-string v119, "Rhythmic Soul"

    .line 276
    .line 277
    const-string v120, "Freestyle"

    .line 278
    .line 279
    const-string v121, "Duet"

    .line 280
    .line 281
    const-string v122, "Punk Rock"

    .line 282
    .line 283
    const-string v123, "Drum Solo"

    .line 284
    .line 285
    const-string v124, "A capella"

    .line 286
    .line 287
    const-string v125, "Euro-House"

    .line 288
    .line 289
    const-string v126, "Dance Hall"

    .line 290
    .line 291
    const-string v127, "Goa"

    .line 292
    .line 293
    const-string v128, "Drum & Bass"

    .line 294
    .line 295
    const-string v129, "Club-House"

    .line 296
    .line 297
    const-string v130, "Hardcore"

    .line 298
    .line 299
    const-string v131, "Terror"

    .line 300
    .line 301
    const-string v132, "Indie"

    .line 302
    .line 303
    const-string v133, "Britpop"

    .line 304
    .line 305
    const/16 v134, 0x0

    .line 306
    .line 307
    const-string v135, "Polsk Punk"

    .line 308
    .line 309
    const-string v136, "Beat"

    .line 310
    .line 311
    const-string v137, "Christian Gangsta"

    .line 312
    .line 313
    const-string v138, "Heavy Metal"

    .line 314
    .line 315
    const-string v139, "Black Metal"

    .line 316
    .line 317
    const-string v140, "Crossover"

    .line 318
    .line 319
    const-string v141, "Contemporary Christian"

    .line 320
    .line 321
    const-string v142, "Christian Rock"

    .line 322
    .line 323
    const-string v143, "Merengue"

    .line 324
    .line 325
    const-string v144, "Salsa"

    .line 326
    .line 327
    const-string v145, "Thrash Metal"

    .line 328
    .line 329
    const-string v146, "Anime"

    .line 330
    .line 331
    const-string v147, "JPop"

    .line 332
    .line 333
    const-string v148, "Synthpop"

    .line 334
    .line 335
    filled-new-array/range {v1 .. v148}, [Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    sput-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    .line 340
    .line 341
    new-instance v0, Ljava/util/HashMap;

    .line 342
    .line 343
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 344
    .line 345
    .line 346
    sput-object v0, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    .line 347
    .line 348
    new-instance v0, Ljava/util/HashMap;

    .line 349
    .line 350
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 351
    .line 352
    .line 353
    sput-object v0, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    .line 354
    .line 355
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/media/MediaScanner;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 16
    .line 17
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 23
    .line 24
    new-instance v2, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .line 30
    .line 31
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    iput-object v2, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClientEx;

    .line 40
    .line 41
    new-instance v3, Landroid/media/MediaScannerExUtils;

    .line 42
    .line 43
    invoke-direct {v3, p0}, Landroid/media/MediaScannerExUtils;-><init>(Landroid/media/MediaScanner;)V

    .line 44
    .line 45
    .line 46
    iput-object v3, p0, Landroid/media/MediaScanner;->mMediaScannerExUtils:Landroid/media/MediaScannerExUtils;

    .line 47
    .line 48
    new-instance v3, Landroid/media/MediaScanner$MyMediaScannerClient;

    .line 49
    .line 50
    invoke-direct {v3, p0}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;)V

    .line 51
    .line 52
    .line 53
    iput-object v3, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    .line 54
    .line 55
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_setup()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    iput-object v3, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    .line 65
    .line 66
    iput-object p2, p0, Landroid/media/MediaScanner;->mVolumeName:Ljava/lang/String;

    .line 67
    .line 68
    const/4 v3, 0x1

    .line 69
    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 70
    .line 71
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 72
    .line 73
    invoke-direct {p0}, Landroid/media/MediaScanner;->setDefaultRingtoneFileNames()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string/jumbo v4, "media"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iput-object v1, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 88
    .line 89
    sget-object v1, Landroid/media/MediaScanner;->sLastInternalScanFingerprint:Ljava/lang/String;

    .line 90
    .line 91
    const/4 v4, 0x0

    .line 92
    if-nez v1, :cond_0

    .line 93
    .line 94
    const-string v1, "MediaScanBuild"

    .line 95
    .line 96
    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    new-instance v5, Ljava/lang/String;

    .line 101
    .line 102
    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string/jumbo v6, "lastScanFingerprint"

    .line 106
    .line 107
    .line 108
    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    sput-object v1, Landroid/media/MediaScanner;->sLastInternalScanFingerprint:Ljava/lang/String;

    .line 113
    .line 114
    :cond_0
    invoke-static {p2}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    iput-object v1, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    .line 119
    .line 120
    invoke-static {p2}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iput-object v1, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    .line 125
    .line 126
    invoke-static {p2}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    iput-object v1, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    .line 131
    .line 132
    invoke-static {p2}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    iput-object v1, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    .line 137
    .line 138
    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    iput-object v1, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    .line 143
    .line 144
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    const-string/jumbo v5, "nonotify"

    .line 149
    .line 150
    .line 151
    const-string v6, "1"

    .line 152
    .line 153
    invoke-virtual {v1, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    iput-object v1, p0, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    .line 162
    .line 163
    const-string/jumbo v1, "internal"

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-nez v1, :cond_1

    .line 171
    .line 172
    iput-boolean v3, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    .line 173
    .line 174
    iput-boolean v3, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    .line 175
    .line 176
    invoke-static {p2}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    iput-object p2, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_1
    iput-boolean v4, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    .line 184
    .line 185
    iput-boolean v4, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    .line 186
    .line 187
    iput-object v2, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 188
    .line 189
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 198
    .line 199
    if-eqz p1, :cond_3

    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    if-eqz p2, :cond_3

    .line 210
    .line 211
    if-eqz p1, :cond_2

    .line 212
    .line 213
    const-string v1, "_"

    .line 214
    .line 215
    invoke-static {p2, v1, p1}, Landroid/app/m;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_2
    invoke-direct {p0, p2}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :cond_3
    :goto_1
    const-string p1, "close"

    .line 227
    .line 228
    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Landroid/media/MediaScanner;)Z
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaScanner;->isDrmEnabled()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1000(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Landroid/media/MediaScanner;->isSystemSoundWithMetadata(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1100()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/media/MediaScanner;->sLastInternalScanFingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1200(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method public static synthetic access$1300(Landroid/media/MediaScanner;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    return p0
.end method

.method public static synthetic access$1400()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object p0
.end method

.method public static synthetic access$1600(Landroid/media/MediaScanner;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1700(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic access$1800(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    return-object p0
.end method

.method public static synthetic access$1900(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/media/MediaScanner;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    return p0
.end method

.method public static synthetic access$2000(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic access$2100(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic access$2200(Landroid/media/MediaScanner;)Landroid/content/ContentProviderClient;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    return-object p0
.end method

.method public static synthetic access$2300(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaScanner;->mPathInDatabase:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2400(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClientEx;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClientEx;

    return-object p0
.end method

.method public static synthetic access$2402(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClientEx;)Landroid/drm/DrmManagerClientEx;
    .locals 0

    iput-object p1, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClientEx;

    return-object p1
.end method

.method public static synthetic access$2600(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$300(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/media/MediaScanner;)I
    .locals 0

    iget p0, p0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    return p0
.end method

.method public static synthetic access$500(Landroid/media/MediaScanner;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return p0
.end method

.method public static synthetic access$502(Landroid/media/MediaScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return p1
.end method

.method public static synthetic access$600(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$700(Landroid/media/MediaScanner;)Landroid/media/MediaScannerExUtils;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaScanner;->mMediaScannerExUtils:Landroid/media/MediaScannerExUtils;

    return-object p0
.end method

.method public static synthetic access$800(Landroid/media/MediaScanner;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return p0
.end method

.method public static synthetic access$802(Landroid/media/MediaScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return p1
.end method

.method public static synthetic access$900(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object p0
.end method

.method private cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/media/MediaScanner$PlaylistEntry;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/media/MediaScanner$PlaylistEntry;-><init>(Landroid/media/MediaScanner$1;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    :goto_0
    if-lez v1, :cond_0

    .line 12
    .line 13
    add-int/lit8 v2, v1, -0x1

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v2, 0x3

    .line 29
    if-ge v1, v2, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x0

    .line 37
    if-ge v1, v2, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/16 v2, 0x2f

    .line 48
    .line 49
    const/4 v4, 0x1

    .line 50
    if-eq v1, v2, :cond_3

    .line 51
    .line 52
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const/16 v2, 0x3a

    .line 63
    .line 64
    if-ne v1, v2, :cond_4

    .line 65
    .line 66
    const/4 v1, 0x2

    .line 67
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    const/16 v2, 0x5c

    .line 72
    .line 73
    if-ne v1, v2, :cond_4

    .line 74
    .line 75
    :cond_3
    move v3, v4

    .line 76
    :cond_4
    if-nez v3, :cond_5

    .line 77
    .line 78
    invoke-static {p2, p1}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    :cond_5
    iput-object p1, v0, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    .line 83
    .line 84
    iget-object p1, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public static clearMediaPathCache(ZZ)V
    .locals 1

    .line 1
    const-class v0, Landroid/media/MediaScanner;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    :try_start_0
    sget-object p0, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    sget-object p0, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 19
    .line 20
    .line 21
    :cond_1
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method private isDrmEnabled()Z
    .locals 2

    .line 1
    const-string v0, "drm.service.enabled"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string/jumbo v1, "true"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0
.end method

.method private static isNoMediaFile(Ljava/lang/String;)Z
    .locals 11

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    const/16 v0, 0x2f

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ltz v0, :cond_5

    .line 21
    .line 22
    add-int/lit8 v2, v0, 0x2

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-ge v2, v3, :cond_5

    .line 29
    .line 30
    add-int/lit8 v2, v0, 0x1

    .line 31
    .line 32
    const-string v3, "._"

    .line 33
    .line 34
    const/4 v4, 0x2

    .line 35
    invoke-virtual {p0, v2, v3, v1, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v10, 0x1

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    return v10

    .line 43
    :cond_1
    const/4 v5, 0x1

    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    add-int/lit8 v6, v3, -0x4

    .line 49
    .line 50
    const-string v7, ".jpg"

    .line 51
    .line 52
    const/4 v8, 0x0

    .line 53
    const/4 v9, 0x4

    .line 54
    move-object v4, p0

    .line 55
    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_5

    .line 60
    .line 61
    const/4 v5, 0x1

    .line 62
    const-string v7, "AlbumArt_{"

    .line 63
    .line 64
    const/4 v8, 0x0

    .line 65
    const/16 v9, 0xa

    .line 66
    .line 67
    move-object v4, p0

    .line 68
    move v6, v2

    .line 69
    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-nez v3, :cond_4

    .line 74
    .line 75
    const/4 v5, 0x1

    .line 76
    const-string v7, "AlbumArt."

    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    const/16 v9, 0x9

    .line 80
    .line 81
    move-object v4, p0

    .line 82
    move v6, v2

    .line 83
    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_2

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    sub-int/2addr v3, v0

    .line 95
    sub-int/2addr v3, v10

    .line 96
    const/16 v0, 0x11

    .line 97
    .line 98
    if-ne v3, v0, :cond_3

    .line 99
    .line 100
    const/4 v5, 0x1

    .line 101
    const-string v7, "AlbumArtSmall"

    .line 102
    .line 103
    const/4 v8, 0x0

    .line 104
    const/16 v9, 0xd

    .line 105
    .line 106
    move-object v4, p0

    .line 107
    move v6, v2

    .line 108
    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_4

    .line 113
    .line 114
    :cond_3
    const/16 v0, 0xa

    .line 115
    .line 116
    if-ne v3, v0, :cond_5

    .line 117
    .line 118
    const/4 v5, 0x1

    .line 119
    const-string v7, "Folder"

    .line 120
    .line 121
    const/4 v8, 0x0

    .line 122
    const/4 v9, 0x6

    .line 123
    move-object v4, p0

    .line 124
    move v6, v2

    .line 125
    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    if-eqz p0, :cond_5

    .line 130
    .line 131
    :cond_4
    :goto_0
    return v10

    .line 132
    :cond_5
    return v1
.end method

.method public static isNoMediaPath(Ljava/lang/String;)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, "/."

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ltz v1, :cond_1

    .line 13
    .line 14
    return v2

    .line 15
    :cond_1
    const/16 v1, 0x2f

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-gtz v3, :cond_2

    .line 22
    .line 23
    return v0

    .line 24
    :cond_2
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-class v4, Landroid/media/MediaScanner;

    .line 29
    .line 30
    monitor-enter v4

    .line 31
    :try_start_0
    sget-object v5, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_3

    .line 38
    .line 39
    monitor-exit v4

    .line 40
    return v2

    .line 41
    :cond_3
    sget-object v5, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-nez v5, :cond_6

    .line 48
    .line 49
    move v5, v2

    .line 50
    :goto_0
    if-ltz v5, :cond_5

    .line 51
    .line 52
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->indexOf(II)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-le v6, v5, :cond_4

    .line 57
    .line 58
    add-int/lit8 v6, v6, 0x1

    .line 59
    .line 60
    new-instance v5, Ljava/io/File;

    .line 61
    .line 62
    new-instance v7, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v8, ".nomedia"

    .line 75
    .line 76
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_4

    .line 91
    .line 92
    sget-object p0, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    .line 93
    .line 94
    const-string v0, ""

    .line 95
    .line 96
    invoke-virtual {p0, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    monitor-exit v4

    .line 100
    return v2

    .line 101
    :cond_4
    move v5, v6

    .line 102
    goto :goto_0

    .line 103
    :cond_5
    sget-object v0, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    .line 104
    .line 105
    const-string v1, ""

    .line 106
    .line 107
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    :cond_6
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    return p0

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    throw p0
.end method

.method private static isSystemSoundWithMetadata(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "/system/media/audio/alarms/"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "/system/media/audio/ringtones/"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, "/system/media/audio/notifications/"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 29
    return p0
.end method

.method private matchEntries(JLjava/lang/String;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    if-ge v3, v0, :cond_3

    .line 11
    .line 12
    iget-object v4, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Landroid/media/MediaScanner$PlaylistEntry;

    .line 19
    .line 20
    iget v5, v4, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    .line 21
    .line 22
    const v6, 0x7fffffff

    .line 23
    .line 24
    .line 25
    if-ne v5, v6, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    iget-object v1, v4, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iput-wide p1, v4, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 37
    .line 38
    iput v6, v4, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object v1, v4, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    .line 42
    .line 43
    invoke-direct {p0, p3, v1}, Landroid/media/MediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iget v5, v4, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    .line 48
    .line 49
    if-le v1, v5, :cond_2

    .line 50
    .line 51
    iput-wide p1, v4, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 52
    .line 53
    iput v1, v4, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    .line 54
    .line 55
    :cond_2
    :goto_1
    move v1, v2

    .line 56
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    return v1
.end method

.method private matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-lez v0, :cond_5

    .line 12
    .line 13
    if-lez v1, :cond_5

    .line 14
    .line 15
    add-int/lit8 v4, v0, -0x1

    .line 16
    .line 17
    const/16 v5, 0x2f

    .line 18
    .line 19
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->lastIndexOf(II)I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    add-int/lit8 v7, v1, -0x1

    .line 24
    .line 25
    invoke-virtual {p2, v5, v7}, Ljava/lang/String;->lastIndexOf(II)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/16 v8, 0x5c

    .line 30
    .line 31
    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->lastIndexOf(II)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual {p2, v8, v7}, Ljava/lang/String;->lastIndexOf(II)I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-le v6, v4, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    move v6, v4

    .line 43
    :goto_1
    if-le v5, v7, :cond_1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    move v5, v7

    .line 47
    :goto_2
    if-gez v6, :cond_2

    .line 48
    .line 49
    move v6, v2

    .line 50
    goto :goto_3

    .line 51
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 52
    .line 53
    :goto_3
    if-gez v5, :cond_3

    .line 54
    .line 55
    move v5, v2

    .line 56
    goto :goto_4

    .line 57
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 58
    .line 59
    :goto_4
    sub-int v12, v0, v6

    .line 60
    .line 61
    sub-int/2addr v1, v5

    .line 62
    if-eq v1, v12, :cond_4

    .line 63
    .line 64
    goto :goto_5

    .line 65
    :cond_4
    const/4 v8, 0x1

    .line 66
    move-object v7, p1

    .line 67
    move v9, v6

    .line 68
    move-object v10, p2

    .line 69
    move v11, v5

    .line 70
    invoke-virtual/range {v7 .. v12}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    add-int/lit8 v3, v3, 0x1

    .line 77
    .line 78
    add-int/lit8 v0, v6, -0x1

    .line 79
    .line 80
    add-int/lit8 v1, v5, -0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    :goto_5
    return v3
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup()V
.end method

.method private postscan([Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/media/MediaScanner;->processPlayLists()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget p1, p0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    .line 13
    .line 14
    const-string v0, "external"

    .line 15
    .line 16
    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-direct {p0}, Landroid/media/MediaScanner;->pruneDeadThumbnailFiles()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object p1, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private prescan(Ljava/lang/String;Z)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    const/4 v2, 0x1

    .line 10
    const-string v3, ""

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    new-array v5, v0, [Ljava/lang/String;

    .line 16
    .line 17
    aput-object v3, v5, v4

    .line 18
    .line 19
    aput-object p1, v5, v2

    .line 20
    .line 21
    const-string v6, "_id>? AND _data=?"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    filled-new-array {v3}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const-string v6, "_id>?"

    .line 29
    .line 30
    :goto_0
    move v7, v4

    .line 31
    :goto_1
    iget v8, v1, Landroid/media/MediaScanner;->mPhoneCount:I

    .line 32
    .line 33
    if-ge v7, v8, :cond_1

    .line 34
    .line 35
    iget-object v8, v1, Landroid/media/MediaScanner;->mDefaultRingtoneSet:[Z

    .line 36
    .line 37
    const-string/jumbo v9, "ringtone"

    .line 38
    .line 39
    .line 40
    invoke-static {v9, v7}, Landroid/media/MediaScannerExUtils;->getSetting(Ljava/lang/String;I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    invoke-virtual {v1, v9}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    aput-boolean v9, v8, v7

    .line 49
    .line 50
    add-int/lit8 v7, v7, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const-string/jumbo v7, "notification_sound"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v7}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    iput-boolean v7, v1, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    .line 61
    .line 62
    const-string v7, "alarm_alert"

    .line 63
    .line 64
    invoke-virtual {v1, v7}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    iput-boolean v7, v1, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    .line 69
    .line 70
    iget-object v7, v1, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    .line 71
    .line 72
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    const-string v8, "deletedata"

    .line 77
    .line 78
    const-string v9, "false"

    .line 79
    .line 80
    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 81
    .line 82
    .line 83
    new-instance v14, Landroid/media/MediaScanner$MediaBulkDeleter;

    .line 84
    .line 85
    iget-object v8, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 86
    .line 87
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-direct {v14, v8, v7}, Landroid/media/MediaScanner$MediaBulkDeleter;-><init>(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V

    .line 92
    .line 93
    .line 94
    const/4 v15, 0x0

    .line 95
    if-eqz p2, :cond_9

    .line 96
    .line 97
    :try_start_0
    iget-object v7, v1, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    .line 98
    .line 99
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    const-string/jumbo v8, "limit"

    .line 104
    .line 105
    .line 106
    const-string v9, "1000"

    .line 107
    .line 108
    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 113
    .line 114
    .line 115
    move-result-object v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 116
    const-wide/high16 v7, -0x8000000000000000L

    .line 117
    .line 118
    move-wide v12, v7

    .line 119
    move-object v7, v15

    .line 120
    :cond_2
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    aput-object v8, v5, v4

    .line 136
    .line 137
    if-eqz v7, :cond_3

    .line 138
    .line 139
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    .line 141
    .line 142
    move-object/from16 v17, v15

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_3
    move-object/from16 v17, v7

    .line 146
    .line 147
    :goto_2
    :try_start_2
    iget-object v7, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 148
    .line 149
    sget-object v9, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 150
    .line 151
    const-string v18, "_id"

    .line 152
    .line 153
    const/16 v19, 0x0

    .line 154
    .line 155
    move-object/from16 v8, v16

    .line 156
    .line 157
    move-object v10, v6

    .line 158
    move-object v11, v5

    .line 159
    move-wide/from16 v20, v12

    .line 160
    .line 161
    move-object/from16 v12, v18

    .line 162
    .line 163
    move-object/from16 v13, v19

    .line 164
    .line 165
    invoke-virtual/range {v7 .. v13}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 166
    .line 167
    .line 168
    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    if-nez v7, :cond_4

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_4
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    if-nez v8, :cond_5

    .line 177
    .line 178
    :goto_3
    move-object v15, v7

    .line 179
    goto/16 :goto_8

    .line 180
    .line 181
    :cond_5
    move-wide/from16 v12, v20

    .line 182
    .line 183
    :cond_6
    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 184
    .line 185
    .line 186
    move-result v8

    .line 187
    if-eqz v8, :cond_2

    .line 188
    .line 189
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 190
    .line 191
    .line 192
    move-result-wide v12

    .line 193
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    const/4 v10, 0x3

    .line 202
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 203
    .line 204
    .line 205
    if-eqz v8, :cond_6

    .line 206
    .line 207
    const-string v10, "/"

    .line 208
    .line 209
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 213
    if-eqz v10, :cond_6

    .line 214
    .line 215
    :try_start_4
    sget v10, Landroid/system/OsConstants;->F_OK:I

    .line 216
    .line 217
    invoke-static {v8, v10}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    .line 218
    .line 219
    .line 220
    move-result v10
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 221
    goto :goto_5

    .line 222
    :catch_0
    move v10, v4

    .line 223
    :goto_5
    if-nez v10, :cond_6

    .line 224
    .line 225
    :try_start_5
    invoke-static {v9}, Landroid/mtp/MtpConstants;->isAbstractObject(I)Z

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    if-nez v9, :cond_6

    .line 230
    .line 231
    invoke-static {v8}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    .line 232
    .line 233
    .line 234
    move-result-object v9

    .line 235
    if-nez v9, :cond_7

    .line 236
    .line 237
    move v9, v4

    .line 238
    goto :goto_6

    .line 239
    :cond_7
    iget v9, v9, Landroid/media/MediaFile$MediaFileType;->fileType:I

    .line 240
    .line 241
    :goto_6
    invoke-static {v9}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    .line 242
    .line 243
    .line 244
    move-result v9

    .line 245
    if-nez v9, :cond_6

    .line 246
    .line 247
    invoke-virtual {v14, v12, v13}, Landroid/media/MediaScanner$MediaBulkDeleter;->delete(J)V

    .line 248
    .line 249
    .line 250
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 251
    .line 252
    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v9

    .line 256
    const-string v10, "/.nomedia"

    .line 257
    .line 258
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 259
    .line 260
    .line 261
    move-result v9

    .line 262
    if-eqz v9, :cond_6

    .line 263
    .line 264
    invoke-virtual {v14}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 265
    .line 266
    .line 267
    new-instance v9, Ljava/io/File;

    .line 268
    .line 269
    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    iget-object v9, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 277
    .line 278
    const-string/jumbo v10, "unhide"

    .line 279
    .line 280
    .line 281
    invoke-virtual {v9, v10, v8, v15}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 282
    .line 283
    .line 284
    goto :goto_4

    .line 285
    :catchall_0
    move-exception v0

    .line 286
    move-object/from16 v15, v17

    .line 287
    .line 288
    goto :goto_7

    .line 289
    :catchall_1
    move-exception v0

    .line 290
    move-object v15, v7

    .line 291
    goto :goto_7

    .line 292
    :catchall_2
    move-exception v0

    .line 293
    :goto_7
    if-eqz v15, :cond_8

    .line 294
    .line 295
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 296
    .line 297
    .line 298
    :cond_8
    invoke-virtual {v14}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 299
    .line 300
    .line 301
    throw v0

    .line 302
    :cond_9
    :goto_8
    if-eqz v15, :cond_a

    .line 303
    .line 304
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 305
    .line 306
    .line 307
    :cond_a
    invoke-virtual {v14}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 308
    .line 309
    .line 310
    iput v4, v1, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 311
    .line 312
    iget-object v5, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 313
    .line 314
    iget-object v6, v1, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    .line 315
    .line 316
    sget-object v7, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    .line 317
    .line 318
    const/4 v8, 0x0

    .line 319
    const/4 v9, 0x0

    .line 320
    const/4 v10, 0x0

    .line 321
    const/4 v11, 0x0

    .line 322
    invoke-virtual/range {v5 .. v11}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    if-eqz v0, :cond_b

    .line 327
    .line 328
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    iput v2, v1, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 333
    .line 334
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 335
    .line 336
    .line 337
    :cond_b
    return-void
.end method

.method private processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3
    .line 4
    .line 5
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p0, v2, v3, v0}, Landroid/media/MediaScanner;->matchEntries(JLjava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    move v0, v1

    .line 34
    :goto_0
    if-ge v1, p1, :cond_3

    .line 35
    .line 36
    iget-object v2, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Landroid/media/MediaScanner$PlaylistEntry;

    .line 43
    .line 44
    iget v3, v2, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    .line 45
    .line 46
    if-lez v3, :cond_2

    .line 47
    .line 48
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 49
    .line 50
    .line 51
    const-string/jumbo v3, "play_order"

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    .line 60
    .line 61
    const-string v3, "audio_id"

    .line 62
    .line 63
    iget-wide v4, v2, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 64
    .line 65
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {p2, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 73
    .line 74
    invoke-virtual {v2, p3, p2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    add-int/lit8 v0, v0, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception p1

    .line 81
    const-string p2, "MediaScanner"

    .line 82
    .line 83
    const-string p3, "RemoteException in MediaScanner.processCachedPlaylist()"

    .line 84
    .line 85
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    iget-object p1, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method private native processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 6

    .line 1
    const-string v0, "IOException in MediaScanner.processM3uPlayList()"

    .line 2
    .line 3
    const-string v1, "MediaScanner"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 7
    .line 8
    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    new-instance p1, Ljava/io/BufferedReader;

    .line 18
    .line 19
    new-instance v4, Ljava/io/InputStreamReader;

    .line 20
    .line 21
    new-instance v5, Ljava/io/FileInputStream;

    .line 22
    .line 23
    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 27
    .line 28
    .line 29
    const/16 v3, 0x2000

    .line 30
    .line 31
    invoke-direct {p1, v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    .line 33
    .line 34
    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v3, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 41
    .line 42
    .line 43
    :goto_0
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-lez v3, :cond_0

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const/16 v4, 0x23

    .line 57
    .line 58
    if-eq v3, v4, :cond_0

    .line 59
    .line 60
    invoke-direct {p0, v2, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    move-object v2, p1

    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    move-exception p2

    .line 74
    move-object v2, p1

    .line 75
    goto :goto_4

    .line 76
    :catch_0
    move-exception p2

    .line 77
    move-object v2, p1

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 80
    .line 81
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :catch_1
    move-exception p1

    .line 86
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :catchall_1
    move-exception p2

    .line 91
    goto :goto_4

    .line 92
    :catch_2
    move-exception p2

    .line 93
    :goto_2
    :try_start_3
    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    .line 95
    .line 96
    if-eqz v2, :cond_3

    .line 97
    .line 98
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 99
    .line 100
    .line 101
    :cond_3
    :goto_3
    return-void

    .line 102
    :goto_4
    if-eqz v2, :cond_4

    .line 103
    .line 104
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 105
    .line 106
    .line 107
    goto :goto_5

    .line 108
    :catch_3
    move-exception p1

    .line 109
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .line 111
    .line 112
    :cond_4
    :goto_5
    throw p2
.end method

.method private processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    .locals 8

    .line 1
    iget-object v1, p1, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v4, Landroid/content/ContentValues;

    .line 4
    .line 5
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x2f

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ltz v0, :cond_7

    .line 15
    .line 16
    iget-wide v2, p1, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    .line 17
    .line 18
    const-string/jumbo v5, "name"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    if-nez v6, :cond_1

    .line 26
    .line 27
    const-string/jumbo v6, "title"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    if-nez v6, :cond_1

    .line 35
    .line 36
    const/16 v6, 0x2e

    .line 37
    .line 38
    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-gez v6, :cond_0

    .line 43
    .line 44
    add-int/lit8 v6, v0, 0x1

    .line 45
    .line 46
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    add-int/lit8 v7, v0, 0x1

    .line 52
    .line 53
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    :cond_1
    :goto_0
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-wide v5, p1, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    .line 61
    .line 62
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string v5, "date_modified"

    .line 67
    .line 68
    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 69
    .line 70
    .line 71
    const-wide/16 v5, 0x0

    .line 72
    .line 73
    cmp-long p1, v2, v5

    .line 74
    .line 75
    const-string/jumbo v5, "members"

    .line 76
    .line 77
    .line 78
    if-nez p1, :cond_2

    .line 79
    .line 80
    const-string p1, "_data"

    .line 81
    .line 82
    invoke-virtual {v4, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 86
    .line 87
    iget-object v2, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 88
    .line 89
    invoke-virtual {p1, v2, v4}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    .line 94
    .line 95
    .line 96
    invoke-static {p1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    iget-object p1, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 102
    .line 103
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iget-object v2, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 108
    .line 109
    const/4 v3, 0x0

    .line 110
    invoke-virtual {v2, p1, v4, v3, v3}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    invoke-static {p1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget-object v2, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 118
    .line 119
    invoke-virtual {v2, p1, v3, v3}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    :goto_1
    move-object v3, p1

    .line 123
    add-int/lit8 v0, v0, 0x1

    .line 124
    .line 125
    const/4 p1, 0x0

    .line 126
    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {v1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-nez v0, :cond_3

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_3
    iget p1, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    .line 138
    .line 139
    :goto_2
    const/16 v0, 0x29

    .line 140
    .line 141
    if-ne p1, v0, :cond_4

    .line 142
    .line 143
    move-object v0, p0

    .line 144
    move-object v5, p2

    .line 145
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_4
    const/16 v0, 0x2a

    .line 150
    .line 151
    if-ne p1, v0, :cond_5

    .line 152
    .line 153
    move-object v0, p0

    .line 154
    move-object v5, p2

    .line 155
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_5
    const/16 v0, 0x2b

    .line 160
    .line 161
    if-ne p1, v0, :cond_6

    .line 162
    .line 163
    move-object v0, p0

    .line 164
    move-object v5, p2

    .line 165
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    .line 166
    .line 167
    .line 168
    :cond_6
    :goto_3
    return-void

    .line 169
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 170
    .line 171
    const-string p2, "bad path "

    .line 172
    .line 173
    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p1
.end method

.method private processPlayLists()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 9
    .line 10
    iget-object v3, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    .line 11
    .line 12
    sget-object v4, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 13
    .line 14
    const-string/jumbo v5, "media_type=2"

    .line 15
    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v8, 0x0

    .line 20
    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Landroid/media/MediaScanner$FileEntry;

    .line 35
    .line 36
    iget-boolean v3, v2, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-direct {p0, v2, v1}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    if-eqz v1, :cond_3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 51
    .line 52
    .line 53
    :cond_2
    throw v0

    .line 54
    :catch_0
    if-eqz v1, :cond_3

    .line 55
    .line 56
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 57
    .line 58
    .line 59
    :cond_3
    return-void
.end method

.method private processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 6

    .line 1
    const-string v0, "IOException in MediaScanner.processPlsPlayList()"

    .line 2
    .line 3
    const-string v1, "MediaScanner"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 7
    .line 8
    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    new-instance p1, Ljava/io/BufferedReader;

    .line 18
    .line 19
    new-instance v4, Ljava/io/InputStreamReader;

    .line 20
    .line 21
    new-instance v5, Ljava/io/FileInputStream;

    .line 22
    .line 23
    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 27
    .line 28
    .line 29
    const/16 v3, 0x2000

    .line 30
    .line 31
    invoke-direct {p1, v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    .line 33
    .line 34
    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v3, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 41
    .line 42
    .line 43
    :goto_0
    if-eqz v2, :cond_1

    .line 44
    .line 45
    const-string v3, "File"

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    const/16 v3, 0x3d

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-lez v3, :cond_0

    .line 60
    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-direct {p0, v2, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    .line 78
    move-object v2, p1

    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception p2

    .line 81
    move-object v2, p1

    .line 82
    goto :goto_4

    .line 83
    :catch_0
    move-exception p2

    .line 84
    move-object v2, p1

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 87
    .line 88
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :catch_1
    move-exception p1

    .line 93
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :catchall_1
    move-exception p2

    .line 98
    goto :goto_4

    .line 99
    :catch_2
    move-exception p2

    .line 100
    :goto_2
    :try_start_3
    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 101
    .line 102
    .line 103
    if-eqz v2, :cond_3

    .line 104
    .line 105
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 106
    .line 107
    .line 108
    :cond_3
    :goto_3
    return-void

    .line 109
    :goto_4
    if-eqz v2, :cond_4

    .line 110
    .line 111
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 112
    .line 113
    .line 114
    goto :goto_5

    .line 115
    :catch_3
    move-exception p1

    .line 116
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .line 118
    .line 119
    :cond_4
    :goto_5
    throw p2
.end method

.method private processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 4

    .line 1
    const-string v0, "IOException in MediaScanner.processWplPlayList()"

    .line 2
    .line 3
    const-string v1, "MediaScanner"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 7
    .line 8
    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    new-instance p1, Ljava/io/FileInputStream;

    .line 18
    .line 19
    invoke-direct {p1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    .line 21
    .line 22
    :try_start_1
    iget-object v2, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 25
    .line 26
    .line 27
    const-string v2, "UTF-8"

    .line 28
    .line 29
    invoke-static {v2}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-instance v3, Landroid/media/MediaScanner$WplHandler;

    .line 34
    .line 35
    invoke-direct {v3, p0, p2, p3, p5}, Landroid/media/MediaScanner$WplHandler;-><init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;Landroid/database/Cursor;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/media/MediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-static {p1, v2, p2}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    .line 48
    move-object v2, p1

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p2

    .line 51
    move-object v2, p1

    .line 52
    goto :goto_4

    .line 53
    :catch_0
    move-exception p2

    .line 54
    move-object v2, p1

    .line 55
    goto :goto_1

    .line 56
    :catch_1
    move-exception p2

    .line 57
    move-object v2, p1

    .line 58
    goto :goto_2

    .line 59
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 60
    .line 61
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :catchall_1
    move-exception p2

    .line 66
    goto :goto_4

    .line 67
    :catch_2
    move-exception p2

    .line 68
    :goto_1
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    .line 70
    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 74
    .line 75
    .line 76
    goto :goto_3

    .line 77
    :catch_3
    move-exception p2

    .line 78
    :goto_2
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 79
    .line 80
    .line 81
    if-eqz v2, :cond_1

    .line 82
    .line 83
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :catch_4
    move-exception p1

    .line 88
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .line 90
    .line 91
    :cond_1
    :goto_3
    return-void

    .line 92
    :goto_4
    if-eqz v2, :cond_2

    .line 93
    .line 94
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 95
    .line 96
    .line 97
    goto :goto_5

    .line 98
    :catch_5
    move-exception p1

    .line 99
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .line 101
    .line 102
    :cond_2
    :goto_5
    throw p2
.end method

.method private pruneDeadThumbnailFiles()V
    .locals 11

    .line 1
    const-string v0, "MediaScanner"

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/io/File;

    .line 9
    .line 10
    const-string v3, "/sdcard/DCIM/.thumbnails"

    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x0

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    new-array v2, v3, [Ljava/lang/String;

    .line 23
    .line 24
    :cond_0
    move v4, v3

    .line 25
    :goto_0
    array-length v5, v2

    .line 26
    if-ge v4, v5, :cond_1

    .line 27
    .line 28
    new-instance v5, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v6, "/sdcard/DCIM/.thumbnails/"

    .line 31
    .line 32
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    aget-object v6, v2, v4

    .line 36
    .line 37
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v2, 0x0

    .line 51
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 52
    .line 53
    iget-object v5, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    .line 54
    .line 55
    const-string v6, "_data"

    .line 56
    .line 57
    filled-new-array {v6}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    const/4 v7, 0x0

    .line 62
    const/4 v8, 0x0

    .line 63
    const/4 v9, 0x0

    .line 64
    const/4 v10, 0x0

    .line 65
    invoke-virtual/range {v4 .. v10}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string/jumbo v5, "pruneDeadThumbnailFiles... "

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_3

    .line 97
    .line 98
    :cond_2
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-nez v4, :cond_2

    .line 110
    .line 111
    :cond_3
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    :catch_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_4

    .line 120
    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .line 127
    :try_start_1
    new-instance v4, Ljava/io/File;

    .line 128
    .line 129
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v3, "/pruneDeadThumbnailFiles... "

    .line 142
    .line 143
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    .line 155
    .line 156
    if-eqz v2, :cond_6

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :catchall_0
    move-exception v0

    .line 160
    if-eqz v2, :cond_5

    .line 161
    .line 162
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 163
    .line 164
    .line 165
    :cond_5
    throw v0

    .line 166
    :catch_1
    if-eqz v2, :cond_6

    .line 167
    .line 168
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 169
    .line 170
    .line 171
    :cond_6
    return-void
.end method

.method private releaseResources()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClientEx;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->close()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClientEx;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private setDefaultRingtoneFileNames()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaScannerExUtils:Landroid/media/MediaScannerExUtils;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaScannerExUtils;->setDefaultRingtoneFileNamesEx()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "ro.config.notification_sound"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 14
    .line 15
    const-string/jumbo v0, "ro.config.alarm_alert"

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method private native setLocale(Ljava/lang/String;)V
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 2
    .line 3
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/media/MediaScanner;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public native extractAlbumArt(Ljava/io/FileDescriptor;)[B
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaScanner;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/EnvironmentEx;->getExternalStoragePath()Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x3

    .line 11
    const/4 v3, 0x2

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    if-eqz v6, :cond_1

    .line 21
    .line 22
    const-string v10, "_data=? or _data=?"

    .line 23
    .line 24
    invoke-static {}, Landroid/media/MediaScannerExUtils;->getOldPath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-array v11, v3, [Ljava/lang/String;

    .line 33
    .line 34
    aput-object p1, v11, v4

    .line 35
    .line 36
    aput-object v1, v11, v5

    .line 37
    .line 38
    iget-object v7, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 39
    .line 40
    iget-object v8, p0, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    .line 41
    .line 42
    sget-object v9, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 43
    .line 44
    const/4 v12, 0x0

    .line 45
    const/4 v13, 0x0

    .line 46
    invoke-virtual/range {v7 .. v13}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 47
    .line 48
    .line 49
    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_3

    .line 55
    .line 56
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 57
    .line 58
    .line 59
    move-result-wide v8

    .line 60
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    iput-object v4, p0, Landroid/media/MediaScanner;->mPathInDatabase:Ljava/lang/String;

    .line 65
    .line 66
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 67
    .line 68
    .line 69
    move-result v13

    .line 70
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 71
    .line 72
    .line 73
    move-result-wide v11

    .line 74
    new-instance v2, Landroid/media/MediaScanner$FileEntry;

    .line 75
    .line 76
    move-object v7, v2

    .line 77
    move-object v10, p1

    .line 78
    invoke-direct/range {v7 .. v13}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Landroid/media/MediaScanner;->mPathInDatabase:Ljava/lang/String;

    .line 82
    .line 83
    if-eqz p1, :cond_0

    .line 84
    .line 85
    invoke-static {}, Landroid/media/MediaScannerExUtils;->getOldPath()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_0

    .line 94
    .line 95
    iput-boolean v5, v2, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .line 97
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 98
    .line 99
    .line 100
    return-object v2

    .line 101
    :cond_1
    :try_start_2
    const-string v9, "_data=?"

    .line 102
    .line 103
    new-array v10, v5, [Ljava/lang/String;

    .line 104
    .line 105
    aput-object p1, v10, v4

    .line 106
    .line 107
    iget-object v6, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 108
    .line 109
    iget-object v7, p0, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    .line 110
    .line 111
    sget-object v8, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 112
    .line 113
    const/4 v11, 0x0

    .line 114
    const/4 v12, 0x0

    .line 115
    invoke-virtual/range {v6 .. v12}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 116
    .line 117
    .line 118
    move-result-object v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-eqz v6, :cond_3

    .line 124
    .line 125
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 126
    .line 127
    .line 128
    move-result-wide v8

    .line 129
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    iput-object v4, p0, Landroid/media/MediaScanner;->mPathInDatabase:Ljava/lang/String;

    .line 134
    .line 135
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 136
    .line 137
    .line 138
    move-result v13

    .line 139
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 140
    .line 141
    .line 142
    move-result-wide v11

    .line 143
    new-instance v2, Landroid/media/MediaScanner$FileEntry;

    .line 144
    .line 145
    move-object v7, v2

    .line 146
    move-object v10, p1

    .line 147
    invoke-direct/range {v7 .. v13}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    .line 149
    .line 150
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 151
    .line 152
    .line 153
    return-object v2

    .line 154
    :catchall_0
    move-exception p1

    .line 155
    move-object v0, v1

    .line 156
    goto :goto_0

    .line 157
    :catchall_1
    move-exception p1

    .line 158
    :goto_0
    if-eqz v0, :cond_2

    .line 159
    .line 160
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 161
    .line 162
    .line 163
    :cond_2
    throw p1

    .line 164
    :catch_0
    move-object v1, v0

    .line 165
    :catch_1
    if-eqz v1, :cond_4

    .line 166
    .line 167
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 168
    .line 169
    .line 170
    :cond_4
    return-object v0
.end method

.method public scanDirectories([Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "MediaScanner"

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {p0, v2, v1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    new-instance v1, Landroid/media/MediaInserter;

    .line 15
    .line 16
    iget-object v3, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 17
    .line 18
    const/16 v4, 0x1f4

    .line 19
    .line 20
    invoke-direct {v1, v3, v4}, Landroid/media/MediaInserter;-><init>(Landroid/content/ContentProviderClient;I)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    :goto_0
    array-length v3, p1

    .line 27
    if-ge v1, v3, :cond_0

    .line 28
    .line 29
    aget-object v3, p1, v1

    .line 30
    .line 31
    iget-object v4, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    .line 32
    .line 33
    invoke-direct {p0, v3, v4}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v1, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/media/MediaInserter;->flushAll()V

    .line 42
    .line 43
    .line 44
    iput-object v2, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 45
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->postscan([Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_2

    .line 58
    :catch_0
    move-exception p1

    .line 59
    :try_start_1
    const-string v1, "RemoteException in MediaScanner.scan()"

    .line 60
    .line 61
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catch_1
    move-exception p1

    .line 66
    const-string v1, "UnsupportedOperationException in MediaScanner.scan()"

    .line 67
    .line 68
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catch_2
    move-exception p1

    .line 73
    const-string v1, "SQLException in MediaScanner.scan()"

    .line 74
    .line 75
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    .line 78
    :goto_1
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :goto_2
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 83
    .line 84
    .line 85
    throw p1
.end method

.method public scanMtpFile(Ljava/lang/String;II)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v12, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    move v3, v12

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v3, v2, Landroid/media/MediaFile$MediaFileType;->fileType:I

    .line 15
    .line 16
    :goto_0
    new-instance v4, Ljava/io/File;

    .line 17
    .line 18
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    const-wide/16 v7, 0x3e8

    .line 26
    .line 27
    div-long/2addr v5, v7

    .line 28
    invoke-static {v3}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    const-string v13, "MediaScanner"

    .line 33
    .line 34
    const/4 v8, 0x1

    .line 35
    if-nez v7, :cond_1

    .line 36
    .line 37
    invoke-static {v3}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-nez v7, :cond_1

    .line 42
    .line 43
    invoke-static {v3}, Landroid/media/MediaFile;->isImageFileType(I)Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-nez v7, :cond_1

    .line 48
    .line 49
    invoke-static {v3}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-nez v7, :cond_1

    .line 54
    .line 55
    invoke-static {v3}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-nez v7, :cond_1

    .line 60
    .line 61
    new-instance v0, Landroid/content/ContentValues;

    .line 62
    .line 63
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 67
    .line 68
    .line 69
    move-result-wide v2

    .line 70
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const-string v3, "_size"

    .line 75
    .line 76
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 77
    .line 78
    .line 79
    const-string v2, "date_modified"

    .line 80
    .line 81
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    .line 87
    .line 88
    :try_start_0
    new-array v2, v8, [Ljava/lang/String;

    .line 89
    .line 90
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    aput-object v3, v2, v12

    .line 95
    .line 96
    iget-object v3, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 97
    .line 98
    iget-object v4, v1, Landroid/media/MediaScanner;->mVolumeName:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    const-string v5, "_id=?"

    .line 105
    .line 106
    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    const-string v2, "RemoteException in scanMtpFile"

    .line 112
    .line 113
    invoke-static {v13, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .line 115
    .line 116
    :goto_1
    return-void

    .line 117
    :cond_1
    move/from16 v7, p2

    .line 118
    .line 119
    iput v7, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 120
    .line 121
    const/4 v14, 0x0

    .line 122
    :try_start_1
    invoke-static {v3}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_2

    .line 127
    .line 128
    invoke-direct {v1, v14, v8}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 129
    .line 130
    .line 131
    invoke-virtual/range {p0 .. p1}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    if-eqz v0, :cond_4

    .line 136
    .line 137
    iget-object v2, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 138
    .line 139
    iget-object v3, v1, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    .line 140
    .line 141
    sget-object v4, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 142
    .line 143
    const/4 v5, 0x0

    .line 144
    const/4 v6, 0x0

    .line 145
    const/4 v7, 0x0

    .line 146
    const/4 v8, 0x0

    .line 147
    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 148
    .line 149
    .line 150
    move-result-object v14

    .line 151
    invoke-direct {v1, v0, v14}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_2
    invoke-direct {v1, v0, v12}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 156
    .line 157
    .line 158
    iget-object v3, v1, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    .line 159
    .line 160
    iget-object v7, v2, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 163
    .line 164
    .line 165
    move-result-wide v9

    .line 166
    const/16 v2, 0x3001

    .line 167
    .line 168
    move/from16 v4, p3

    .line 169
    .line 170
    if-ne v4, v2, :cond_3

    .line 171
    .line 172
    move v11, v8

    .line 173
    goto :goto_2

    .line 174
    :cond_3
    move v11, v12

    .line 175
    :goto_2
    const/4 v15, 0x1

    .line 176
    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    .line 177
    .line 178
    .line 179
    move-result v16

    .line 180
    move-object v2, v3

    .line 181
    move-object/from16 v3, p1

    .line 182
    .line 183
    move-object v4, v7

    .line 184
    move-wide v7, v9

    .line 185
    move v9, v11

    .line 186
    move v10, v15

    .line 187
    move/from16 v11, v16

    .line 188
    .line 189
    invoke-virtual/range {v2 .. v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    .line 191
    .line 192
    :cond_4
    :goto_3
    iput v12, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 193
    .line 194
    if-eqz v14, :cond_5

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :catchall_0
    move-exception v0

    .line 198
    goto :goto_5

    .line 199
    :catch_1
    move-exception v0

    .line 200
    :try_start_2
    const-string v2, "RemoteException in MediaScanner.scanFile()"

    .line 201
    .line 202
    invoke-static {v13, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    .line 204
    .line 205
    iput v12, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 206
    .line 207
    if-eqz v14, :cond_5

    .line 208
    .line 209
    :goto_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 210
    .line 211
    .line 212
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :goto_5
    iput v12, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 217
    .line 218
    if-eqz v14, :cond_6

    .line 219
    .line 220
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 221
    .line 222
    .line 223
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 224
    .line 225
    .line 226
    throw v0
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 12

    .line 1
    const/4 v1, 0x1

    .line 2
    const/4 v11, 0x0

    .line 3
    :try_start_0
    invoke-direct {p0, p1, v1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/File;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    const-wide/16 v4, 0x3e8

    .line 29
    .line 30
    div-long v4, v2, v4

    .line 31
    .line 32
    iget-object v2, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 35
    .line 36
    .line 37
    move-result-wide v6

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v9, 0x1

    .line 40
    invoke-static {p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    move-object v1, v2

    .line 45
    move-object v2, p1

    .line 46
    move-object v3, p2

    .line 47
    invoke-virtual/range {v1 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    .line 48
    .line 49
    .line 50
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 56
    .line 57
    .line 58
    return-object v11

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    :try_start_1
    const-string v1, "MediaScanner"

    .line 63
    .line 64
    const-string v2, "RemoteException in MediaScanner.scanFile()"

    .line 65
    .line 66
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 70
    .line 71
    .line 72
    return-object v11

    .line 73
    :goto_1
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 74
    .line 75
    .line 76
    throw v0
.end method

.method public settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "_set"

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public wasRingtoneAlreadySet(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, p1}, Landroid/media/MediaScanner;->settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result p1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    :catch_0
    :cond_0
    return v1
.end method
