.class public Landroid/location/Location;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/Location$BearingDistanceCache;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_COARSE_LOCATION:Ljava/lang/String; = "coarseLocation"

.field public static final EXTRA_NO_GPS_LOCATION:Ljava/lang/String; = "noGPSLocation"

.field public static final FORMAT_DEGREES:I = 0x0

.field public static final FORMAT_MINUTES:I = 0x1

.field public static final FORMAT_SECONDS:I = 0x2

.field private static final HAS_ALTITUDE_MASK:I = 0x1

.field private static final HAS_BEARING_ACCURACY_MASK:I = 0x80

.field private static final HAS_BEARING_MASK:I = 0x4

.field private static final HAS_HORIZONTAL_ACCURACY_MASK:I = 0x8

.field private static final HAS_MOCK_PROVIDER_MASK:I = 0x10

.field private static final HAS_SPEED_ACCURACY_MASK:I = 0x40

.field private static final HAS_SPEED_MASK:I = 0x2

.field private static final HAS_VERTICAL_ACCURACY_MASK:I = 0x20

.field private static sBearingDistanceCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/location/Location$BearingDistanceCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAltitude:D

.field private mBearing:F

.field private mBearingAccuracyDegrees:F

.field private mElapsedRealtimeNanos:J

.field private mExtras:Landroid/os/Bundle;

.field private mFieldsMask:B

.field private mHorizontalAccuracyMeters:F

.field private mLatitude:D

.field private mLongitude:D

.field private mProvider:Ljava/lang/String;

.field private mSpeed:F

.field private mSpeedAccuracyMetersPerSecond:F

.field private mTime:J

