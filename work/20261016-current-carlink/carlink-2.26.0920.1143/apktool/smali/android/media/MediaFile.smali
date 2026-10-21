.class public Landroid/media/MediaFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field public static final FILE_TYPE_3GPP:I = 0x17

.field public static final FILE_TYPE_3GPP2:I = 0x18

.field public static final FILE_TYPE_AAC:I = 0x8

.field public static final FILE_TYPE_AMR:I = 0x4

.field public static final FILE_TYPE_ARW:I = 0x130

.field public static final FILE_TYPE_ASF:I = 0x1a

.field public static final FILE_TYPE_AVI:I = 0x1d

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x22

.field public static final FILE_TYPE_CR2:I = 0x12d

.field public static final FILE_TYPE_DCF:I = 0x33

.field public static final FILE_TYPE_DNG:I = 0x12c

.field public static final FILE_TYPE_FLAC:I = 0xa

.field public static final FILE_TYPE_GIF:I = 0x20

.field public static final FILE_TYPE_HEIF:I = 0x25

.field public static final FILE_TYPE_HTML:I = 0x65

.field public static final FILE_TYPE_HTTPLIVE:I = 0x2c

.field public static final FILE_TYPE_IMY:I = 0xd

.field public static final FILE_TYPE_JPEG:I = 0x1f

.field public static final FILE_TYPE_M3U:I = 0x29

.field public static final FILE_TYPE_M4A:I = 0x2

.field public static final FILE_TYPE_M4V:I = 0x16

.field public static final FILE_TYPE_MID:I = 0xb

.field public static final FILE_TYPE_MKA:I = 0x9

.field public static final FILE_TYPE_MKV:I = 0x1b

.field public static final FILE_TYPE_MP2PS:I = 0xc8

.field public static final FILE_TYPE_MP2TS:I = 0x1c

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x15

.field public static final FILE_TYPE_MS_EXCEL:I = 0x69

.field public static final FILE_TYPE_MS_POWERPOINT:I = 0x6a

.field public static final FILE_TYPE_MS_WORD:I = 0x68

.field public static final FILE_TYPE_NEF:I = 0x12e

.field public static final FILE_TYPE_NRW:I = 0x12f

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_ORF:I = 0x132

.field public static final FILE_TYPE_PDF:I = 0x66

.field public static final FILE_TYPE_PEF:I = 0x134

.field public static final FILE_TYPE_PLS:I = 0x2a

.field public static final FILE_TYPE_PNG:I = 0x21

.field public static final FILE_TYPE_QT:I = 0xc9

.field public static final FILE_TYPE_RAF:I = 0x133

.field public static final FILE_TYPE_RW2:I = 0x131

.field public static final FILE_TYPE_SMF:I = 0xc

.field public static final FILE_TYPE_SRW:I = 0x135

.field public static final FILE_TYPE_TEXT:I = 0x64

.field public static final FILE_TYPE_WAV:I = 0x3

.field public static final FILE_TYPE_WBMP:I = 0x23

.field public static final FILE_TYPE_WEBM:I = 0x1e

.field public static final FILE_TYPE_WEBP:I = 0x24

.field public static final FILE_TYPE_WMA:I = 0x6

.field public static final FILE_TYPE_WMV:I = 0x19

.field public static final FILE_TYPE_WPL:I = 0x2b

.field public static final FILE_TYPE_XML:I = 0x67

.field public static final FILE_TYPE_ZIP:I = 0x6b

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_DRM_FILE_TYPE:I = 0x33

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x1f

.field private static final FIRST_MIDI_FILE_TYPE:I = 0xb

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x29

.field private static final FIRST_RAW_IMAGE_FILE_TYPE:I = 0x12c

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x15

.field private static final FIRST_VIDEO_FILE_TYPE2:I = 0xc8

.field private static final LAST_AUDIO_FILE_TYPE:I = 0xa

.field private static final LAST_DRM_FILE_TYPE:I = 0x33

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x25

.field private static final LAST_MIDI_FILE_TYPE:I = 0xd

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x2c

.field private static final LAST_RAW_IMAGE_FILE_TYPE:I = 0x135

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x1e

.field private static final LAST_VIDEO_FILE_TYPE2:I = 0xc9

