.class public Landroid/graphics/Color;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BLACK:I = -0x1000000

.field public static final BLUE:I = -0xffff01

.field public static final CYAN:I = -0xff0001

.field public static final DKGRAY:I = -0xbbbbbc

.field public static final GRAY:I = -0x777778

.field public static final GREEN:I = -0xff0100

.field public static final LTGRAY:I = -0x333334

.field public static final MAGENTA:I = -0xff01

.field public static final RED:I = -0x10000

.field public static final TRANSPARENT:I = 0x0

.field public static final WHITE:I = -0x1

.field public static final YELLOW:I = -0x100

.field private static final sColorNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mColorSpace:Landroid/graphics/ColorSpace;

.field private final mComponents:[F


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
    sput-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    .line 7
    .line 8
    const/high16 v1, -0x1000000

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "black"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    const v1, -0xbbbbbc

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "darkgray"

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const v2, -0x777778

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string/jumbo v3, "gray"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    const v3, -0x333334

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const-string/jumbo v4, "lightgray"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    const/4 v4, -0x1

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const-string/jumbo v5, "white"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    const/high16 v4, -0x10000

    .line 69
    .line 70
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    const-string/jumbo v5, "red"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    const v4, -0xff0100

    .line 81
    .line 82
    .line 83
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    const-string/jumbo v5, "green"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    const v5, -0xffff01

    .line 94
    .line 95
    .line 96
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    const-string v6, "blue"

    .line 101
    .line 102
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    const/16 v5, -0x100

    .line 106
    .line 107
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    const-string/jumbo v6, "yellow"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    const v5, -0xff0001

    .line 118
    .line 119
    .line 120
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    const-string v6, "cyan"

    .line 125
    .line 126
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    const v6, -0xff01

    .line 130
    .line 131
    .line 132
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    const-string/jumbo v7, "magenta"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    const-string v7, "aqua"

    .line 143
    .line 144
    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    const-string v5, "fuchsia"

    .line 148
    .line 149
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    const-string v5, "darkgrey"

    .line 153
    .line 154
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    const-string/jumbo v1, "grey"

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    const-string/jumbo v1, "lightgrey"

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    const-string/jumbo v1, "lime"

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 176
    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    const-string/jumbo v2, "maroon"

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    const v1, -0xffff80

    .line 188
    .line 189
    .line 190
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    const-string/jumbo v2, "navy"

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    const v1, -0x7f8000

    .line 201
    .line 202
    .line 203
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    const-string/jumbo v2, "olive"

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    const v1, -0x7fff80

    .line 214
    .line 215
    .line 216
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    const-string/jumbo v2, "purple"

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    const v1, -0x3f3f40

    .line 227
    .line 228
    .line 229
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    const-string/jumbo v2, "silver"

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    const v1, -0xff7f80

    .line 240
    .line 241
    .line 242
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    const-string/jumbo v2, "teal"

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    .line 3
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>(FFFF)V
    .locals 7

    .line 4
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/graphics/Color;-><init>(FFFFLandroid/graphics/ColorSpace;)V

    return-void
.end method

.method private constructor <init>(FFFFLandroid/graphics/ColorSpace;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    const/4 p1, 0x3

    aput p4, v0, p1

    .line 6
    iput-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    .line 7
    iput-object p5, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    return-void
.end method

.method private constructor <init>([FLandroid/graphics/ColorSpace;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Landroid/graphics/Color;->mComponents:[F

    .line 10
    iput-object p2, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    return-void
.end method

.method public static HSVToColor(I[F)I
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 3
    invoke-static {p0, p1}, Landroid/graphics/Color;->nativeHSVToColor(I[F)I

    move-result p0

    return p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "3 components required for hsv"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static HSVToColor([F)I
    .locals 1

    const/16 v0, 0xff

    .line 1
    invoke-static {v0, p0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p0

    return p0
.end method

.method public static RGBToHSV(III[F)V
    .locals 2

    .line 1
    array-length v0, p3

    .line 2
    const/4 v1, 0x3

    .line 3
    if-lt v0, v1, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Color;->nativeRGBToHSV(III[F)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    const-string p1, "3 components required for hsv"

    .line 12
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p0
.end method

.method public static alpha(J)F
    .locals 4

    .line 1
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, 0x38

    shr-long/2addr p0, v0

    const-wide/16 v0, 0xff

    and-long/2addr p0, v0

    long-to-float p0, p0

    const/high16 p1, 0x437f0000    # 255.0f

    :goto_0
    div-float/2addr p0, p1

    return p0

    :cond_0
    const/4 v0, 0x6

    shr-long/2addr p0, v0

    const-wide/16 v0, 0x3ff

    and-long/2addr p0, v0

    long-to-float p0, p0

    const p1, 0x447fc000    # 1023.0f

    goto :goto_0
.end method

.method public static alpha(I)I
    .locals 0

    .line 2
    ushr-int/lit8 p0, p0, 0x18

    return p0
.end method

.method public static argb(FFFF)I
    .locals 2

    .line 1
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p0, v1

    float-to-int p0, p0

    shl-int/lit8 p0, p0, 0x18

    mul-float/2addr p1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    mul-float/2addr p2, v0

    add-float/2addr p2, v1

    float-to-int p1, p2

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    mul-float/2addr p3, v0

    add-float/2addr p3, v1

    float-to-int p1, p3

    or-int/2addr p0, p1

    return p0
.end method

.method public static argb(IIII)I
    .locals 0

    .line 2
    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p3

    return p0
.end method

.method public static blue(J)F
    .locals 4

    const-wide/16 v0, 0x3f

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    const-wide/16 v0, 0xff

    and-long/2addr p0, v0

    long-to-float p0, p0

    const/high16 p1, 0x437f0000    # 255.0f

    div-float/2addr p0, p1

    return p0

    :cond_0
    const/16 v0, 0x10

    shr-long/2addr p0, v0

    const-wide/32 v0, 0xffff

    and-long/2addr p0, v0

    long-to-int p0, p0

    int-to-short p0, p0

    .line 3
    invoke-static {p0}, Landroid/util/Half;->toFloat(S)F

    move-result p0

    return p0
.end method

.method public static blue(I)I
    .locals 0

    .line 1
    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static colorSpace(J)Landroid/graphics/ColorSpace;
    .locals 2

    const-wide/16 v0, 0x3f

    and-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Landroid/graphics/ColorSpace;->get(I)Landroid/graphics/ColorSpace;

    move-result-object p0

    return-object p0
.end method

.method public static colorToHSV(I[F)V
    .locals 2

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p0, p0, 0xff

    invoke-static {v0, v1, p0, p1}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    return-void
.end method

.method public static convert(FFFFLandroid/graphics/ColorSpace$Connector;)J
    .locals 1

    .line 20
    invoke-virtual {p4, p0, p1, p2}, Landroid/graphics/ColorSpace$Connector;->transform(FFF)[F

    move-result-object p0

    const/4 p1, 0x0

    .line 21
    aget p1, p0, p1

    const/4 p2, 0x1

    aget p2, p0, p2

    const/4 v0, 0x2

    aget p0, p0, v0

    invoke-virtual {p4}, Landroid/graphics/ColorSpace$Connector;->getDestination()Landroid/graphics/ColorSpace;

    move-result-object p4

    invoke-static {p1, p2, p0, p3, p4}, Landroid/graphics/Color;->pack(FFFFLandroid/graphics/ColorSpace;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static convert(FFFFLandroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)J
    .locals 0

    .line 13
    invoke-static {p4, p5}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object p4

    invoke-virtual {p4, p0, p1, p2}, Landroid/graphics/ColorSpace$Connector;->transform(FFF)[F

    move-result-object p0

    const/4 p1, 0x0

    .line 14
    aget p1, p0, p1

    const/4 p2, 0x1

    aget p2, p0, p2

    const/4 p4, 0x2

    aget p0, p0, p4

    invoke-static {p1, p2, p0, p3, p5}, Landroid/graphics/Color;->pack(FFFFLandroid/graphics/ColorSpace;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static convert(ILandroid/graphics/ColorSpace;)J
    .locals 8

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v2, v0, v1

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float v3, v0, v1

    and-int/lit16 v0, p0, 0xff

    int-to-float v0, v0

    div-float v4, v0, v1

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-float p0, p0

    div-float v5, p0, v1

    .line 5
    sget-object p0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {p0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v6

    move-object v7, p1

    .line 6
    invoke-static/range {v2 .. v7}, Landroid/graphics/Color;->convert(FFFFLandroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static convert(JLandroid/graphics/ColorSpace$Connector;)J
    .locals 3

    .line 15
    invoke-static {p0, p1}, Landroid/graphics/Color;->red(J)F

    move-result v0

    .line 16
    invoke-static {p0, p1}, Landroid/graphics/Color;->green(J)F

    move-result v1

    .line 17
    invoke-static {p0, p1}, Landroid/graphics/Color;->blue(J)F

    move-result v2

    .line 18
    invoke-static {p0, p1}, Landroid/graphics/Color;->alpha(J)F

    move-result p0

    .line 19
    invoke-static {v0, v1, v2, p0, p2}, Landroid/graphics/Color;->convert(FFFFLandroid/graphics/ColorSpace$Connector;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static convert(JLandroid/graphics/ColorSpace;)J
    .locals 6

    .line 7
    invoke-static {p0, p1}, Landroid/graphics/Color;->red(J)F

    move-result v0

    .line 8
    invoke-static {p0, p1}, Landroid/graphics/Color;->green(J)F

    move-result v1

    .line 9
    invoke-static {p0, p1}, Landroid/graphics/Color;->blue(J)F

    move-result v2

    .line 10
    invoke-static {p0, p1}, Landroid/graphics/Color;->alpha(J)F

    move-result v3

    .line 11
    invoke-static {p0, p1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v4

    move-object v5, p2

    .line 12
    invoke-static/range {v0 .. v5}, Landroid/graphics/Color;->convert(FFFFLandroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getHtmlColor(Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    .line 2
    .line 3
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Integer;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 v0, -0x1

    .line 23
    :try_start_0
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    .line 24
    .line 25
    .line 26
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return p0

    .line 28
    :catch_0
    return v0
.end method

.method public static green(J)F
    .locals 4

    const-wide/16 v0, 0x3f

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, 0x28

    shr-long/2addr p0, v0

    const-wide/16 v0, 0xff

    and-long/2addr p0, v0

    long-to-float p0, p0

    const/high16 p1, 0x437f0000    # 255.0f

    div-float/2addr p0, p1

    return p0

    :cond_0
    const/16 v0, 0x20

    shr-long/2addr p0, v0

    const-wide/32 v0, 0xffff

    and-long/2addr p0, v0

    long-to-int p0, p0

    int-to-short p0, p0

    .line 3
    invoke-static {p0}, Landroid/util/Half;->toFloat(S)F

    move-result p0

    return p0
.end method

.method public static green(I)I
    .locals 0

    .line 1
    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static isInColorSpace(JLandroid/graphics/ColorSpace;)Z
    .locals 2

    const-wide/16 v0, 0x3f

    and-long/2addr p0, v0

    long-to-int p0, p0

    invoke-virtual {p2}, Landroid/graphics/ColorSpace;->getId()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSrgb(J)Z
    .locals 0

    .line 2
    invoke-static {p0, p1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->isSrgb()Z

    move-result p0

    return p0
.end method

.method public static isWideGamut(J)Z
    .locals 0

    .line 2
    invoke-static {p0, p1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    move-result p0

    return p0
.end method

.method public static luminance(I)F
    .locals 9

    .line 18
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorSpace$Rgb;

    .line 19
    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Rgb;->getEotf()Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    .line 20
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x406fe00000000000L    # 255.0

    div-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    move-result-wide v1

    .line 21
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v5, v3

    invoke-static {v0, v5, v6}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    move-result-wide v5

    .line 22
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-double v7, p0

    div-double/2addr v7, v3

    invoke-static {v0, v7, v8}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    move-result-wide v3

    const-wide v7, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v1, v7

    const-wide v7, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v5, v7

    add-double/2addr v5, v1

    const-wide v0, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v3, v0

    add-double/2addr v3, v5

    double-to-float p0, v3

    return p0
.end method

.method public static luminance(J)F
    .locals 7

    .line 9
    invoke-static {p0, p1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v1

    sget-object v2, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v1, v2, :cond_0

    .line 11
    check-cast v0, Landroid/graphics/ColorSpace$Rgb;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Rgb;->getEotf()Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    .line 12
    invoke-static {p0, p1}, Landroid/graphics/Color;->red(J)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v0, v1, v2}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    move-result-wide v1

    .line 13
    invoke-static {p0, p1}, Landroid/graphics/Color;->green(J)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v0, v3, v4}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    move-result-wide v3

    .line 14
    invoke-static {p0, p1}, Landroid/graphics/Color;->blue(J)F

    move-result p0

    float-to-double p0, p0

    invoke-static {v0, p0, p1}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    move-result-wide p0

    const-wide v5, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v1, v5

    const-wide v5, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v3, v5

    add-double/2addr v3, v1

    const-wide v0, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr p0, v0

    add-double/2addr p0, v3

    double-to-float p0, p0

    .line 15
    invoke-static {p0}, Landroid/graphics/Color;->saturate(F)F

    move-result p0

    return p0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "The specified color must be encoded in an RGB color space. The supplied color space is "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nativeHSVToColor(I[F)I
.end method

.method private static native nativeRGBToHSV(III[F)V
.end method

.method public static pack(FFF)J
    .locals 2

    .line 3
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, v1, v0}, Landroid/graphics/Color;->pack(FFFFLandroid/graphics/ColorSpace;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static pack(FFFF)J
    .locals 1

    .line 4
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/Color;->pack(FFFFLandroid/graphics/ColorSpace;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static pack(FFFFLandroid/graphics/ColorSpace;)J
    .locals 7

    .line 5
    invoke-virtual {p4}, Landroid/graphics/ColorSpace;->isSrgb()Z

    move-result v0

    const/16 v1, 0x20

    const/16 v2, 0x10

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v0, :cond_0

    const/high16 p4, 0x437f0000    # 255.0f

    mul-float/2addr p3, p4

    add-float/2addr p3, v3

    float-to-int p3, p3

    shl-int/lit8 p3, p3, 0x18

    mul-float/2addr p0, p4

    add-float/2addr p0, v3

    float-to-int p0, p0

    shl-int/2addr p0, v2

    or-int/2addr p0, p3

    mul-float/2addr p1, p4

    add-float/2addr p1, v3

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    mul-float/2addr p2, p4

    add-float/2addr p2, v3

    float-to-int p1, p2

    or-int/2addr p0, p1

    int-to-long p0, p0

    const-wide p2, 0xffffffffL

    and-long/2addr p0, p2

    shl-long/2addr p0, v1

    return-wide p0

    .line 6
    :cond_0
    invoke-virtual {p4}, Landroid/graphics/ColorSpace;->getId()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    .line 7
    invoke-virtual {p4}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result p4

    const/4 v4, 0x3

    if-gt p4, v4, :cond_1

    .line 8
    invoke-static {p0}, Landroid/util/Half;->toHalf(F)S

    move-result p0

    .line 9
    invoke-static {p1}, Landroid/util/Half;->toHalf(F)S

    move-result p1

    .line 10
    invoke-static {p2}, Landroid/util/Half;->toHalf(F)S

    move-result p2

    const/high16 p4, 0x3f800000    # 1.0f

    .line 11
    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    const/4 p4, 0x0

    invoke-static {p4, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    const p4, 0x447fc000    # 1023.0f

    mul-float/2addr p3, p4

    add-float/2addr p3, v3

    float-to-int p3, p3

    int-to-long v3, p0

    const-wide/32 v5, 0xffff

    and-long/2addr v3, v5

    const/16 p0, 0x30

    shl-long/2addr v3, p0

    int-to-long p0, p1

    and-long/2addr p0, v5

    shl-long/2addr p0, v1

    or-long/2addr p0, v3

    int-to-long v3, p2

    and-long/2addr v3, v5

    shl-long v1, v3, v2

    or-long/2addr p0, v1

    int-to-long p2, p3

    const-wide/16 v1, 0x3ff

    and-long/2addr p2, v1

    const/4 p4, 0x6

    shl-long/2addr p2, p4

    or-long/2addr p0, p2

    int-to-long p2, v0

    const-wide/16 v0, 0x3f

    and-long/2addr p2, v0

    or-long/2addr p0, p2

    return-wide p0

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The color space must use a color model with at most 3 components"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown color space, please use a color space returned by ColorSpace.get()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static pack(I)J
    .locals 4

    .line 1
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    return-wide v0
.end method

.method public static parseColor(Ljava/lang/String;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/16 v1, 0x23

    .line 7
    .line 8
    const-string v2, "Unknown color"

    .line 9
    .line 10
    if-ne v0, v1, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/16 v1, 0x10

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x7

    .line 28
    if-ne v3, v4, :cond_0

    .line 29
    .line 30
    const-wide/32 v2, -0x1000000

    .line 31
    .line 32
    .line 33
    or-long/2addr v0, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    const/16 v3, 0x9

    .line 40
    .line 41
    if-ne p0, v3, :cond_1

    .line 42
    .line 43
    :goto_0
    long-to-int p0, v0

    .line 44
    return p0

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :cond_2
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    .line 52
    .line 53
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 54
    .line 55
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Ljava/lang/Integer;

    .line 64
    .line 65
    if-eqz p0, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    return p0

    .line 72
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0
.end method

.method public static red(J)F
    .locals 4

    const-wide/16 v0, 0x3f

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/16 v1, 0x30

    if-nez v0, :cond_0

    shr-long/2addr p0, v1

    const-wide/16 v0, 0xff

    and-long/2addr p0, v0

    long-to-float p0, p0

    const/high16 p1, 0x437f0000    # 255.0f

    div-float/2addr p0, p1

    return p0

    :cond_0
    shr-long/2addr p0, v1

    const-wide/32 v0, 0xffff

    and-long/2addr p0, v0

    long-to-int p0, p0

    int-to-short p0, p0

    .line 3
    invoke-static {p0}, Landroid/util/Half;->toFloat(S)F

    move-result p0

    return p0
.end method

.method public static red(I)I
    .locals 0

    .line 1
    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static rgb(FFF)I
    .locals 3

    .line 1
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p0, v1

    float-to-int p0, p0

    shl-int/lit8 p0, p0, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr p0, v2

    mul-float/2addr p1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    mul-float/2addr p2, v0

    add-float/2addr p2, v1

    float-to-int p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public static rgb(III)I
    .locals 1

    .line 2
    shl-int/lit8 p0, p0, 0x10

    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    return p0
.end method

.method private static saturate(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_0

    :goto_0
    move p0, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return p0
.end method

.method public static toArgb(J)I
    .locals 4

    const-wide/16 v0, 0x3f

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0

    .line 5
    :cond_0
    invoke-static {p0, p1}, Landroid/graphics/Color;->red(J)F

    move-result v0

    .line 6
    invoke-static {p0, p1}, Landroid/graphics/Color;->green(J)F

    move-result v1

    .line 7
    invoke-static {p0, p1}, Landroid/graphics/Color;->blue(J)F

    move-result v2

    .line 8
    invoke-static {p0, p1}, Landroid/graphics/Color;->alpha(J)F

    move-result v3

    .line 9
    invoke-static {p0, p1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object p0

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/ColorSpace$Connector;->transform(FFF)[F

    move-result-object p0

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr v3, p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v3, v0

    float-to-int v1, v3

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x0

    .line 10
    aget v2, p0, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x1

    aget v2, p0, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget p0, p0, v2

    mul-float/2addr p0, p1

    add-float/2addr p0, v0

    float-to-int p0, p0

    or-int/2addr p0, v1

    return p0
.end method

.method public static valueOf(FFF)Landroid/graphics/Color;
    .locals 2

    .line 3
    new-instance v0, Landroid/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static valueOf(FFFF)Landroid/graphics/Color;
    .locals 1

    .line 4
    new-instance v0, Landroid/graphics/Color;

    invoke-static {p0}, Landroid/graphics/Color;->saturate(F)F

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->saturate(F)F

    move-result p1

    invoke-static {p2}, Landroid/graphics/Color;->saturate(F)F

    move-result p2

    invoke-static {p3}, Landroid/graphics/Color;->saturate(F)F

    move-result p3

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static valueOf(FFFFLandroid/graphics/ColorSpace;)Landroid/graphics/Color;
    .locals 8

    .line 5
    invoke-virtual {p4}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 6
    new-instance v0, Landroid/graphics/Color;

    move-object v2, v0

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Landroid/graphics/Color;-><init>(FFFFLandroid/graphics/ColorSpace;)V

    return-object v0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The specified color space must use a color model with at most 3 color components"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(I)Landroid/graphics/Color;
    .locals 8

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v3, v0, v1

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float v4, v0, v1

    and-int/lit16 v0, p0, 0xff

    int-to-float v0, v0

    div-float v5, v0, v1

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-float p0, p0

    div-float v6, p0, v1

    .line 1
    new-instance p0, Landroid/graphics/Color;

    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/Color;-><init>(FFFFLandroid/graphics/ColorSpace;)V

    return-object p0
.end method

.method public static valueOf(J)Landroid/graphics/Color;
    .locals 7

    .line 2
    new-instance v6, Landroid/graphics/Color;

    invoke-static {p0, p1}, Landroid/graphics/Color;->red(J)F

    move-result v1

    invoke-static {p0, p1}, Landroid/graphics/Color;->green(J)F

    move-result v2

    invoke-static {p0, p1}, Landroid/graphics/Color;->blue(J)F

    move-result v3

    invoke-static {p0, p1}, Landroid/graphics/Color;->alpha(J)F

    move-result v4

    invoke-static {p0, p1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/graphics/Color;-><init>(FFFFLandroid/graphics/ColorSpace;)V

    return-object v6
.end method

.method public static valueOf([FLandroid/graphics/ColorSpace;)Landroid/graphics/Color;
    .locals 3

    .line 8
    array-length v0, p0

    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_0

    .line 9
    new-instance v0, Landroid/graphics/Color;

    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/graphics/Color;-><init>([FLandroid/graphics/ColorSpace;)V

    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received a component array of length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but the color model requires "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " (including alpha)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public alpha()F
    .locals 2

    .line 3
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public blue()F
    .locals 2

    .line 2
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public convert(Landroid/graphics/ColorSpace;)Landroid/graphics/Color;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-static {v0, p1}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [F

    .line 2
    iget-object v2, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    aput v4, v1, v3

    const/4 v3, 0x1

    aget v4, v2, v3

    aput v4, v1, v3

    const/4 v3, 0x2

    aget v4, v2, v3

    aput v4, v1, v3

    const/4 v3, 0x3

    aget v2, v2, v3

    aput v2, v1, v3

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/ColorSpace$Connector;->transform([F)[F

    .line 4
    new-instance v0, Landroid/graphics/Color;

    invoke-direct {v0, v1, p1}, Landroid/graphics/Color;-><init>([FLandroid/graphics/ColorSpace;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    check-cast p1, Landroid/graphics/Color;

    .line 20
    .line 21
    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    .line 22
    .line 23
    iget-object v2, p1, Landroid/graphics/Color;->mComponents:[F

    .line 24
    .line 25
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    return v0

    .line 32
    :cond_2
    iget-object v0, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 33
    .line 34
    iget-object p1, p1, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :cond_3
    :goto_0
    return v0
.end method

.method public getColorSpace()Landroid/graphics/ColorSpace;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public getComponent(I)F
    .locals 1

    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    aget p1, v0, p1

    return p1
.end method

.method public getComponentCount()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getComponents()[F
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public getComponents([F)[F
    .locals 3

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/graphics/Color;->mComponents:[F

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    array-length v0, p1

    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 4
    array-length v0, v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The specified array\'s length must be at least "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getModel()Landroid/graphics/ColorSpace$Model;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    return-object v0
.end method

.method public green()F
    .locals 2

    .line 2
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/graphics/ColorSpace;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    return v1
.end method

.method public isSrgb()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Color;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->isSrgb()Z

    move-result v0

    return v0
.end method

.method public isWideGamut()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Color;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    move-result v0

    return v0
.end method

.method public luminance()F
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    check-cast v0, Landroid/graphics/ColorSpace$Rgb;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Rgb;->getEotf()Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-double v1, v1

    invoke-static {v0, v1, v2}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    move-result-wide v1

    .line 4
    iget-object v3, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    float-to-double v3, v3

    invoke-static {v0, v3, v4}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    move-result-wide v3

    .line 5
    iget-object v5, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    float-to-double v5, v5

    invoke-static {v0, v5, v6}, Landroid/animation/b;->b(Ljava/util/function/DoubleUnaryOperator;D)D

    move-result-wide v5

    const-wide v7, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v1, v7

    const-wide v7, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v3, v7

    add-double/2addr v3, v1

    const-wide v0, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v5, v0

    add-double/2addr v5, v3

    double-to-float v0, v5

    .line 6
    invoke-static {v0}, Landroid/graphics/Color;->saturate(F)F

    move-result v0

    return v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The specified color must be encoded in an RGB color space. The supplied color space is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 8
    invoke-virtual {v2}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pack()J
    .locals 5

    .line 2
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v0, v0, v4

    iget-object v4, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-static {v1, v2, v3, v0, v4}, Landroid/graphics/Color;->pack(FFFFLandroid/graphics/ColorSpace;)J

    move-result-wide v0

    return-wide v0
.end method

.method public red()F
    .locals 2

    .line 2
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public toArgb()I
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->isSrgb()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x437f0000    # 255.0f

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    aget v1, v0, v1

    mul-float/2addr v1, v6

    add-float/2addr v1, v5

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    aget v4, v0, v4

    mul-float/2addr v4, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v1, v4

    aget v3, v0, v3

    mul-float/2addr v3, v6

    add-float/2addr v3, v5

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    aget v0, v0, v2

    :goto_0
    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    float-to-int v0, v0

    or-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 3
    iget-object v7, p0, Landroid/graphics/Color;->mComponents:[F

    aget v8, v7, v4

    aput v8, v0, v4

    aget v8, v7, v3

    aput v8, v0, v3

    aget v8, v7, v2

    aput v8, v0, v2

    aget v7, v7, v1

    aput v7, v0, v1

    .line 4
    iget-object v7, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-static {v7}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/graphics/ColorSpace$Connector;->transform([F)[F

    aget v1, v0, v1

    mul-float/2addr v1, v6

    add-float/2addr v1, v5

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    aget v4, v0, v4

    mul-float/2addr v4, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v1, v4

    aget v3, v0, v3

    mul-float/2addr v3, v6

    add-float/2addr v3, v5

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    aget v0, v0, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Color("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v2, :cond_0

    .line 13
    .line 14
    aget v4, v1, v3

    .line 15
    .line 16
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v4, ", "

    .line 20
    .line 21
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v1, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/graphics/ColorSpace;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x29

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