.field private mVerticalAccuracyMeters:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/location/Location$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/location/Location$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    new-instance v0, Landroid/location/Location$2;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/location/Location$2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    .line 18
    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Landroid/location/Location;->mLatitude:D

    .line 20
    iput-wide v0, p0, Landroid/location/Location;->mLongitude:D

    .line 21
    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Landroid/location/Location;->mSpeed:F

    .line 23
    iput v0, p0, Landroid/location/Location;->mBearing:F

    .line 24
    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 25
    iput v0, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    .line 26
    iput v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 27
    iput v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 29
    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 30
    invoke-virtual {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    .line 3
    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Landroid/location/Location;->mLatitude:D

    .line 5
    iput-wide v0, p0, Landroid/location/Location;->mLongitude:D

    .line 6
    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroid/location/Location;->mSpeed:F

    .line 8
    iput v0, p0, Landroid/location/Location;->mBearing:F

    .line 9
    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 10
    iput v0, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    .line 11
    iput v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 12
    iput v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 14
    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 15
    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$1002(Landroid/location/Location;B)B
    .locals 0

    iput-byte p1, p0, Landroid/location/Location;->mFieldsMask:B

    return p1
.end method

.method public static synthetic access$1102(Landroid/location/Location;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    return-wide p1
.end method

.method public static synthetic access$1202(Landroid/location/Location;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    return-wide p1
.end method

.method public static synthetic access$1302(Landroid/location/Location;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    return-wide p1
.end method

.method public static synthetic access$1402(Landroid/location/Location;F)F
    .locals 0

    iput p1, p0, Landroid/location/Location;->mSpeed:F

    return p1
.end method

.method public static synthetic access$1502(Landroid/location/Location;F)F
    .locals 0

    iput p1, p0, Landroid/location/Location;->mBearing:F

    return p1
.end method

.method public static synthetic access$1602(Landroid/location/Location;F)F
    .locals 0

    iput p1, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    return p1
.end method

.method public static synthetic access$1702(Landroid/location/Location;F)F
    .locals 0

    iput p1, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    return p1
.end method

.method public static synthetic access$1802(Landroid/location/Location;F)F
    .locals 0

    iput p1, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    return p1
.end method

.method public static synthetic access$1902(Landroid/location/Location;F)F
    .locals 0

    iput p1, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    return p1
.end method

.method public static synthetic access$2002(Landroid/location/Location;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method public static synthetic access$802(Landroid/location/Location;J)J
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    return-wide p1
.end method

.method public static synthetic access$902(Landroid/location/Location;J)J
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    return-wide p1
.end method

.method private static computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V
    .locals 65

    .line 1
    move-object/from16 v0, p8

    .line 2
    .line 3
    const-wide v1, 0x3f91df46a2529d39L    # 0.017453292519943295

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    mul-double v3, p0, v1

    .line 9
    .line 10
    mul-double v5, p4, v1

    .line 11
    .line 12
    mul-double v7, p2, v1

    .line 13
    .line 14
    mul-double v1, v1, p6

    .line 15
    .line 16
    sub-double v9, v1, v7

    .line 17
    .line 18
    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    .line 19
    .line 20
    .line 21
    move-result-wide v11

    .line 22
    const-wide v13, 0x3fefe488a57a12e4L    # 0.996647189328169

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    mul-double/2addr v11, v13

    .line 28
    invoke-static {v11, v12}, Ljava/lang/Math;->atan(D)D

    .line 29
    .line 30
    .line 31
    move-result-wide v11

    .line 32
    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    .line 33
    .line 34
    .line 35
    move-result-wide v15

    .line 36
    mul-double/2addr v15, v13

    .line 37
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->atan(D)D

    .line 38
    .line 39
    .line 40
    move-result-wide v13

    .line 41
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    .line 42
    .line 43
    .line 44
    move-result-wide v15

    .line 45
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    .line 46
    .line 47
    .line 48
    move-result-wide v17

    .line 49
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    .line 50
    .line 51
    .line 52
    move-result-wide v11

    .line 53
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    .line 54
    .line 55
    .line 56
    move-result-wide v13

    .line 57
    mul-double v19, v15, v17

    .line 58
    .line 59
    mul-double v21, v11, v13

    .line 60
    .line 61
    const-wide/16 v23, 0x0

    .line 62
    .line 63
    const/16 v25, 0x0

    .line 64
    .line 65
    move-wide/from16 p0, v1

    .line 66
    .line 67
    move-wide/from16 v27, v23

    .line 68
    .line 69
    move-wide/from16 v29, v27

    .line 70
    .line 71
    move-wide/from16 v31, v29

    .line 72
    .line 73
    move-wide/from16 v33, v31

    .line 74
    .line 75
    move-wide/from16 v35, v33

    .line 76
    .line 77
    move/from16 v1, v25

    .line 78
    .line 79
    move-wide/from16 v25, v9

    .line 80
    .line 81
    :goto_0
    const/16 v2, 0x14

    .line 82
    .line 83
    if-ge v1, v2, :cond_3

    .line 84
    .line 85
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D

    .line 86
    .line 87
    .line 88
    move-result-wide v31

    .line 89
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D

    .line 90
    .line 91
    .line 92
    move-result-wide v35

    .line 93
    mul-double v27, v17, v35

    .line 94
    .line 95
    mul-double v29, v15, v13

    .line 96
    .line 97
    mul-double v33, v11, v17

    .line 98
    .line 99
    mul-double v33, v33, v31

    .line 100
    .line 101
    sub-double v29, v29, v33

    .line 102
    .line 103
    mul-double v27, v27, v27

    .line 104
    .line 105
    mul-double v29, v29, v29

    .line 106
    .line 107
    add-double v29, v29, v27

    .line 108
    .line 109
    move-wide/from16 p2, v7

    .line 110
    .line 111
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sqrt(D)D

    .line 112
    .line 113
    .line 114
    move-result-wide v7

    .line 115
    mul-double v27, v19, v31

    .line 116
    .line 117
    move-wide/from16 p4, v5

    .line 118
    .line 119
    add-double v5, v27, v21

    .line 120
    .line 121
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    .line 122
    .line 123
    .line 124
    move-result-wide v27

    .line 125
    cmpl-double v2, v7, v23

    .line 126
    .line 127
    if-nez v2, :cond_0

    .line 128
    .line 129
    move-wide/from16 v29, v23

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_0
    mul-double v29, v19, v35

    .line 133
    .line 134
    div-double v29, v29, v7

    .line 135
    .line 136
    :goto_1
    mul-double v33, v29, v29

    .line 137
    .line 138
    const-wide/high16 v37, 0x3ff0000000000000L    # 1.0

    .line 139
    .line 140
    sub-double v33, v37, v33

    .line 141
    .line 142
    cmpl-double v2, v33, v23

    .line 143
    .line 144
    const-wide/high16 v39, 0x4000000000000000L    # 2.0

    .line 145
    .line 146
    if-nez v2, :cond_1

    .line 147
    .line 148
    move-wide/from16 v41, v23

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_1
    mul-double v41, v21, v39

    .line 152
    .line 153
    div-double v41, v41, v33

    .line 154
    .line 155
    sub-double v41, v5, v41

    .line 156
    .line 157
    :goto_2
    const-wide v43, 0x3f7b9adfe2939d71L    # 0.006739496756586903

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    mul-double v43, v43, v33

    .line 163
    .line 164
    const-wide/high16 v45, 0x40d0000000000000L    # 16384.0

    .line 165
    .line 166
    div-double v45, v43, v45

    .line 167
    .line 168
    const-wide v47, 0x4065e00000000000L    # 175.0

    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    mul-double v47, v47, v43

    .line 174
    .line 175
    const-wide/high16 v49, 0x4074000000000000L    # 320.0

    .line 176
    .line 177
    sub-double v49, v49, v47

    .line 178
    .line 179
    mul-double v49, v49, v43

    .line 180
    .line 181
    const-wide/high16 v47, -0x3f78000000000000L    # -768.0

    .line 182
    .line 183
    add-double v49, v49, v47

    .line 184
    .line 185
    mul-double v49, v49, v43

    .line 186
    .line 187
    const-wide/high16 v47, 0x40b0000000000000L    # 4096.0

    .line 188
    .line 189
    add-double v49, v49, v47

    .line 190
    .line 191
    mul-double v49, v49, v45

    .line 192
    .line 193
    add-double v45, v49, v37

    .line 194
    .line 195
    const-wide/high16 v47, 0x4090000000000000L    # 1024.0

    .line 196
    .line 197
    div-double v47, v43, v47

    .line 198
    .line 199
    const-wide v49, 0x4047800000000000L    # 47.0

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    mul-double v49, v49, v43

    .line 205
    .line 206
    const-wide v51, 0x4052800000000000L    # 74.0

    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    sub-double v51, v51, v49

    .line 212
    .line 213
    mul-double v51, v51, v43

    .line 214
    .line 215
    const-wide/high16 v49, -0x3fa0000000000000L    # -128.0

    .line 216
    .line 217
    add-double v51, v51, v49

    .line 218
    .line 219
    mul-double v51, v51, v43

    .line 220
    .line 221
    const-wide/high16 v43, 0x4070000000000000L    # 256.0

    .line 222
    .line 223
    add-double v51, v51, v43

    .line 224
    .line 225
    mul-double v51, v51, v47

    .line 226
    .line 227
    const-wide v43, 0x3f2b775a85ed1bbcL    # 2.0955066698943685E-4

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    mul-double v43, v43, v33

    .line 233
    .line 234
    const-wide/high16 v47, 0x4008000000000000L    # 3.0

    .line 235
    .line 236
    mul-double v33, v33, v47

    .line 237
    .line 238
    const-wide/high16 v47, 0x4010000000000000L    # 4.0

    .line 239
    .line 240
    sub-double v33, v47, v33

    .line 241
    .line 242
    const-wide v49, 0x3f6b775a85ed1bbcL    # 0.0033528106718309896

    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    mul-double v33, v33, v49

    .line 248
    .line 249
    add-double v33, v33, v47

    .line 250
    .line 251
    mul-double v33, v33, v43

    .line 252
    .line 253
    mul-double v43, v41, v41

    .line 254
    .line 255
    mul-double v53, v51, v7

    .line 256
    .line 257
    div-double v55, v51, v47

    .line 258
    .line 259
    mul-double v57, v43, v39

    .line 260
    .line 261
    const-wide/high16 v59, -0x4010000000000000L    # -1.0

    .line 262
    .line 263
    add-double v57, v57, v59

    .line 264
    .line 265
    mul-double v57, v57, v5

    .line 266
    .line 267
    const-wide/high16 v61, 0x4018000000000000L    # 6.0

    .line 268
    .line 269
    div-double v51, v51, v61

    .line 270
    .line 271
    mul-double v51, v51, v41

    .line 272
    .line 273
    mul-double v61, v7, v47

    .line 274
    .line 275
    mul-double v61, v61, v7

    .line 276
    .line 277
    const-wide/high16 v63, -0x3ff8000000000000L    # -3.0

    .line 278
    .line 279
    add-double v61, v61, v63

    .line 280
    .line 281
    mul-double v61, v61, v51

    .line 282
    .line 283
    mul-double v43, v43, v47

    .line 284
    .line 285
    add-double v43, v43, v63

    .line 286
    .line 287
    mul-double v43, v43, v61

    .line 288
    .line 289
    sub-double v57, v57, v43

    .line 290
    .line 291
    mul-double v57, v57, v55

    .line 292
    .line 293
    add-double v57, v57, v41

    .line 294
    .line 295
    mul-double v43, v57, v53

    .line 296
    .line 297
    sub-double v37, v37, v33

    .line 298
    .line 299
    mul-double v37, v37, v49

    .line 300
    .line 301
    mul-double v37, v37, v29

    .line 302
    .line 303
    mul-double v7, v7, v33

    .line 304
    .line 305
    mul-double v33, v33, v5

    .line 306
    .line 307
    mul-double v39, v39, v41

    .line 308
    .line 309
    mul-double v39, v39, v41

    .line 310
    .line 311
    add-double v39, v39, v59

    .line 312
    .line 313
    mul-double v39, v39, v33

    .line 314
    .line 315
    add-double v39, v39, v41

    .line 316
    .line 317
    mul-double v39, v39, v7

    .line 318
    .line 319
    add-double v39, v39, v27

    .line 320
    .line 321
    mul-double v39, v39, v37

    .line 322
    .line 323
    add-double v39, v39, v9

    .line 324
    .line 325
    sub-double v5, v39, v25

    .line 326
    .line 327
    div-double v5, v5, v39

    .line 328
    .line 329
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    .line 330
    .line 331
    .line 332
    move-result-wide v5

    .line 333
    const-wide v7, 0x3d719799812dea11L    # 1.0E-12

    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    cmpg-double v2, v5, v7

    .line 339
    .line 340
    if-gez v2, :cond_2

    .line 341
    .line 342
    move-wide/from16 v29, v43

    .line 343
    .line 344
    move-wide/from16 v33, v45

    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 348
    .line 349
    move-wide/from16 v7, p2

    .line 350
    .line 351
    move-wide/from16 v5, p4

    .line 352
    .line 353
    move-wide/from16 v25, v39

    .line 354
    .line 355
    move-wide/from16 v29, v43

    .line 356
    .line 357
    move-wide/from16 v33, v45

    .line 358
    .line 359
    goto/16 :goto_0

    .line 360
    .line 361
    :cond_3
    move-wide/from16 p4, v5

    .line 362
    .line 363
    move-wide/from16 p2, v7

    .line 364
    .line 365
    :goto_3
    const-wide v1, 0x41583fc4141bda51L    # 6356752.3142

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    mul-double v1, v1, v33

    .line 371
    .line 372
    sub-double v27, v27, v29

    .line 373
    .line 374
    mul-double v1, v1, v27

    .line 375
    .line 376
    double-to-float v1, v1

    .line 377
    invoke-static {v0, v1}, Landroid/location/Location$BearingDistanceCache;->access$102(Landroid/location/Location$BearingDistanceCache;F)F

    .line 378
    .line 379
    .line 380
    mul-double v1, v17, v35

    .line 381
    .line 382
    mul-double/2addr v13, v15

    .line 383
    mul-double v5, v11, v17

    .line 384
    .line 385
    mul-double v5, v5, v31

    .line 386
    .line 387
    sub-double v5, v13, v5

    .line 388
    .line 389
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    .line 390
    .line 391
    .line 392
    move-result-wide v1

    .line 393
    double-to-float v1, v1

    .line 394
    float-to-double v1, v1

    .line 395
    const-wide v5, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    mul-double/2addr v1, v5

    .line 401
    double-to-float v1, v1

    .line 402
    invoke-static {v0, v1}, Landroid/location/Location$BearingDistanceCache;->access$202(Landroid/location/Location$BearingDistanceCache;F)F

    .line 403
    .line 404
    .line 405
    mul-double v1, v15, v35

    .line 406
    .line 407
    neg-double v7, v11

    .line 408
    mul-double v7, v7, v17

    .line 409
    .line 410
    mul-double v13, v13, v31

    .line 411
    .line 412
    add-double/2addr v13, v7

    .line 413
    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    .line 414
    .line 415
    .line 416
    move-result-wide v1

    .line 417
    double-to-float v1, v1

    .line 418
    float-to-double v1, v1

    .line 419
    mul-double/2addr v1, v5

    .line 420
    double-to-float v1, v1

    .line 421
    invoke-static {v0, v1}, Landroid/location/Location$BearingDistanceCache;->access$302(Landroid/location/Location$BearingDistanceCache;F)F

    .line 422
    .line 423
    .line 424
    invoke-static {v0, v3, v4}, Landroid/location/Location$BearingDistanceCache;->access$402(Landroid/location/Location$BearingDistanceCache;D)D

    .line 425
    .line 426
    .line 427
    move-wide/from16 v1, p4

    .line 428
    .line 429
    invoke-static {v0, v1, v2}, Landroid/location/Location$BearingDistanceCache;->access$502(Landroid/location/Location$BearingDistanceCache;D)D

    .line 430
    .line 431
    .line 432
    move-wide/from16 v1, p2

    .line 433
    .line 434
    invoke-static {v0, v1, v2}, Landroid/location/Location$BearingDistanceCache;->access$602(Landroid/location/Location$BearingDistanceCache;D)D

    .line 435
    .line 436
    .line 437
    move-wide/from16 v1, p0

    .line 438
    .line 439
    invoke-static {v0, v1, v2}, Landroid/location/Location$BearingDistanceCache;->access$702(Landroid/location/Location$BearingDistanceCache;D)D

    .line 440
    .line 441
    .line 442
    return-void
.end method

.method public static convert(Ljava/lang/String;)D
    .locals 17

    move-object/from16 v0, p0

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    .line 22
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v1

    .line 23
    :goto_0
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, ":"

    invoke-direct {v3, v0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    const-string v6, "coordinate="

    if-lt v5, v4, :cond_b

    .line 25
    :try_start_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    if-ne v5, v4, :cond_2

    .line 26
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    if-eqz v2, :cond_1

    neg-double v0, v0

    :cond_1
    return-wide v0

    .line 27
    :cond_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 28
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 29
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_3

    .line 30
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-double v11, v5

    .line 31
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    move v3, v4

    goto :goto_1

    .line 33
    :cond_3
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    move v3, v1

    move-wide v13, v9

    :goto_1
    if-eqz v2, :cond_4

    const/16 v5, 0xb4

    if-ne v7, v5, :cond_4

    cmpl-double v5, v11, v9

    if-nez v5, :cond_4

    cmpl-double v5, v13, v9

    if-nez v5, :cond_4

    move v1, v4

    :cond_4
    int-to-double v4, v7

    cmpg-double v8, v4, v9

    if-ltz v8, :cond_a

    const/16 v8, 0xb3

    if-le v7, v8, :cond_5

    if-eqz v1, :cond_a

    :cond_5
    cmpg-double v1, v11, v9

    if-ltz v1, :cond_9

    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    cmpl-double v1, v11, v7

    if-gez v1, :cond_9

    if-eqz v3, :cond_6

    const-wide v15, 0x404d800000000000L    # 59.0

    cmpl-double v1, v11, v15

    if-gtz v1, :cond_9

    :cond_6
    cmpg-double v1, v13, v9

    if-ltz v1, :cond_8

    cmpl-double v1, v13, v7

    if-gez v1, :cond_8

    const-wide v0, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v4, v0

    mul-double/2addr v11, v7

    add-double/2addr v11, v4

    add-double/2addr v11, v13

    div-double/2addr v11, v0

    if-eqz v2, :cond_7

    neg-double v11, v11

    :cond_7
    return-wide v11

    .line 34
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :catch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 38
    invoke-static {v6, v0}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 41
    invoke-static {v6, v0}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "coordinate"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static convert(DI)Ljava/lang/String;
    .locals 7

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p0, v0

    if-ltz v0, :cond_5

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_5

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "outputType="

    .line 3
    invoke-static {p1, p2}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x0

    cmpg-double v3, p0, v3

    if-gez v3, :cond_2

    const/16 v3, 0x2d

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-double p0, p0

    .line 7
    :cond_2
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "###.#####"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    if-eq p2, v0, :cond_3

    if-ne p2, v1, :cond_4

    .line 8
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    .line 10
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-double v5, v0

    sub-double/2addr p0, v5

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    mul-double/2addr p0, v5

    if-ne p2, v1, :cond_4

    .line 11
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p2, v0

    .line 12
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-double v0, p2

    sub-double/2addr p0, v0

    mul-double/2addr p0, v5

    .line 14
    :cond_4
    invoke-virtual {v3, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 16
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "coordinate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static distanceBetween(DDDD[F)V
    .locals 12

    .line 1
    move-object/from16 v0, p8

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-lt v1, v2, :cond_1

    .line 8
    .line 9
    sget-object v1, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/location/Location$BearingDistanceCache;

    .line 16
    .line 17
    move-wide v3, p0

    .line 18
    move-wide v5, p2

    .line 19
    move-wide/from16 v7, p4

    .line 20
    .line 21
    move-wide/from16 v9, p6

    .line 22
    .line 23
    move-object v11, v1

    .line 24
    invoke-static/range {v3 .. v11}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static {v1}, Landroid/location/Location$BearingDistanceCache;->access$100(Landroid/location/Location$BearingDistanceCache;)F

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    aput v4, v0, v3

    .line 33
    .line 34
    array-length v3, v0

    .line 35
    if-le v3, v2, :cond_0

    .line 36
    .line 37
    invoke-static {v1}, Landroid/location/Location$BearingDistanceCache;->access$200(Landroid/location/Location$BearingDistanceCache;)F

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    aput v3, v0, v2

    .line 42
    .line 43
    array-length v2, v0

    .line 44
    const/4 v3, 0x2

    .line 45
    if-le v2, v3, :cond_0

    .line 46
    .line 47
    invoke-static {v1}, Landroid/location/Location$BearingDistanceCache;->access$300(Landroid/location/Location$BearingDistanceCache;)F

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    aput v1, v0, v3

    .line 52
    .line 53
    :cond_0
    return-void

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    const-string/jumbo v1, "results is null or has length < 1"

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0
.end method


# virtual methods
.method public bearingTo(Landroid/location/Location;)F
    .locals 10

    .line 1
    sget-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/location/Location$BearingDistanceCache;

    .line 8
    .line 9
    iget-wide v1, p0, Landroid/location/Location;->mLatitude:D

    .line 10
    .line 11
    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$400(Landroid/location/Location$BearingDistanceCache;)D

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    cmpl-double v1, v1, v3

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-wide v1, p0, Landroid/location/Location;->mLongitude:D

    .line 20
    .line 21
    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$600(Landroid/location/Location$BearingDistanceCache;)D

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    cmpl-double v1, v1, v3

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    iget-wide v1, p1, Landroid/location/Location;->mLatitude:D

    .line 30
    .line 31
    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$500(Landroid/location/Location$BearingDistanceCache;)D

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    cmpl-double v1, v1, v3

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    iget-wide v1, p1, Landroid/location/Location;->mLongitude:D

    .line 40
    .line 41
    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$700(Landroid/location/Location$BearingDistanceCache;)D

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    cmpl-double v1, v1, v3

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    :cond_0
    iget-wide v1, p0, Landroid/location/Location;->mLatitude:D

    .line 50
    .line 51
    iget-wide v3, p0, Landroid/location/Location;->mLongitude:D

    .line 52
    .line 53
    iget-wide v5, p1, Landroid/location/Location;->mLatitude:D

    .line 54
    .line 55
    iget-wide v7, p1, Landroid/location/Location;->mLongitude:D

    .line 56
    .line 57
    move-object v9, v0

    .line 58
    invoke-static/range {v1 .. v9}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$200(Landroid/location/Location$BearingDistanceCache;)F

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public distanceTo(Landroid/location/Location;)F
    .locals 10

    .line 1
    sget-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/location/Location$BearingDistanceCache;

    .line 8
    .line 9
    iget-wide v1, p0, Landroid/location/Location;->mLatitude:D

    .line 10
    .line 11
    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$400(Landroid/location/Location$BearingDistanceCache;)D

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    cmpl-double v1, v1, v3

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-wide v1, p0, Landroid/location/Location;->mLongitude:D

    .line 20
    .line 21
    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$600(Landroid/location/Location$BearingDistanceCache;)D

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    cmpl-double v1, v1, v3

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    iget-wide v1, p1, Landroid/location/Location;->mLatitude:D

    .line 30
    .line 31
    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$500(Landroid/location/Location$BearingDistanceCache;)D

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    cmpl-double v1, v1, v3

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    iget-wide v1, p1, Landroid/location/Location;->mLongitude:D

    .line 40
    .line 41
    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$700(Landroid/location/Location$BearingDistanceCache;)D

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    cmpl-double v1, v1, v3

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    :cond_0
    iget-wide v1, p0, Landroid/location/Location;->mLatitude:D

    .line 50
    .line 51
    iget-wide v3, p0, Landroid/location/Location;->mLongitude:D

    .line 52
    .line 53
    iget-wide v5, p1, Landroid/location/Location;->mLatitude:D

    .line 54
    .line 55
    iget-wide v7, p1, Landroid/location/Location;->mLongitude:D

    .line 56
    .line 57
    move-object v9, v0

    .line 58
    invoke-static/range {v1 .. v9}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-static {v0}, Landroid/location/Location$BearingDistanceCache;->access$100(Landroid/location/Location$BearingDistanceCache;)F

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    return p1
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/accessibilityservice/c;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0}, Landroid/location/Location;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public getAccuracy()F
    .locals 1

    iget v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    iget-wide v0, p0, Landroid/location/Location;->mAltitude:D

    return-wide v0
.end method

.method public getBearing()F
    .locals 1

    iget v0, p0, Landroid/location/Location;->mBearing:F

    return v0
.end method

.method public getBearingAccuracyDegrees()F
    .locals 1

    iget v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    return v0
.end method

.method public getElapsedRealtimeNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    return-wide v0
.end method

.method public getExtraLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    instance-of v0, p1, Landroid/location/Location;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p1, Landroid/location/Location;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    return-wide v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    iget v0, p0, Landroid/location/Location;->mSpeed:F

    return v0
.end method

.method public getSpeedAccuracyMetersPerSecond()F
    .locals 1

    iget v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    return v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    return-wide v0
.end method

.method public getVerticalAccuracyMeters()F
    .locals 1

    iget v0, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    return v0
.end method

.method public hasAccuracy()Z
    .locals 1

    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAltitude()Z
    .locals 2

    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasBearing()Z
    .locals 1

    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBearingAccuracy()Z
    .locals 1

    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSpeed()Z
    .locals 1

    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSpeedAccuracy()Z
    .locals 1

    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVerticalAccuracy()Z
    .locals 1

    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isComplete()Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    iget-wide v2, p0, Landroid/location/Location;->mTime:J

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmp-long v0, v2, v4

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    return v1

    .line 23
    :cond_2
    iget-wide v2, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 24
    .line 25
    cmp-long v0, v2, v4

    .line 26
    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    return v1

    .line 30
    :cond_3
    const/4 v0, 0x1

    .line 31
    return v0
.end method

.method public isFromMockProvider()Z
    .locals 1

    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeComplete()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "?"

    .line 6
    .line 7
    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 16
    .line 17
    or-int/lit8 v0, v0, 0x8

    .line 18
    .line 19
    int-to-byte v0, v0

    .line 20
    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 21
    .line 22
    const/high16 v0, 0x42c80000    # 100.0f

    .line 23
    .line 24
    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 25
    .line 26
    :cond_1
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    .line 27
    .line 28
    const-wide/16 v2, 0x0

    .line 29
    .line 30
    cmp-long v0, v0, v2

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    .line 39
    .line 40
    :cond_2
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 41
    .line 42
    cmp-long v0, v0, v2

    .line 43
    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 51
    .line 52
    :cond_3
    return-void
.end method

.method public removeAccuracy()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 3
    .line 4
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 5
    .line 6
    and-int/lit8 v0, v0, -0x9

    .line 7
    .line 8
    int-to-byte v0, v0

    .line 9
    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 10
    .line 11
    return-void
.end method

.method public removeAltitude()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    .line 4
    .line 5
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 6
    .line 7
    and-int/lit8 v0, v0, -0x2

    .line 8
    .line 9
    int-to-byte v0, v0

    .line 10
    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 11
    .line 12
    return-void
.end method

.method public removeBearing()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/location/Location;->mBearing:F

    .line 3
    .line 4
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 5
    .line 6
    and-int/lit8 v0, v0, -0x5

    .line 7
    .line 8
    int-to-byte v0, v0

    .line 9
    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 10
    .line 11
    return-void
.end method

.method public removeBearingAccuracy()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    .line 3
    .line 4
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 5
    .line 6
    and-int/lit16 v0, v0, -0x81

    .line 7
    .line 8
    int-to-byte v0, v0

    .line 9
    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 10
    .line 11
    return-void
.end method

.method public removeSpeed()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/location/Location;->mSpeed:F

    .line 3
    .line 4
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 5
    .line 6
    and-int/lit8 v0, v0, -0x3

    .line 7
    .line 8
    int-to-byte v0, v0

    .line 9
    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 10
    .line 11
    return-void
.end method

.method public removeSpeedAccuracy()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 3
    .line 4
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 5
    .line 6
    and-int/lit8 v0, v0, -0x41

    .line 7
    .line 8
    int-to-byte v0, v0

    .line 9
    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 10
    .line 11
    return-void
.end method

.method public removeVerticalAccuracy()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    .line 3
    .line 4
    iget-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 5
    .line 6
    and-int/lit8 v0, v0, -0x21

    .line 7
    .line 8
    int-to-byte v0, v0

    .line 9
    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 10
    .line 11
    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    iput-wide v1, p0, Landroid/location/Location;->mTime:J

    .line 7
    .line 8
    iput-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-byte v1, p0, Landroid/location/Location;->mFieldsMask:B

    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    iput-wide v1, p0, Landroid/location/Location;->mLatitude:D

    .line 16
    .line 17
    iput-wide v1, p0, Landroid/location/Location;->mLongitude:D

    .line 18
    .line 19
    iput-wide v1, p0, Landroid/location/Location;->mAltitude:D

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput v1, p0, Landroid/location/Location;->mSpeed:F

    .line 23
    .line 24
    iput v1, p0, Landroid/location/Location;->mBearing:F

    .line 25
    .line 26
    iput v1, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 27
    .line 28
    iput v1, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    .line 29
    .line 30
    iput v1, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 31
    .line 32
    iput v1, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    .line 33
    .line 34
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 35
    .line 36
    return-void
.end method

.method public set(Landroid/location/Location;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 2
    .line 3
    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 4
    .line 5
    iget-wide v0, p1, Landroid/location/Location;->mTime:J

    .line 6
    .line 7
    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    .line 8
    .line 9
    iget-wide v0, p1, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 10
    .line 11
    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 12
    .line 13
    iget-byte v0, p1, Landroid/location/Location;->mFieldsMask:B

    .line 14
    .line 15
    iput-byte v0, p0, Landroid/location/Location;->mFieldsMask:B

    .line 16
    .line 17
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    .line 18
    .line 19
    iput-wide v0, p0, Landroid/location/Location;->mLatitude:D

    .line 20
    .line 21
    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    .line 22
    .line 23
    iput-wide v0, p0, Landroid/location/Location;->mLongitude:D

    .line 24
    .line 25
    iget-wide v0, p1, Landroid/location/Location;->mAltitude:D

    .line 26
    .line 27
    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    .line 28
    .line 29
    iget v0, p1, Landroid/location/Location;->mSpeed:F

    .line 30
    .line 31
    iput v0, p0, Landroid/location/Location;->mSpeed:F

    .line 32
    .line 33
    iget v0, p1, Landroid/location/Location;->mBearing:F

    .line 34
    .line 35
    iput v0, p0, Landroid/location/Location;->mBearing:F

    .line 36
    .line 37
    iget v0, p1, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 38
    .line 39
    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 40
    .line 41
    iget v0, p1, Landroid/location/Location;->mVerticalAccuracyMeters:F

    .line 42
    .line 43
    iput v0, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    .line 44
    .line 45
    iget v0, p1, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 46
    .line 47
    iput v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 48
    .line 49
    iget v0, p1, Landroid/location/Location;->mBearingAccuracyDegrees:F

    .line 50
    .line 51
    iput v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    .line 52
    .line 53
    iget-object v0, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 54
    .line 55
    if-nez v0, :cond_0

    .line 56
    .line 57
    const/4 p1, 0x0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 60
    .line 61
    iget-object p1, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 62
    .line 63
    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 64
    .line 65
    .line 66
    move-object p1, v0

    .line 67
    :goto_0
    iput-object p1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 68
    .line 69
    return-void
.end method

.method public setAccuracy(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 2
    .line 3
    iget-byte p1, p0, Landroid/location/Location;->mFieldsMask:B

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x8

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    iput-byte p1, p0, Landroid/location/Location;->mFieldsMask:B

    .line 9
    .line 10
    return-void
.end method

.method public setAltitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    .line 2
    .line 3
    iget-byte p1, p0, Landroid/location/Location;->mFieldsMask:B

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    iput-byte p1, p0, Landroid/location/Location;->mFieldsMask:B

    .line 9
    .line 10
    return-void
.end method

.method public setBearing(F)V
    .locals 2

    .line 1
    :goto_0
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    const/high16 v1, 0x43b40000    # 360.0f

    .line 5
    .line 6
    if-gez v0, :cond_0

    .line 7
    .line 8
    add-float/2addr p1, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :goto_1
    cmpl-float v0, p1, v1

    .line 11
    .line 12
    if-ltz v0, :cond_1

    .line 13
    .line 14
    sub-float/2addr p1, v1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    iput p1, p0, Landroid/location/Location;->mBearing:F

    .line 17
    .line 18
    iget-byte p1, p0, Landroid/location/Location;->mFieldsMask:B

    .line 19
    .line 20
    or-int/lit8 p1, p1, 0x4

    .line 21
    .line 22
    int-to-byte p1, p1

    .line 23
    iput-byte p1, p0, Landroid/location/Location;->mFieldsMask:B

    .line 24
    .line 25
    return-void
.end method

.method public setBearingAccuracyDegrees(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    .line 2
    .line 3
    iget-byte p1, p0, Landroid/location/Location;->mFieldsMask:B

    .line 4
    .line 5
    or-int/lit16 p1, p1, 0x80

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    iput-byte p1, p0, Landroid/location/Location;->mFieldsMask:B

    .line 9
    .line 10
    return-void
.end method

.method public setElapsedRealtimeNanos(J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    return-void
.end method

.method public setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public setIsFromMockProvider(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-byte p1, p0, Landroid/location/Location;->mFieldsMask:B

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x10

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    iput-byte p1, p0, Landroid/location/Location;->mFieldsMask:B

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-byte p1, p0, Landroid/location/Location;->mFieldsMask:B

    .line 12
    .line 13
    and-int/lit8 p1, p1, -0x11

    .line 14
    .line 15
    int-to-byte p1, p1

    .line 16
    iput-byte p1, p0, Landroid/location/Location;->mFieldsMask:B

    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/location/Location;->mSpeed:F

    .line 2
    .line 3
    iget-byte p1, p0, Landroid/location/Location;->mFieldsMask:B

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x2

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    iput-byte p1, p0, Landroid/location/Location;->mFieldsMask:B

    .line 9
    .line 10
    return-void
.end method

.method public setSpeedAccuracyMetersPerSecond(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 2
    .line 3
    iget-byte p1, p0, Landroid/location/Location;->mFieldsMask:B

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x40

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    iput-byte p1, p0, Landroid/location/Location;->mFieldsMask:B

    .line 9
    .line 10
    return-void
.end method

.method public setTime(J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    return-void
.end method

.method public setVerticalAccuracyMeters(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    .line 2
    .line 3
    iget-byte p1, p0, Landroid/location/Location;->mFieldsMask:B

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x20

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    iput-byte p1, p0, Landroid/location/Location;->mFieldsMask:B

    .line 9
    .line 10
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "Location["

    .line 2
    .line 3
    invoke-static {v0}, Landroid/accessibilityservice/c;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    iget-wide v2, p0, Landroid/location/Location;->mLatitude:D

    .line 16
    .line 17
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x0

    .line 22
    aput-object v2, v1, v3

    .line 23
    .line 24
    iget-wide v4, p0, Landroid/location/Location;->mLongitude:D

    .line 25
    .line 26
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v4, 0x1

    .line 31
    aput-object v2, v1, v4

    .line 32
    .line 33
    const-string v2, " %.6f,%.6f"

    .line 34
    .line 35
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    new-array v1, v4, [Ljava/lang/Object;

    .line 49
    .line 50
    iget v2, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 51
    .line 52
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    aput-object v2, v1, v3

    .line 57
    .line 58
    const-string v2, " hAcc=%.0f"

    .line 59
    .line 60
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const-string v1, " hAcc=???"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    :goto_0
    iget-wide v1, p0, Landroid/location/Location;->mTime:J

    .line 74
    .line 75
    const-wide/16 v5, 0x0

    .line 76
    .line 77
    cmp-long v1, v1, v5

    .line 78
    .line 79
    if-nez v1, :cond_1

    .line 80
    .line 81
    const-string v1, " t=?!?"

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    :cond_1
    iget-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 87
    .line 88
    cmp-long v1, v1, v5

    .line 89
    .line 90
    if-nez v1, :cond_2

    .line 91
    .line 92
    const-string v1, " et=?!?"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    const-string v1, " et="

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 104
    .line 105
    const-wide/32 v5, 0xf4240

    .line 106
    .line 107
    .line 108
    div-long/2addr v1, v5

    .line 109
    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 110
    .line 111
    .line 112
    :goto_1
    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_3

    .line 117
    .line 118
    const-string v1, " alt="

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-wide v1, p0, Landroid/location/Location;->mAltitude:D

    .line 124
    .line 125
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    :cond_3
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_4

    .line 133
    .line 134
    const-string v1, " vel="

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget v1, p0, Landroid/location/Location;->mSpeed:F

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    :cond_4
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_5

    .line 149
    .line 150
    const-string v1, " bear="

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget v1, p0, Landroid/location/Location;->mBearing:F

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    :cond_5
    invoke-virtual {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_6

    .line 165
    .line 166
    new-array v1, v4, [Ljava/lang/Object;

    .line 167
    .line 168
    iget v2, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    .line 169
    .line 170
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    aput-object v2, v1, v3

    .line 175
    .line 176
    const-string v2, " vAcc=%.0f"

    .line 177
    .line 178
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_6
    const-string v1, " vAcc=???"

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    :goto_2
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_7

    .line 196
    .line 197
    new-array v1, v4, [Ljava/lang/Object;

    .line 198
    .line 199
    iget v2, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 200
    .line 201
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    aput-object v2, v1, v3

    .line 206
    .line 207
    const-string v2, " sAcc=%.0f"

    .line 208
    .line 209
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_7
    const-string v1, " sAcc=???"

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    :goto_3
    invoke-virtual {p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-eqz v1, :cond_8

    .line 227
    .line 228
    new-array v1, v4, [Ljava/lang/Object;

    .line 229
    .line 230
    iget v2, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    .line 231
    .line 232
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    aput-object v2, v1, v3

    .line 237
    .line 238
    const-string v2, " bAcc=%.0f"

    .line 239
    .line 240
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_8
    const-string v1, " bAcc=???"

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    :goto_4
    invoke-virtual {p0}, Landroid/location/Location;->isFromMockProvider()Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-eqz v1, :cond_9

    .line 258
    .line 259
    const-string v1, " mock"

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    :cond_9
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 265
    .line 266
    if-eqz v1, :cond_a

    .line 267
    .line 268
    const-string v1, " {"

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 274
    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const/16 v1, 0x7d

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    :cond_a
    const/16 v1, 0x5d

    .line 284
    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 14
    .line 15
    .line 16
    iget-byte p2, p0, Landroid/location/Location;->mFieldsMask:B

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 19
    .line 20
    .line 21
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 24
    .line 25
    .line 26
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 29
    .line 30
    .line 31
    iget-wide v0, p0, Landroid/location/Location;->mAltitude:D

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 34
    .line 35
    .line 36
    iget p2, p0, Landroid/location/Location;->mSpeed:F

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 39
    .line 40
    .line 41
    iget p2, p0, Landroid/location/Location;->mBearing:F

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 44
    .line 45
    .line 46
    iget p2, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 49
    .line 50
    .line 51
    iget p2, p0, Landroid/location/Location;->mVerticalAccuracyMeters:F

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 54
    .line 55
    .line 56
    iget p2, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 59
    .line 60
    .line 61
    iget p2, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