.field private static final sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFileTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFormatToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    .line 21
    .line 22
    new-instance v0, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    .line 28
    .line 29
    new-instance v0, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    .line 35
    .line 36
    const-string v0, "MP3"

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    const-string v2, "audio/mpeg"

    .line 40
    .line 41
    const/16 v3, 0x3009

    .line 42
    .line 43
    invoke-static {v0, v1, v2, v3, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 44
    .line 45
    .line 46
    const-string v0, "MPGA"

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-static {v0, v1, v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 50
    .line 51
    .line 52
    const-string v0, "M4A"

    .line 53
    .line 54
    const/4 v2, 0x2

    .line 55
    const-string v3, "audio/mp4"

    .line 56
    .line 57
    const/16 v5, 0x300b

    .line 58
    .line 59
    invoke-static {v0, v2, v3, v5, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 60
    .line 61
    .line 62
    const-string v0, "audio/x-wav"

    .line 63
    .line 64
    const/16 v2, 0x3008

    .line 65
    .line 66
    const-string v3, "WAV"

    .line 67
    .line 68
    const/4 v6, 0x3

    .line 69
    invoke-static {v3, v6, v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 70
    .line 71
    .line 72
    const/4 v0, 0x4

    .line 73
    const-string v2, "audio/amr"

    .line 74
    .line 75
    const-string v3, "AMR"

    .line 76
    .line 77
    invoke-static {v3, v0, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 v0, 0x5

    .line 81
    const-string v2, "audio/amr-wb"

    .line 82
    .line 83
    const-string v3, "AWB"

    .line 84
    .line 85
    invoke-static {v3, v0, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {}, Landroid/media/MediaFile;->isWMAEnabled()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_0

    .line 93
    .line 94
    const-string v0, "audio/x-ms-wma"

    .line 95
    .line 96
    const v2, 0xb901

    .line 97
    .line 98
    .line 99
    const-string v3, "WMA"

    .line 100
    .line 101
    const/4 v6, 0x6

    .line 102
    invoke-static {v3, v6, v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 103
    .line 104
    .line 105
    :cond_0
    const-string v0, "audio/ogg"

    .line 106
    .line 107
    const-string v2, "OGG"

    .line 108
    .line 109
    const/4 v3, 0x7

    .line 110
    const v6, 0xb902

    .line 111
    .line 112
    .line 113
    invoke-static {v2, v3, v0, v6, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 114
    .line 115
    .line 116
    const-string v0, "application/ogg"

    .line 117
    .line 118
    invoke-static {v2, v3, v0, v6, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 119
    .line 120
    .line 121
    const-string v2, "OGA"

    .line 122
    .line 123
    invoke-static {v2, v3, v0, v6, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 124
    .line 125
    .line 126
    const-string v0, "audio/aac"

    .line 127
    .line 128
    const-string v2, "AAC"

    .line 129
    .line 130
    const/16 v3, 0x8

    .line 131
    .line 132
    const v6, 0xb903

    .line 133
    .line 134
    .line 135
    invoke-static {v2, v3, v0, v6, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 136
    .line 137
    .line 138
    const-string v0, "audio/aac-adts"

    .line 139
    .line 140
    invoke-static {v2, v3, v0, v6, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 141
    .line 142
    .line 143
    const/16 v0, 0x9

    .line 144
    .line 145
    const-string v2, "audio/x-matroska"

    .line 146
    .line 147
    const-string v3, "MKA"

    .line 148
    .line 149
    invoke-static {v3, v0, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string v0, "MID"

    .line 153
    .line 154
    const/16 v2, 0xb

    .line 155
    .line 156
    const-string v3, "audio/midi"

    .line 157
    .line 158
    invoke-static {v0, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string v0, "MIDI"

    .line 162
    .line 163
    invoke-static {v0, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const-string v0, "XMF"

    .line 167
    .line 168
    invoke-static {v0, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string v0, "RTTTL"

    .line 172
    .line 173
    invoke-static {v0, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    const/16 v0, 0xc

    .line 177
    .line 178
    const-string v6, "audio/sp-midi"

    .line 179
    .line 180
    const-string v7, "SMF"

    .line 181
    .line 182
    invoke-static {v7, v0, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const/16 v0, 0xd

    .line 186
    .line 187
    const-string v6, "audio/imelody"

    .line 188
    .line 189
    const-string v7, "IMY"

    .line 190
    .line 191
    invoke-static {v7, v0, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    const-string v0, "RTX"

    .line 195
    .line 196
    invoke-static {v0, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    .line 198
    .line 199
    const-string v0, "OTA"

    .line 200
    .line 201
    invoke-static {v0, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 202
    .line 203
    .line 204
    const-string v0, "MXMF"

    .line 205
    .line 206
    invoke-static {v0, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 207
    .line 208
    .line 209
    const-string v0, "MPEG"

    .line 210
    .line 211
    const/16 v2, 0x15

    .line 212
    .line 213
    const-string/jumbo v3, "video/mpeg"

    .line 214
    .line 215
    .line 216
    invoke-static {v0, v2, v3, v5, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 217
    .line 218
    .line 219
    const-string v6, "MPG"

    .line 220
    .line 221
    invoke-static {v6, v2, v3, v5, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 222
    .line 223
    .line 224
    const-string v3, "MP4"

    .line 225
    .line 226
    const-string/jumbo v6, "video/mp4"

    .line 227
    .line 228
    .line 229
    invoke-static {v3, v2, v6, v5, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 230
    .line 231
    .line 232
    const/16 v2, 0x16

    .line 233
    .line 234
    const-string/jumbo v3, "video/mp4"

    .line 235
    .line 236
    .line 237
    const-string v6, "M4V"

    .line 238
    .line 239
    invoke-static {v6, v2, v3, v5, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 240
    .line 241
    .line 242
    const/16 v2, 0xc9

    .line 243
    .line 244
    const-string/jumbo v3, "video/quicktime"

    .line 245
    .line 246
    .line 247
    const-string v6, "MOV"

    .line 248
    .line 249
    invoke-static {v6, v2, v3, v5, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 250
    .line 251
    .line 252
    const/16 v2, 0x17

    .line 253
    .line 254
    const-string/jumbo v3, "video/3gpp"

    .line 255
    .line 256
    .line 257
    const-string v5, "3GP"

    .line 258
    .line 259
    const v6, 0xb984

    .line 260
    .line 261
    .line 262
    invoke-static {v5, v2, v3, v6, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 263
    .line 264
    .line 265
    const-string/jumbo v3, "video/3gpp"

    .line 266
    .line 267
    .line 268
    const-string v5, "3GPP"

    .line 269
    .line 270
    invoke-static {v5, v2, v3, v6, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 271
    .line 272
    .line 273
    const/16 v2, 0x18

    .line 274
    .line 275
    const-string/jumbo v3, "video/3gpp2"

    .line 276
    .line 277
    .line 278
    const-string v5, "3G2"

    .line 279
    .line 280
    invoke-static {v5, v2, v3, v6, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 281
    .line 282
    .line 283
    const-string/jumbo v3, "video/3gpp2"

    .line 284
    .line 285
    .line 286
    const-string v5, "3GPP2"

    .line 287
    .line 288
    invoke-static {v5, v2, v3, v6, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 289
    .line 290
    .line 291
    const/16 v2, 0x1b

    .line 292
    .line 293
    const-string/jumbo v3, "video/x-matroska"

    .line 294
    .line 295
    .line 296
    const-string v5, "MKV"

    .line 297
    .line 298
    invoke-static {v5, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 299
    .line 300
    .line 301
    const/16 v2, 0x1e

    .line 302
    .line 303
    const-string/jumbo v3, "video/webm"

    .line 304
    .line 305
    .line 306
    const-string v5, "WEBM"

    .line 307
    .line 308
    invoke-static {v5, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 309
    .line 310
    .line 311
    const/16 v2, 0x1c

    .line 312
    .line 313
    const-string/jumbo v3, "video/mp2ts"

    .line 314
    .line 315
    .line 316
    const-string v5, "TS"

    .line 317
    .line 318
    invoke-static {v5, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 319
    .line 320
    .line 321
    const/16 v2, 0x1d

    .line 322
    .line 323
    const-string/jumbo v3, "video/avi"

    .line 324
    .line 325
    .line 326
    const-string v5, "AVI"

    .line 327
    .line 328
    invoke-static {v5, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-static {}, Landroid/media/MediaFile;->isWMVEnabled()Z

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    if-eqz v2, :cond_1

    .line 336
    .line 337
    const-string/jumbo v2, "video/x-ms-wmv"

    .line 338
    .line 339
    .line 340
    const v3, 0xb981

    .line 341
    .line 342
    .line 343
    const-string v5, "WMV"

    .line 344
    .line 345
    const/16 v6, 0x19

    .line 346
    .line 347
    invoke-static {v5, v6, v2, v3, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 348
    .line 349
    .line 350
    const/16 v2, 0x1a

    .line 351
    .line 352
    const-string/jumbo v3, "video/x-ms-asf"

    .line 353
    .line 354
    .line 355
    const-string v5, "ASF"

    .line 356
    .line 357
    invoke-static {v5, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 358
    .line 359
    .line 360
    :cond_1
    const-string/jumbo v2, "image/jpeg"

    .line 361
    .line 362
    .line 363
    const/16 v3, 0x3801

    .line 364
    .line 365
    const/16 v5, 0x1f

    .line 366
    .line 367
    const-string v6, "JPG"

    .line 368
    .line 369
    invoke-static {v6, v5, v2, v3, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 370
    .line 371
    .line 372
    const-string/jumbo v2, "image/jpeg"

    .line 373
    .line 374
    .line 375
    const-string v6, "JPEG"

    .line 376
    .line 377
    invoke-static {v6, v5, v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 378
    .line 379
    .line 380
    const-string/jumbo v2, "image/gif"

    .line 381
    .line 382
    .line 383
    const/16 v3, 0x3807

    .line 384
    .line 385
    const/16 v5, 0x20

    .line 386
    .line 387
    const-string v6, "GIF"

    .line 388
    .line 389
    invoke-static {v6, v5, v2, v3, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 390
    .line 391
    .line 392
    const-string/jumbo v2, "image/png"

    .line 393
    .line 394
    .line 395
    const/16 v3, 0x380b

    .line 396
    .line 397
    const/16 v5, 0x21

    .line 398
    .line 399
    const-string v6, "PNG"

    .line 400
    .line 401
    invoke-static {v6, v5, v2, v3, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 402
    .line 403
    .line 404
    const-string/jumbo v2, "image/x-ms-bmp"

    .line 405
    .line 406
    .line 407
    const/16 v3, 0x3804

    .line 408
    .line 409
    const/16 v5, 0x22

    .line 410
    .line 411
    const-string v6, "BMP"

    .line 412
    .line 413
    invoke-static {v6, v5, v2, v3, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 414
    .line 415
    .line 416
    const/16 v2, 0x23

    .line 417
    .line 418
    const-string/jumbo v3, "image/vnd.wap.wbmp"

    .line 419
    .line 420
    .line 421
    const/16 v5, 0x3800

    .line 422
    .line 423
    const-string v6, "WBMP"

    .line 424
    .line 425
    invoke-static {v6, v2, v3, v5, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 426
    .line 427
    .line 428
    const/16 v2, 0x24

    .line 429
    .line 430
    const-string/jumbo v3, "image/webp"

    .line 431
    .line 432
    .line 433
    const-string v6, "WEBP"

    .line 434
    .line 435
    invoke-static {v6, v2, v3, v5, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 436
    .line 437
    .line 438
    const-string/jumbo v2, "image/heif"

    .line 439
    .line 440
    .line 441
    const/16 v3, 0x3812

    .line 442
    .line 443
    const/16 v5, 0x25

    .line 444
    .line 445
    const-string v6, "HEIC"

    .line 446
    .line 447
    invoke-static {v6, v5, v2, v3, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 448
    .line 449
    .line 450
    const-string/jumbo v2, "image/heif"

    .line 451
    .line 452
    .line 453
    const-string v6, "HEIF"

    .line 454
    .line 455
    invoke-static {v6, v5, v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 456
    .line 457
    .line 458
    const-string/jumbo v2, "image/x-adobe-dng"

    .line 459
    .line 460
    .line 461
    const/16 v3, 0x3811

    .line 462
    .line 463
    const/16 v5, 0x12c

    .line 464
    .line 465
    const-string v6, "DNG"

    .line 466
    .line 467
    invoke-static {v6, v5, v2, v3, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 468
    .line 469
    .line 470
    const/16 v2, 0x12d

    .line 471
    .line 472
    const-string/jumbo v3, "image/x-canon-cr2"

    .line 473
    .line 474
    .line 475
    const/16 v5, 0x380d

    .line 476
    .line 477
    const-string v6, "CR2"

    .line 478
    .line 479
    invoke-static {v6, v2, v3, v5, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 480
    .line 481
    .line 482
    const-string/jumbo v2, "image/x-nikon-nef"

    .line 483
    .line 484
    .line 485
    const/16 v3, 0x3802

    .line 486
    .line 487
    const/16 v5, 0x12e

    .line 488
    .line 489
    const-string v6, "NEF"

    .line 490
    .line 491
    invoke-static {v6, v5, v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 492
    .line 493
    .line 494
    const/16 v2, 0x12f

    .line 495
    .line 496
    const-string/jumbo v3, "image/x-nikon-nrw"

    .line 497
    .line 498
    .line 499
    const/16 v5, 0x380d

    .line 500
    .line 501
    const-string v6, "NRW"

    .line 502
    .line 503
    invoke-static {v6, v2, v3, v5, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 504
    .line 505
    .line 506
    const/16 v2, 0x130

    .line 507
    .line 508
    const-string/jumbo v3, "image/x-sony-arw"

    .line 509
    .line 510
    .line 511
    const-string v6, "ARW"

    .line 512
    .line 513
    invoke-static {v6, v2, v3, v5, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 514
    .line 515
    .line 516
    const/16 v2, 0x131

    .line 517
    .line 518
    const-string/jumbo v3, "image/x-panasonic-rw2"

    .line 519
    .line 520
    .line 521
    const-string v6, "RW2"

    .line 522
    .line 523
    invoke-static {v6, v2, v3, v5, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 524
    .line 525
    .line 526
    const/16 v2, 0x132

    .line 527
    .line 528
    const-string/jumbo v3, "image/x-olympus-orf"

    .line 529
    .line 530
    .line 531
    const-string v6, "ORF"

    .line 532
    .line 533
    invoke-static {v6, v2, v3, v5, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 534
    .line 535
    .line 536
    const/16 v2, 0x133

    .line 537
    .line 538
    const-string/jumbo v3, "image/x-fuji-raf"

    .line 539
    .line 540
    .line 541
    const/16 v5, 0x3800

    .line 542
    .line 543
    const-string v6, "RAF"

    .line 544
    .line 545
    invoke-static {v6, v2, v3, v5, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 546
    .line 547
    .line 548
    const/16 v2, 0x134

    .line 549
    .line 550
    const-string/jumbo v3, "image/x-pentax-pef"

    .line 551
    .line 552
    .line 553
    const/16 v5, 0x380d

    .line 554
    .line 555
    const-string v6, "PEF"

    .line 556
    .line 557
    invoke-static {v6, v2, v3, v5, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 558
    .line 559
    .line 560
    const/16 v2, 0x135

    .line 561
    .line 562
    const-string/jumbo v3, "image/x-samsung-srw"

    .line 563
    .line 564
    .line 565
    const-string v6, "SRW"

    .line 566
    .line 567
    invoke-static {v6, v2, v3, v5, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 568
    .line 569
    .line 570
    const-string v2, "audio/x-mpegurl"

    .line 571
    .line 572
    const v3, 0xba11

    .line 573
    .line 574
    .line 575
    const/16 v5, 0x29

    .line 576
    .line 577
    const-string v6, "M3U"

    .line 578
    .line 579
    invoke-static {v6, v5, v2, v3, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 580
    .line 581
    .line 582
    const-string v2, "application/x-mpegurl"

    .line 583
    .line 584
    const-string v6, "M3U"

    .line 585
    .line 586
    invoke-static {v6, v5, v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 587
    .line 588
    .line 589
    const-string v2, "audio/x-scpls"

    .line 590
    .line 591
    const v3, 0xba14

    .line 592
    .line 593
    .line 594
    const/16 v5, 0x2a

    .line 595
    .line 596
    const-string v6, "PLS"

    .line 597
    .line 598
    invoke-static {v6, v5, v2, v3, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 599
    .line 600
    .line 601
    const-string v2, "application/vnd.ms-wpl"

    .line 602
    .line 603
    const v3, 0xba10

    .line 604
    .line 605
    .line 606
    const/16 v5, 0x2b

    .line 607
    .line 608
    const-string v6, "WPL"

    .line 609
    .line 610
    invoke-static {v6, v5, v2, v3, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 611
    .line 612
    .line 613
    const-string v2, "application/vnd.apple.mpegurl"

    .line 614
    .line 615
    const/16 v3, 0x2c

    .line 616
    .line 617
    const-string v5, "M3U8"

    .line 618
    .line 619
    invoke-static {v5, v3, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 620
    .line 621
    .line 622
    const-string v2, "audio/mpegurl"

    .line 623
    .line 624
    invoke-static {v5, v3, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 625
    .line 626
    .line 627
    const-string v2, "audio/x-mpegurl"

    .line 628
    .line 629
    invoke-static {v5, v3, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 630
    .line 631
    .line 632
    const/16 v2, 0x33

    .line 633
    .line 634
    const-string v3, "application/vnd.oma.drm.content"

    .line 635
    .line 636
    const-string v5, "DCF"

    .line 637
    .line 638
    invoke-static {v5, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 639
    .line 640
    .line 641
    const-string/jumbo v2, "text/plain"

    .line 642
    .line 643
    .line 644
    const/16 v3, 0x3004

    .line 645
    .line 646
    const/16 v5, 0x64

    .line 647
    .line 648
    const-string v6, "TXT"

    .line 649
    .line 650
    invoke-static {v6, v5, v2, v3, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 651
    .line 652
    .line 653
    const-string/jumbo v2, "text/html"

    .line 654
    .line 655
    .line 656
    const/16 v3, 0x3005

    .line 657
    .line 658
    const/16 v5, 0x65

    .line 659
    .line 660
    const-string v6, "HTM"

    .line 661
    .line 662
    invoke-static {v6, v5, v2, v3, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 663
    .line 664
    .line 665
    const-string/jumbo v2, "text/html"

    .line 666
    .line 667
    .line 668
    const-string v6, "HTML"

    .line 669
    .line 670
    invoke-static {v6, v5, v2, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 671
    .line 672
    .line 673
    const/16 v2, 0x66

    .line 674
    .line 675
    const-string v3, "application/pdf"

    .line 676
    .line 677
    const-string v4, "PDF"

    .line 678
    .line 679
    invoke-static {v4, v2, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 680
    .line 681
    .line 682
    const-string v2, "application/msword"

    .line 683
    .line 684
    const v3, 0xba83

    .line 685
    .line 686
    .line 687
    const/16 v4, 0x68

    .line 688
    .line 689
    const-string v5, "DOC"

    .line 690
    .line 691
    invoke-static {v5, v4, v2, v3, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 692
    .line 693
    .line 694
    const-string v2, "application/vnd.ms-excel"

    .line 695
    .line 696
    const v3, 0xba85

    .line 697
    .line 698
    .line 699
    const/16 v4, 0x69

    .line 700
    .line 701
    const-string v5, "XLS"

    .line 702
    .line 703
    invoke-static {v5, v4, v2, v3, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 704
    .line 705
    .line 706
    const-string v2, "application/mspowerpoint"

    .line 707
    .line 708
    const v3, 0xba86

    .line 709
    .line 710
    .line 711
    const/16 v4, 0x6a

    .line 712
    .line 713
    const-string v5, "PPT"

    .line 714
    .line 715
    invoke-static {v5, v4, v2, v3, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 716
    .line 717
    .line 718
    const-string v2, "audio/flac"

    .line 719
    .line 720
    const v3, 0xb906

    .line 721
    .line 722
    .line 723
    const/16 v4, 0xa

    .line 724
    .line 725
    const-string v5, "FLAC"

    .line 726
    .line 727
    invoke-static {v5, v4, v2, v3, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    .line 728
    .line 729
    .line 730
    const/16 v1, 0x6b

    .line 731
    .line 732
    const-string v2, "application/zip"

    .line 733
    .line 734
    const-string v3, "ZIP"

    .line 735
    .line 736
    invoke-static {v3, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 737
    .line 738
    .line 739
    const/16 v1, 0xc8

    .line 740
    .line 741
    const-string/jumbo v2, "video/mp2p"

    .line 742
    .line 743
    .line 744
    const-string v3, "MPG"

    .line 745
    .line 746
    invoke-static {v3, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 747
    .line 748
    .line 749
    const-string/jumbo v2, "video/mp2p"

    .line 750
    .line 751
    .line 752
    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 753
    .line 754
    .line 755
    invoke-static {}, Landroid/media/MediaFileExUtils;->addFileType()V

    .line 756
    .line 757
    .line 758
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Landroid/media/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object p0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V
    .locals 1

    .line 3
    invoke-static {p0, p1, p2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    sget-object p1, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 6
    sget-object p0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 7
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x2f

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_0
    const/16 v0, 0x2e

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-lez v0, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    :cond_1
    return-object p0
.end method

.method public static getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .locals 2

    .line 1
    const/16 v0, 0x2e

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    sget-object v1, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Landroid/media/MediaFile$MediaFileType;

    .line 30
    .line 31
    return-object p0
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Integer;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    :goto_0
    return p0
.end method

.method public static getFormatCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Integer;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const/16 p1, 0x2e

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-lez p1, :cond_1

    .line 25
    .line 26
    add-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    sget-object p1, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Ljava/lang/Integer;

    .line 45
    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0

    .line 53
    :cond_1
    const/16 p0, 0x3000

    .line 54
    .line 55
    return p0
.end method

.method public static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    .line 10
    .line 11
    :goto_0
    return-object p0
.end method

.method public static getMimeTypeForFormatCode(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static isAudioFileType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0xa

    if-le p0, v1, :cond_4

    :cond_0
    const/16 v1, 0x190

    if-lt p0, v1, :cond_1

    const/16 v1, 0x197

    if-le p0, v1, :cond_4

    :cond_1
    const/16 v1, 0xb

    if-lt p0, v1, :cond_2

    const/16 v1, 0xd

    if-le p0, v1, :cond_4

    :cond_2
    const/16 v1, 0xe

    if-lt p0, v1, :cond_3

    const/16 v1, 0xf

    if-gt p0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method

.method public static isDrmFileType(I)Z
    .locals 1

    const/16 v0, 0x33

    if-lt p0, v0, :cond_0

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isImageFileType(I)Z
    .locals 1

    const/16 v0, 0x1f

    if-lt p0, v0, :cond_0

    const/16 v0, 0x25

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_2

    const/16 v0, 0x135

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMimeTypeMedia(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-static {p0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-static {p0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-static {p0}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 33
    :goto_1
    return p0
.end method

.method public static isPlayListFileType(I)Z
    .locals 1

    const/16 v0, 0x29

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2c

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRawImageFileType(I)Z
    .locals 1

    const/16 v0, 0x12c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x135

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoFileType(I)Z
    .locals 1

    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1e

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_1

    const/16 v0, 0xc9

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0xca

    if-lt p0, v0, :cond_3

    const/16 v0, 0xcf

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isWMAEnabled()Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/media/DecoderCapabilities;->getAudioDecoders()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

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
    if-ge v3, v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Landroid/media/DecoderCapabilities$AudioDecoder;

    .line 18
    .line 19
    sget-object v5, Landroid/media/DecoderCapabilities$AudioDecoder;->AUDIO_DECODER_WMA:Landroid/media/DecoderCapabilities$AudioDecoder;

    .line 20
    .line 21
    if-ne v4, v5, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v2
.end method

.method private static isWMVEnabled()Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/media/DecoderCapabilities;->getVideoDecoders()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

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
    if-ge v3, v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Landroid/media/DecoderCapabilities$VideoDecoder;

    .line 18
    .line 19
    sget-object v5, Landroid/media/DecoderCapabilities$VideoDecoder;->VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;

    .line 20
    .line 21
    if-ne v4, v5, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v2
.end method
