.class public Landroid/hardware/camera2/impl/CameraMetadataNative;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraMetadataNative$Key;
    }
.end annotation


# static fields
.field private static final CELLID_PROCESS:Ljava/lang/String; = "CELLID"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final FACE_LANDMARK_SIZE:I = 0x6

.field private static final GPS_PROCESS:Ljava/lang/String; = "GPS"

.field public static final NATIVE_JPEG_FORMAT:I = 0x21

.field public static final NUM_TYPES:I = 0x6

.field private static final TAG:Ljava/lang/String; = "CameraMetadataJV"

.field public static final TYPE_BYTE:I = 0x0

.field public static final TYPE_DOUBLE:I = 0x4

.field public static final TYPE_FLOAT:I = 0x2

.field public static final TYPE_INT32:I = 0x1

.field public static final TYPE_INT64:I = 0x3

.field public static final TYPE_RATIONAL:I = 0x5

.field private static final sGetCommandMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "*>;",
            "Landroid/hardware/camera2/impl/GetCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSetCommandMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "*>;",
            "Landroid/hardware/camera2/impl/SetCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMetadataPtr:J


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    .line 14
    .line 15
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-instance v3, Landroid/hardware/camera2/impl/CameraMetadataNative$2;

    .line 22
    .line 23
    invoke-direct {v3}, Landroid/hardware/camera2/impl/CameraMetadataNative$2;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    new-instance v4, Landroid/hardware/camera2/impl/CameraMetadataNative$3;

    .line 36
    .line 37
    invoke-direct {v4}, Landroid/hardware/camera2/impl/CameraMetadataNative$3;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    new-instance v5, Landroid/hardware/camera2/impl/CameraMetadataNative$4;

    .line 50
    .line 51
    invoke-direct {v5}, Landroid/hardware/camera2/impl/CameraMetadataNative$4;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    new-instance v5, Landroid/hardware/camera2/impl/CameraMetadataNative$5;

    .line 64
    .line 65
    invoke-direct {v5}, Landroid/hardware/camera2/impl/CameraMetadataNative$5;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 72
    .line 73
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    new-instance v5, Landroid/hardware/camera2/impl/CameraMetadataNative$6;

    .line 78
    .line 79
    invoke-direct {v5}, Landroid/hardware/camera2/impl/CameraMetadataNative$6;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AWB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 86
    .line 87
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    new-instance v5, Landroid/hardware/camera2/impl/CameraMetadataNative$7;

    .line 92
    .line 93
    invoke-direct {v5}, Landroid/hardware/camera2/impl/CameraMetadataNative$7;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 100
    .line 101
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    new-instance v5, Landroid/hardware/camera2/impl/CameraMetadataNative$8;

    .line 106
    .line 107
    invoke-direct {v5}, Landroid/hardware/camera2/impl/CameraMetadataNative$8;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_RAW:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 114
    .line 115
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    new-instance v5, Landroid/hardware/camera2/impl/CameraMetadataNative$9;

    .line 120
    .line 121
    invoke-direct {v5}, Landroid/hardware/camera2/impl/CameraMetadataNative$9;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 128
    .line 129
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    new-instance v5, Landroid/hardware/camera2/impl/CameraMetadataNative$10;

    .line 134
    .line 135
    invoke-direct {v5}, Landroid/hardware/camera2/impl/CameraMetadataNative$10;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC_STALLING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 142
    .line 143
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    new-instance v5, Landroid/hardware/camera2/impl/CameraMetadataNative$11;

    .line 148
    .line 149
    invoke-direct {v5}, Landroid/hardware/camera2/impl/CameraMetadataNative$11;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 156
    .line 157
    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    new-instance v6, Landroid/hardware/camera2/impl/CameraMetadataNative$12;

    .line 162
    .line 163
    invoke-direct {v6}, Landroid/hardware/camera2/impl/CameraMetadataNative$12;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 170
    .line 171
    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    new-instance v7, Landroid/hardware/camera2/impl/CameraMetadataNative$13;

    .line 176
    .line 177
    invoke-direct {v7}, Landroid/hardware/camera2/impl/CameraMetadataNative$13;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_CORRECTION_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    .line 184
    .line 185
    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    new-instance v7, Landroid/hardware/camera2/impl/CameraMetadataNative$14;

    .line 190
    .line 191
    invoke-direct {v7}, Landroid/hardware/camera2/impl/CameraMetadataNative$14;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    new-instance v0, Ljava/util/HashMap;

    .line 198
    .line 199
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 200
    .line 201
    .line 202
    sput-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    .line 203
    .line 204
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    new-instance v6, Landroid/hardware/camera2/impl/CameraMetadataNative$15;

    .line 209
    .line 210
    invoke-direct {v6}, Landroid/hardware/camera2/impl/CameraMetadataNative$15;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    new-instance v3, Landroid/hardware/camera2/impl/CameraMetadataNative$16;

    .line 221
    .line 222
    invoke-direct {v3}, Landroid/hardware/camera2/impl/CameraMetadataNative$16;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$17;

    .line 233
    .line 234
    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$17;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$18;

    .line 245
    .line 246
    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$18;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative$19;

    .line 257
    .line 258
    invoke-direct {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative$19;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->registerAllMarshalers()V

    .line 265
    .line 266
    .line 267
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeAllocate()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Failed to allocate native CameraMetadata"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeAllocateCopy(Landroid/hardware/camera2/impl/CameraMetadataNative;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/OutOfMemoryError;

    const-string v0, "Failed to allocate native CameraMetadata"

    invoke-direct {p1, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Landroid/hardware/camera2/impl/CameraMetadataNative;)[I
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getAvailableFormats()[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/hardware/camera2/params/Face;
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getFaces()[Landroid/hardware/camera2/params/Face;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1000(Landroid/hardware/camera2/impl/CameraMetadataNative;[Landroid/graphics/Rect;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setFaceRectangles([Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1100(Landroid/hardware/camera2/impl/CameraMetadataNative;[Landroid/hardware/camera2/params/Face;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setFaces([Landroid/hardware/camera2/params/Face;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1200(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/params/TonemapCurve;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setTonemapCurve(Landroid/hardware/camera2/params/TonemapCurve;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1300(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/location/Location;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setGpsLocation(Landroid/location/Location;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Landroid/hardware/camera2/impl/CameraMetadataNative;)[Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getFaceRectangles()[Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMaxRegions(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMaxNumOutputs(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/TonemapCurve;
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getTonemapCurve()Landroid/hardware/camera2/params/TonemapCurve;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/location/Location;
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getGpsLocation()Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/params/LensShadingMap;
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getLensShadingMap()Landroid/hardware/camera2/params/LensShadingMap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Landroid/hardware/camera2/impl/CameraMetadataNative;[I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setAvailableFormats([I)Z

    move-result p0

    return p0
.end method

.method private static varargs areValuesAllNull([Ljava/lang/Object;)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private close()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeClose()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Landroid/hardware/camera2/impl/CameraMetadataNative;->mMetadataPtr:J

    .line 7
    .line 8
    return-void
.end method

.method private getAvailableFormats()[I
    .locals 4

    .line 1
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [I

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    array-length v2, v0

    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    aget v2, v0, v1

    .line 16
    .line 17
    const/16 v3, 0x21

    .line 18
    .line 19
    if-ne v2, v3, :cond_0

    .line 20
    .line 21
    const/16 v2, 0x100

    .line 22
    .line 23
    aput v2, v0, v1

    .line 24
    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-object v0
.end method

.method private getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKeyLocal(Ljava/lang/String;)I

    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->readValues(I)[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTypeFromTagLocal(I)I

    move-result v0

    .line 7
    invoke-static {p1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMarshalerForKey(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object p1

    .line 8
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/marshal/Marshaler;->unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private getFaceRectangles()[Landroid/graphics/Rect;
    .locals 8

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroid/graphics/Rect;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_0
    array-length v1, v0

    .line 14
    new-array v1, v1, [Landroid/graphics/Rect;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    array-length v3, v0

    .line 18
    if-ge v2, v3, :cond_1

    .line 19
    .line 20
    new-instance v3, Landroid/graphics/Rect;

    .line 21
    .line 22
    aget-object v4, v0, v2

    .line 23
    .line 24
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 25
    .line 26
    iget v6, v4, Landroid/graphics/Rect;->top:I

    .line 27
    .line 28
    iget v7, v4, Landroid/graphics/Rect;->right:I

    .line 29
    .line 30
    sub-int/2addr v7, v5

    .line 31
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 32
    .line 33
    sub-int/2addr v4, v6

    .line 34
    invoke-direct {v3, v5, v6, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 35
    .line 36
    .line 37
    aput-object v3, v1, v2

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-object v1
.end method

.method private getFaces()[Landroid/hardware/camera2/params/Face;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_SCORES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, [B

    .line 18
    .line 19
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, [Landroid/graphics/Rect;

    .line 26
    .line 27
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_IDS:Landroid/hardware/camera2/CaptureResult$Key;

    .line 28
    .line 29
    invoke-virtual {v0, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, [I

    .line 34
    .line 35
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_LANDMARKS:Landroid/hardware/camera2/CaptureResult$Key;

    .line 36
    .line 37
    invoke-virtual {v0, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, [I

    .line 42
    .line 43
    const/4 v6, 0x5

    .line 44
    new-array v7, v6, [Ljava/lang/Object;

    .line 45
    .line 46
    const/4 v8, 0x0

    .line 47
    aput-object v1, v7, v8

    .line 48
    .line 49
    const/4 v9, 0x1

    .line 50
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    aput-object v2, v7, v9

    .line 55
    .line 56
    const/4 v11, 0x2

    .line 57
    aput-object v3, v7, v11

    .line 58
    .line 59
    const/4 v12, 0x3

    .line 60
    aput-object v4, v7, v12

    .line 61
    .line 62
    const/4 v13, 0x4

    .line 63
    aput-object v5, v7, v13

    .line 64
    .line 65
    invoke-static {v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->areValuesAllNull([Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_0

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    return-object v1

    .line 73
    :cond_0
    const-string v7, "CameraMetadataJV"

    .line 74
    .line 75
    if-nez v1, :cond_1

    .line 76
    .line 77
    const-string v1, "Face detect mode metadata is null, assuming the mode is SIMPLE"

    .line 78
    .line 79
    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-object v1, v10

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v13

    .line 88
    if-nez v13, :cond_2

    .line 89
    .line 90
    new-array v1, v8, [Landroid/hardware/camera2/params/Face;

    .line 91
    .line 92
    return-object v1

    .line 93
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v13

    .line 97
    if-eq v13, v9, :cond_3

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 100
    .line 101
    .line 102
    move-result v13

    .line 103
    if-eq v13, v11, :cond_3

    .line 104
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v3, "Unknown face detect mode: "

    .line 108
    .line 109
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    new-array v1, v8, [Landroid/hardware/camera2/params/Face;

    .line 123
    .line 124
    return-object v1

    .line 125
    :cond_3
    :goto_0
    if-eqz v2, :cond_f

    .line 126
    .line 127
    if-nez v3, :cond_4

    .line 128
    .line 129
    goto/16 :goto_6

    .line 130
    .line 131
    :cond_4
    array-length v13, v2

    .line 132
    array-length v14, v3

    .line 133
    if-eq v13, v14, :cond_5

    .line 134
    .line 135
    new-array v13, v11, [Ljava/lang/Object;

    .line 136
    .line 137
    array-length v14, v2

    .line 138
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v14

    .line 142
    aput-object v14, v13, v8

    .line 143
    .line 144
    array-length v14, v3

    .line 145
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v14

    .line 149
    aput-object v14, v13, v9

    .line 150
    .line 151
    const-string v14, "Face score size(%d) doesn match face rectangle size(%d)!"

    .line 152
    .line 153
    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v13

    .line 157
    invoke-static {v7, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    :cond_5
    array-length v13, v2

    .line 161
    array-length v14, v3

    .line 162
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    .line 163
    .line 164
    .line 165
    move-result v13

    .line 166
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 167
    .line 168
    .line 169
    move-result v14

    .line 170
    if-ne v14, v11, :cond_a

    .line 171
    .line 172
    if-eqz v4, :cond_9

    .line 173
    .line 174
    if-nez v5, :cond_6

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_6
    array-length v10, v4

    .line 178
    if-ne v10, v13, :cond_7

    .line 179
    .line 180
    array-length v10, v5

    .line 181
    mul-int/lit8 v14, v13, 0x6

    .line 182
    .line 183
    if-eq v10, v14, :cond_8

    .line 184
    .line 185
    :cond_7
    new-array v10, v12, [Ljava/lang/Object;

    .line 186
    .line 187
    array-length v12, v4

    .line 188
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v12

    .line 192
    aput-object v12, v10, v8

    .line 193
    .line 194
    array-length v12, v5

    .line 195
    mul-int/lit8 v12, v12, 0x6

    .line 196
    .line 197
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v12

    .line 201
    aput-object v12, v10, v9

    .line 202
    .line 203
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v12

    .line 207
    aput-object v12, v10, v11

    .line 208
    .line 209
    const-string v11, "Face id size(%d), or face landmark size(%d) don\'tmatch face number(%d)!"

    .line 210
    .line 211
    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    :cond_8
    array-length v7, v4

    .line 219
    invoke-static {v13, v7}, Ljava/lang/Math;->min(II)I

    .line 220
    .line 221
    .line 222
    move-result v7

    .line 223
    array-length v10, v5

    .line 224
    div-int/lit8 v10, v10, 0x6

    .line 225
    .line 226
    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    .line 227
    .line 228
    .line 229
    move-result v13

    .line 230
    goto :goto_2

    .line 231
    :cond_9
    :goto_1
    const-string v1, "Expect face ids and landmarks to be non-null for FULL mode,fallback to SIMPLE mode"

    .line 232
    .line 233
    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_a
    :goto_2
    move-object v10, v1

    .line 238
    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    .line 239
    .line 240
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    const/16 v10, 0x64

    .line 248
    .line 249
    if-ne v7, v9, :cond_c

    .line 250
    .line 251
    :goto_4
    if-ge v8, v13, :cond_e

    .line 252
    .line 253
    aget-byte v4, v2, v8

    .line 254
    .line 255
    if-gt v4, v10, :cond_b

    .line 256
    .line 257
    if-lt v4, v9, :cond_b

    .line 258
    .line 259
    new-instance v5, Landroid/hardware/camera2/params/Face;

    .line 260
    .line 261
    aget-object v6, v3, v8

    .line 262
    .line 263
    invoke-direct {v5, v6, v4}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    :cond_b
    add-int/lit8 v8, v8, 0x1

    .line 270
    .line 271
    goto :goto_4

    .line 272
    :cond_c
    :goto_5
    if-ge v8, v13, :cond_e

    .line 273
    .line 274
    aget-byte v7, v2, v8

    .line 275
    .line 276
    if-gt v7, v10, :cond_d

    .line 277
    .line 278
    if-lt v7, v9, :cond_d

    .line 279
    .line 280
    aget v7, v4, v8

    .line 281
    .line 282
    if-ltz v7, :cond_d

    .line 283
    .line 284
    new-instance v7, Landroid/graphics/Point;

    .line 285
    .line 286
    mul-int/lit8 v11, v8, 0x6

    .line 287
    .line 288
    aget v12, v5, v11

    .line 289
    .line 290
    add-int/lit8 v14, v11, 0x1

    .line 291
    .line 292
    aget v14, v5, v14

    .line 293
    .line 294
    invoke-direct {v7, v12, v14}, Landroid/graphics/Point;-><init>(II)V

    .line 295
    .line 296
    .line 297
    new-instance v12, Landroid/graphics/Point;

    .line 298
    .line 299
    add-int/lit8 v14, v11, 0x2

    .line 300
    .line 301
    aget v14, v5, v14

    .line 302
    .line 303
    add-int/lit8 v15, v11, 0x3

    .line 304
    .line 305
    aget v15, v5, v15

    .line 306
    .line 307
    invoke-direct {v12, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    .line 308
    .line 309
    .line 310
    new-instance v15, Landroid/graphics/Point;

    .line 311
    .line 312
    add-int/lit8 v14, v11, 0x4

    .line 313
    .line 314
    aget v14, v5, v14

    .line 315
    .line 316
    add-int/2addr v11, v6

    .line 317
    aget v11, v5, v11

    .line 318
    .line 319
    invoke-direct {v15, v14, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 320
    .line 321
    .line 322
    new-instance v11, Landroid/hardware/camera2/params/Face;

    .line 323
    .line 324
    aget-object v16, v3, v8

    .line 325
    .line 326
    aget-byte v17, v2, v8

    .line 327
    .line 328
    aget v18, v4, v8

    .line 329
    .line 330
    move-object v14, v11

    .line 331
    move-object/from16 v20, v15

    .line 332
    .line 333
    move-object/from16 v15, v16

    .line 334
    .line 335
    move/from16 v16, v17

    .line 336
    .line 337
    move/from16 v17, v18

    .line 338
    .line 339
    move-object/from16 v18, v7

    .line 340
    .line 341
    move-object/from16 v19, v12

    .line 342
    .line 343
    invoke-direct/range {v14 .. v20}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    :cond_d
    add-int/lit8 v8, v8, 0x1

    .line 350
    .line 351
    goto :goto_5

    .line 352
    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    new-array v2, v2, [Landroid/hardware/camera2/params/Face;

    .line 357
    .line 358
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    return-object v2

    .line 362
    :cond_f
    :goto_6
    const-string v1, "Expect face scores and rectangles to be non-null"

    .line 363
    .line 364
    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    new-array v1, v8, [Landroid/hardware/camera2/params/Face;

    .line 368
    .line 369
    return-object v1
.end method

.method private getGpsLocation()Landroid/location/Location;
    .locals 11

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureResult$Key;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, [D

    .line 16
    .line 17
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/Long;

    .line 24
    .line 25
    const/4 v3, 0x3

    .line 26
    new-array v3, v3, [Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    aput-object v0, v3, v4

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    aput-object v1, v3, v5

    .line 33
    .line 34
    const/4 v6, 0x2

    .line 35
    aput-object v2, v3, v6

    .line 36
    .line 37
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->areValuesAllNull([Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    return-object v0

    .line 45
    :cond_0
    new-instance v3, Landroid/location/Location;

    .line 46
    .line 47
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->translateProcessToLocationProvider(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-direct {v3, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v0, "CameraMetadataJV"

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 59
    .line 60
    .line 61
    move-result-wide v7

    .line 62
    const-wide/16 v9, 0x3e8

    .line 63
    .line 64
    mul-long/2addr v7, v9

    .line 65
    invoke-virtual {v3, v7, v8}, Landroid/location/Location;->setTime(J)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const-string v2, "getGpsLocation - No timestamp for GPS location."

    .line 70
    .line 71
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :goto_0
    if-eqz v1, :cond_2

    .line 75
    .line 76
    aget-wide v7, v1, v4

    .line 77
    .line 78
    invoke-virtual {v3, v7, v8}, Landroid/location/Location;->setLatitude(D)V

    .line 79
    .line 80
    .line 81
    aget-wide v4, v1, v5

    .line 82
    .line 83
    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 84
    .line 85
    .line 86
    aget-wide v0, v1, v6

    .line 87
    .line 88
    invoke-virtual {v3, v0, v1}, Landroid/location/Location;->setAltitude(D)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    const-string v1, "getGpsLocation - No coordinates for GPS location"

    .line 93
    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :goto_1
    return-object v3
.end method

.method private getLensShadingMap()Landroid/hardware/camera2/params/LensShadingMap;
    .locals 4

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [F

    .line 8
    .line 9
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/util/Size;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    return-object v2

    .line 21
    :cond_0
    if-nez v1, :cond_1

    .line 22
    .line 23
    const-string v0, "CameraMetadataJV"

    .line 24
    .line 25
    const-string v1, "getLensShadingMap - Lens shading map size was null."

    .line 26
    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-object v2

    .line 31
    :cond_1
    new-instance v2, Landroid/hardware/camera2/params/LensShadingMap;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-direct {v2, v0, v3, v1}, Landroid/hardware/camera2/params/LensShadingMap;-><init>([FII)V

    .line 42
    .line 43
    .line 44
    return-object v2
.end method

.method private static getMarshalerForKey(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;I)Landroid/hardware/camera2/marshal/Marshaler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;I)",
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getTypeReference()Landroid/hardware/camera2/utils/TypeReference;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/hardware/camera2/marshal/MarshalRegistry;->getMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object p0

    return-object p0
.end method

.method private getMaxNumOutputs(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_STREAMS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_RAW:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    aget p1, v0, p1

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_1
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    aget p1, v0, p1

    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :cond_2
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_MAX_NUM_OUTPUT_PROC_STALLING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    const/4 p1, 0x2

    .line 54
    aget p1, v0, p1

    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v2, "Invalid key "

    .line 66
    .line 67
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    throw v0
.end method

.method private getMaxRegions(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    aget p1, v0, p1

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_1
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AWB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    aget p1, v0, p1

    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :cond_2
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    const/4 p1, 0x2

    .line 54
    aget p1, v0, p1

    .line 55
    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v2, "Invalid key "

    .line 66
    .line 67
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    throw v0
.end method

.method public static getNativeType(IJ)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTypeFromTag(IJ)I

    move-result p0

    return p0
.end method

.method private getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 14

    .line 1
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v2, v0

    .line 8
    check-cast v2, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 9
    .line 10
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 11
    .line 12
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v3, v0

    .line 17
    check-cast v3, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 18
    .line 19
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 20
    .line 21
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v4, v0

    .line 26
    check-cast v4, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 27
    .line 28
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 29
    .line 30
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    move-object v5, v0

    .line 35
    check-cast v5, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 36
    .line 37
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_MIN_FRAME_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 38
    .line 39
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    move-object v6, v0

    .line 44
    check-cast v6, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 45
    .line 46
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->DEPTH_AVAILABLE_DEPTH_STALL_DURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 47
    .line 48
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move-object v7, v0

    .line 53
    check-cast v7, [Landroid/hardware/camera2/params/StreamConfigurationDuration;

    .line 54
    .line 55
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_HIGH_SPEED_VIDEO_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 56
    .line 57
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    move-object v8, v0

    .line 62
    check-cast v8, [Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    .line 63
    .line 64
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_INPUT_OUTPUT_FORMATS_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 65
    .line 66
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    move-object v9, v0

    .line 71
    check-cast v9, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .line 72
    .line 73
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 74
    .line 75
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, [I

    .line 80
    .line 81
    array-length v1, v0

    .line 82
    const/4 v10, 0x0

    .line 83
    move v11, v10

    .line 84
    :goto_0
    if-ge v11, v1, :cond_1

    .line 85
    .line 86
    aget v12, v0, v11

    .line 87
    .line 88
    const/4 v13, 0x6

    .line 89
    if-ne v12, v13, :cond_0

    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    move v10, v0

    .line 93
    goto :goto_1

    .line 94
    :cond_0
    add-int/lit8 v11, v11, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    :goto_1
    new-instance v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 98
    .line 99
    move-object v1, v0

    .line 100
    invoke-direct/range {v1 .. v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;-><init>([Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfiguration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/StreamConfigurationDuration;[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;Landroid/hardware/camera2/params/ReprocessFormatsMap;Z)V

    .line 101
    .line 102
    .line 103
    return-object v0
.end method

.method public static getTag(Ljava/lang/String;)I
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-static {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKey(Ljava/lang/String;J)I

    move-result p0

    return p0
.end method

.method public static getTag(Ljava/lang/String;J)I
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKey(Ljava/lang/String;J)I

    move-result p0

    return p0
.end method

.method private getTonemapCurve()Landroid/hardware/camera2/params/TonemapCurve;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/hardware/camera2/params/TonemapCurve;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_RED:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [F

    .line 8
    .line 9
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_GREEN:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 10
    .line 11
    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, [F

    .line 16
    .line 17
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_BLUE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 18
    .line 19
    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, [F

    .line 24
    .line 25
    const/4 v3, 0x3

    .line 26
    new-array v3, v3, [Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    aput-object v0, v3, v4

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    aput-object v1, v3, v4

    .line 33
    .line 34
    const/4 v4, 0x2

    .line 35
    aput-object v2, v3, v4

    .line 36
    .line 37
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->areValuesAllNull([Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/4 v4, 0x0

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    return-object v4

    .line 45
    :cond_0
    if-eqz v0, :cond_2

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    new-instance v3, Landroid/hardware/camera2/params/TonemapCurve;

    .line 53
    .line 54
    invoke-direct {v3, v0, v1, v2}, Landroid/hardware/camera2/params/TonemapCurve;-><init>([F[F[F)V

    .line 55
    .line 56
    .line 57
    return-object v3

    .line 58
    :cond_2
    :goto_0
    const-string v0, "CameraMetadataJV"

    .line 59
    .line 60
    const-string v1, "getTonemapCurve - missing tone curve components"

    .line 61
    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    return-object v4
.end method

.method public static move(Landroid/hardware/camera2/impl/CameraMetadataNative;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 1

    .line 1
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->swap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method private native nativeAllocate()J
.end method

.method private native nativeAllocateCopy(Landroid/hardware/camera2/impl/CameraMetadataNative;)J
.end method

.method private synchronized native nativeClose()V
.end method

.method private synchronized native nativeDump()V
.end method

.method private synchronized native nativeGetAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;
.end method

.method private synchronized native nativeGetEntryCount()I
.end method

.method private static native nativeGetTagFromKey(Ljava/lang/String;J)I
.end method

.method private synchronized native nativeGetTagFromKeyLocal(Ljava/lang/String;)I
.end method

.method private static native nativeGetTypeFromTag(IJ)I
.end method

.method private synchronized native nativeGetTypeFromTagLocal(I)I
.end method

.method private synchronized native nativeIsEmpty()Z
.end method

.method private synchronized native nativeReadFromParcel(Landroid/os/Parcel;)V
.end method

.method private synchronized native nativeReadValues(I)[B
.end method

.method private static native nativeSetupGlobalVendorTagDescriptor()I
.end method

.method private synchronized native nativeSwap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
.end method

.method private synchronized native nativeWriteToParcel(Landroid/os/Parcel;)V
.end method

.method private synchronized native nativeWriteValues(I[B)V
.end method

.method private static registerAllMarshalers()V
    .locals 5

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    new-array v1, v0, [Landroid/hardware/camera2/marshal/MarshalQueryable;

    .line 4
    .line 5
    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;

    .line 6
    .line 7
    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 12
    .line 13
    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;

    .line 14
    .line 15
    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    aput-object v2, v1, v4

    .line 20
    .line 21
    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;

    .line 22
    .line 23
    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    aput-object v2, v1, v4

    .line 28
    .line 29
    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean;

    .line 30
    .line 31
    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBoolean;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x3

    .line 35
    aput-object v2, v1, v4

    .line 36
    .line 37
    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableNativeByteToInteger;

    .line 38
    .line 39
    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableNativeByteToInteger;-><init>()V

    .line 40
    .line 41
    .line 42
    const/4 v4, 0x4

    .line 43
    aput-object v2, v1, v4

    .line 44
    .line 45
    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect;

    .line 46
    .line 47
    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRect;-><init>()V

    .line 48
    .line 49
    .line 50
    const/4 v4, 0x5

    .line 51
    aput-object v2, v1, v4

    .line 52
    .line 53
    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSize;

    .line 54
    .line 55
    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSize;-><init>()V

    .line 56
    .line 57
    .line 58
    const/4 v4, 0x6

    .line 59
    aput-object v2, v1, v4

    .line 60
    .line 61
    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF;

    .line 62
    .line 63
    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF;-><init>()V

    .line 64
    .line 65
    .line 66
    const/4 v4, 0x7

    .line 67
    aput-object v2, v1, v4

    .line 68
    .line 69
    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;

    .line 70
    .line 71
    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableString;-><init>()V

    .line 72
    .line 73
    .line 74
    const/16 v4, 0x8

    .line 75
    .line 76
    aput-object v2, v1, v4

    .line 77
    .line 78
    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;

    .line 79
    .line 80
    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;-><init>()V

    .line 81
    .line 82
    .line 83
    const/16 v4, 0x9

    .line 84
    .line 85
    aput-object v2, v1, v4

    .line 86
    .line 87
    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;

    .line 88
    .line 89
    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRange;-><init>()V

    .line 90
    .line 91
    .line 92
    const/16 v4, 0xa

    .line 93
    .line 94
    aput-object v2, v1, v4

    .line 95
    .line 96
    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;

    .line 97
    .line 98
    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePair;-><init>()V

    .line 99
    .line 100
    .line 101
    const/16 v4, 0xb

    .line 102
    .line 103
    aput-object v2, v1, v4

    .line 104
    .line 105
    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableMeteringRectangle;

    .line 106
    .line 107
    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableMeteringRectangle;-><init>()V

    .line 108
    .line 109
    .line 110
    const/16 v4, 0xc

    .line 111
    .line 112
    aput-object v2, v1, v4

    .line 113
    .line 114
    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform;

    .line 115
    .line 116
    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableColorSpaceTransform;-><init>()V

    .line 117
    .line 118
    .line 119
    const/16 v4, 0xd

    .line 120
    .line 121
    aput-object v2, v1, v4

    .line 122
    .line 123
    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration;

    .line 124
    .line 125
    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfiguration;-><init>()V

    .line 126
    .line 127
    .line 128
    const/16 v4, 0xe

    .line 129
    .line 130
    aput-object v2, v1, v4

    .line 131
    .line 132
    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration;

    .line 133
    .line 134
    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableStreamConfigurationDuration;-><init>()V

    .line 135
    .line 136
    .line 137
    const/16 v4, 0xf

    .line 138
    .line 139
    aput-object v2, v1, v4

    .line 140
    .line 141
    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;

    .line 142
    .line 143
    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;-><init>()V

    .line 144
    .line 145
    .line 146
    const/16 v4, 0x10

    .line 147
    .line 148
    aput-object v2, v1, v4

    .line 149
    .line 150
    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern;

    .line 151
    .line 152
    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern;-><init>()V

    .line 153
    .line 154
    .line 155
    const/16 v4, 0x11

    .line 156
    .line 157
    aput-object v2, v1, v4

    .line 158
    .line 159
    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration;

    .line 160
    .line 161
    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableHighSpeedVideoConfiguration;-><init>()V

    .line 162
    .line 163
    .line 164
    const/16 v4, 0x12

    .line 165
    .line 166
    aput-object v2, v1, v4

    .line 167
    .line 168
    new-instance v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;

    .line 169
    .line 170
    invoke-direct {v2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;-><init>()V

    .line 171
    .line 172
    .line 173
    const/16 v4, 0x13

    .line 174
    .line 175
    aput-object v2, v1, v4

    .line 176
    .line 177
    :goto_0
    if-ge v3, v0, :cond_0

    .line 178
    .line 179
    aget-object v2, v1, v3

    .line 180
    .line 181
    invoke-static {v2}, Landroid/hardware/camera2/marshal/MarshalRegistry;->registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V

    .line 182
    .line 183
    .line 184
    add-int/lit8 v3, v3, 0x1

    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method

.method private setAvailableFormats([I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    array-length v1, p1

    .line 6
    new-array v1, v1, [I

    .line 7
    .line 8
    :goto_0
    array-length v2, p1

    .line 9
    if-ge v0, v2, :cond_2

    .line 10
    .line 11
    aget v2, p1, v0

    .line 12
    .line 13
    aput v2, v1, v0

    .line 14
    .line 15
    aget v2, p1, v0

    .line 16
    .line 17
    const/16 v3, 0x100

    .line 18
    .line 19
    if-ne v2, v3, :cond_1

    .line 20
    .line 21
    const/16 v2, 0x21

    .line 22
    .line 23
    aput v2, v1, v0

    .line 24
    .line 25
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_FORMATS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 29
    .line 30
    invoke-direct {p0, p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    return p1
.end method

.method private setBase(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private setBase(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraMetadataNative$Key;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTagFromKeyLocal(Ljava/lang/String;)I

    move-result v0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeValues(I[B)V

    return-void

    .line 6
    :cond_0
    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetTypeFromTagLocal(I)I

    move-result v1

    .line 7
    invoke-static {p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getMarshalerForKey(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/marshal/Marshaler;->calculateMarshalSize(Ljava/lang/Object;)I

    move-result v1

    .line 9
    new-array v1, v1, [B

    .line 10
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 11
    invoke-virtual {p1, p2, v2}, Landroid/hardware/camera2/marshal/Marshaler;->marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeValues(I[B)V

    return-void
.end method

.method private setFaceRectangles([Landroid/graphics/Rect;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    array-length v1, p1

    .line 6
    new-array v2, v1, [Landroid/graphics/Rect;

    .line 7
    .line 8
    :goto_0
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    new-instance v3, Landroid/graphics/Rect;

    .line 11
    .line 12
    aget-object v4, p1, v0

    .line 13
    .line 14
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 15
    .line 16
    iget v6, v4, Landroid/graphics/Rect;->top:I

    .line 17
    .line 18
    iget v7, v4, Landroid/graphics/Rect;->right:I

    .line 19
    .line 20
    add-int/2addr v7, v5

    .line 21
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 22
    .line 23
    add-int/2addr v4, v6

    .line 24
    invoke-direct {v3, v5, v6, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 25
    .line 26
    .line 27
    aput-object v3, v2, v0

    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 33
    .line 34
    invoke-direct {p0, p1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    return p1
.end method

.method private setFaces([Landroid/hardware/camera2/params/Face;)Z
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    array-length v1, p1

    .line 6
    array-length v2, p1

    .line 7
    const/4 v3, 0x1

    .line 8
    move v4, v0

    .line 9
    move v5, v3

    .line 10
    :goto_0
    if-ge v4, v2, :cond_3

    .line 11
    .line 12
    aget-object v6, p1, v4

    .line 13
    .line 14
    if-nez v6, :cond_1

    .line 15
    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 17
    .line 18
    const-string v6, "CameraMetadataJV"

    .line 19
    .line 20
    const-string/jumbo v7, "setFaces - null face detected, skipping"

    .line 21
    .line 22
    .line 23
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {v6}, Landroid/hardware/camera2/params/Face;->getId()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    const/4 v7, -0x1

    .line 32
    if-ne v6, v7, :cond_2

    .line 33
    .line 34
    move v5, v0

    .line 35
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    new-array v2, v1, [Landroid/graphics/Rect;

    .line 39
    .line 40
    new-array v4, v1, [B

    .line 41
    .line 42
    if-eqz v5, :cond_4

    .line 43
    .line 44
    new-array v6, v1, [I

    .line 45
    .line 46
    mul-int/lit8 v1, v1, 0x6

    .line 47
    .line 48
    new-array v1, v1, [I

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_4
    const/4 v6, 0x0

    .line 52
    move-object v1, v6

    .line 53
    :goto_2
    array-length v7, p1

    .line 54
    move v8, v0

    .line 55
    :goto_3
    if-ge v0, v7, :cond_7

    .line 56
    .line 57
    aget-object v9, p1, v0

    .line 58
    .line 59
    if-nez v9, :cond_5

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_5
    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    aput-object v10, v2, v8

    .line 67
    .line 68
    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getScore()I

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    int-to-byte v10, v10

    .line 73
    aput-byte v10, v4, v8

    .line 74
    .line 75
    if-eqz v5, :cond_6

    .line 76
    .line 77
    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getId()I

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    aput v10, v6, v8

    .line 82
    .line 83
    mul-int/lit8 v10, v8, 0x6

    .line 84
    .line 85
    add-int/lit8 v11, v10, 0x0

    .line 86
    .line 87
    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    .line 88
    .line 89
    .line 90
    move-result-object v12

    .line 91
    iget v12, v12, Landroid/graphics/Point;->x:I

    .line 92
    .line 93
    aput v12, v1, v11

    .line 94
    .line 95
    add-int/lit8 v11, v10, 0x1

    .line 96
    .line 97
    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    iget v12, v12, Landroid/graphics/Point;->y:I

    .line 102
    .line 103
    aput v12, v1, v11

    .line 104
    .line 105
    add-int/lit8 v11, v10, 0x2

    .line 106
    .line 107
    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    iget v12, v12, Landroid/graphics/Point;->x:I

    .line 112
    .line 113
    aput v12, v1, v11

    .line 114
    .line 115
    add-int/lit8 v11, v10, 0x3

    .line 116
    .line 117
    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    .line 118
    .line 119
    .line 120
    move-result-object v12

    .line 121
    iget v12, v12, Landroid/graphics/Point;->y:I

    .line 122
    .line 123
    aput v12, v1, v11

    .line 124
    .line 125
    add-int/lit8 v11, v10, 0x4

    .line 126
    .line 127
    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    .line 128
    .line 129
    .line 130
    move-result-object v12

    .line 131
    iget v12, v12, Landroid/graphics/Point;->x:I

    .line 132
    .line 133
    aput v12, v1, v11

    .line 134
    .line 135
    add-int/lit8 v10, v10, 0x5

    .line 136
    .line 137
    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    iget v9, v9, Landroid/graphics/Point;->y:I

    .line 142
    .line 143
    aput v9, v1, v10

    .line 144
    .line 145
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 146
    .line 147
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_7
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_RECTANGLES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 151
    .line 152
    invoke-virtual {p0, p1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_IDS:Landroid/hardware/camera2/CaptureResult$Key;

    .line 156
    .line 157
    invoke-virtual {p0, p1, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_LANDMARKS:Landroid/hardware/camera2/CaptureResult$Key;

    .line 161
    .line 162
    invoke-virtual {p0, p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_SCORES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 166
    .line 167
    invoke-virtual {p0, p1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    return v3
.end method

.method private setGpsLocation(Landroid/location/Location;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x3

    .line 6
    new-array v1, v1, [D

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    aput-wide v2, v1, v0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    const/4 v0, 0x1

    .line 19
    aput-wide v2, v1, v0

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    aput-wide v3, v1, v2

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->translateLocationProviderToProcess(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    const-wide/16 v5, 0x3e8

    .line 41
    .line 42
    div-long/2addr v3, v5

    .line 43
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_TIMESTAMP:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 44
    .line 45
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {p0, p1, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_COORDINATES:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 53
    .line 54
    invoke-virtual {p0, p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    if-nez v2, :cond_1

    .line 58
    .line 59
    const-string p1, "CameraMetadataJV"

    .line 60
    .line 61
    const-string/jumbo v1, "setGpsLocation - No process method, Location is not from a GPS or NETWORKprovider"

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_PROCESSING_METHOD:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 69
    .line 70
    invoke-direct {p0, p1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    return v0
.end method

.method private setTonemapCurve(Landroid/hardware/camera2/params/TonemapCurve;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/params/TonemapCurve;",
            ")Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x3

    .line 6
    new-array v1, v1, [[F

    .line 7
    .line 8
    move v2, v0

    .line 9
    :goto_0
    const/4 v3, 0x2

    .line 10
    if-gt v2, v3, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/params/TonemapCurve;->getPointCount(I)I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    mul-int/2addr v4, v3

    .line 17
    new-array v3, v4, [F

    .line 18
    .line 19
    aput-object v3, v1, v2

    .line 20
    .line 21
    invoke-virtual {p1, v2, v3, v0}, Landroid/hardware/camera2/params/TonemapCurve;->copyColorCurve(I[FI)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_RED:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 28
    .line 29
    aget-object v0, v1, v0

    .line 30
    .line 31
    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_GREEN:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    aget-object v2, v1, v0

    .line 38
    .line 39
    invoke-direct {p0, p1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE_BLUE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 43
    .line 44
    aget-object v1, v1, v3

    .line 45
    .line 46
    invoke-direct {p0, p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return v0
.end method

.method public static setupGlobalVendorTagDescriptor()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeSetupGlobalVendorTagDescriptor()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Landroid/os/ServiceSpecificException;

    .line 9
    .line 10
    const-string v2, "Failure to set up global vendor tags"

    .line 11
    .line 12
    invoke-direct {v1, v0, v2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v1
.end method

.method private static translateLocationProviderToProcess(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const-string/jumbo v1, "gps"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_2

    .line 13
    .line 14
    const-string/jumbo v1, "network"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    const-string p0, "CELLID"

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_2
    const-string p0, "GPS"

    .line 28
    .line 29
    return-object p0
.end method

.method private static translateProcessToLocationProvider(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const-string v1, "GPS"

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    const-string v1, "CELLID"

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    const-string/jumbo p0, "network"

    .line 23
    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_2
    const-string/jumbo p0, "gps"

    .line 27
    .line 28
    .line 29
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dumpToLog()V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeDump()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    const-string v1, "CameraMetadataJV"

    .line 7
    .line 8
    const-string v2, "Dump logging failed"

    .line 9
    .line 10
    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string/jumbo v0, "key must not be null"

    .line 4
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sGetCommandMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/GetCommand;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p0, p1}, Landroid/hardware/camera2/impl/GetCommand;->getValue(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;)",
            "Ljava/util/ArrayList<",
            "TK;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetAllVendorKeys(Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public getEntryCount()I
    .locals 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeGetEntryCount()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeIsEmpty()Z

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeReadFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public readValues(I)[B
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeReadValues(I)[B

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 6
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getNativeKey()Landroid/hardware/camera2/impl/CameraMetadataNative$Key;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/impl/CameraMetadataNative$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/hardware/camera2/impl/CameraMetadataNative;->sSetCommandMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/SetCommand;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p2}, Landroid/hardware/camera2/impl/SetCommand;->setValue(Landroid/hardware/camera2/impl/CameraMetadataNative;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setBase(Landroid/hardware/camera2/impl/CameraMetadataNative$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public swap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeSwap(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeWriteToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public writeValues(I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->nativeWriteValues(I[B)V

    return-void
.end method
