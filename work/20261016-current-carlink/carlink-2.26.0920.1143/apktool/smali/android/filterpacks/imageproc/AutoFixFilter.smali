.class public Landroid/filterpacks/imageproc/AutoFixFilter;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# static fields
.field private static final normal_cdf:[I


# instance fields
.field private final mAutoFixShader:Ljava/lang/String;

.field private mDensityFrame:Landroid/filterfw/core/Frame;

.field private mHeight:I

.field private mHistFrame:Landroid/filterfw/core/Frame;

.field private mNativeProgram:Landroid/filterfw/core/Program;

.field private mScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "scale"
    .end annotation
.end field

.field private mShaderProgram:Landroid/filterfw/core/Program;

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x400

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroid/filterpacks/imageproc/AutoFixFilter;->normal_cdf:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x9
        0x21
        0x32
        0x40
        0x4b
        0x54
        0x5c
        0x63
        0x6a
        0x70
        0x75
        0x7a
        0x7e
        0x82
        0x86
        0x8a
        0x8e
        0x91
        0x94
        0x96
        0x9a
        0x9d
        0x9f
        0xa2
        0xa4
        0xa6
        0xa9
        0xaa
        0xad
        0xaf
        0xb1
        0xb3
        0xb4
        0xb6
        0xb8
        0xba
        0xbc
        0xbd
        0xbe
        0xc0
        0xc2
        0xc3
        0xc5
        0xc6
        0xc7
        0xc8
        0xca
        0xcb
        0xcd
        0xce
        0xcf
        0xd0
        0xd1
        0xd2
        0xd4
        0xd5
        0xd6
        0xd7
        0xd8
        0xd9
        0xda
        0xdb
        0xdc
        0xdd
        0xde
        0xdf
        0xe0
        0xe1
        0xe2
        0xe3
        0xe4
        0xe5
        0xe5
        0xe6
        0xe7
        0xe8
        0xe9
        0xea
        0xeb
        0xec
        0xec
        0xed
        0xee
        0xef
        0xef
        0xf0
        0xf0
        0xf2
        0xf2
        0xf3
        0xf4
        0xf5
        0xf5
        0xf6
        0xf7
        0xf7
        0xf8
        0xf9
        0xf9
        0xfa
        0xfa
        0xfb
        0xfc
        0xfd
        0xfd
        0xfe
        0xff
        0xff
        0x100
        0x100
        0x101
        0x102
        0x102
        0x103
        0x103
        0x103
        0x104
        0x105
        0x106
        0x106
        0x107
        0x107
        0x108
        0x108
        0x109
        0x109
        0x10a
        0x10b
        0x10b
        0x10c
        0x10c
        0x10d
        0x10d
        0x10d
        0x10e
        0x10e
        0x10f
        0x110
        0x110
        0x111
        0x111
        0x112
        0x112
        0x113
        0x113
        0x114
        0x114
        0x115
        0x115
        0x115
        0x116
        0x116
        0x117
        0x117
        0x117
        0x118
        0x118
        0x119
        0x11a
        0x11a
        0x11a
        0x11b
        0x11b
        0x11c
        0x11c
        0x11d
        0x11d
        0x11d
        0x11e
        0x11e
        0x11f
        0x11f
        0x120
        0x120
        0x120
        0x121
        0x121
        0x121
        0x122
        0x122
        0x122
        0x123
        0x124
        0x124
        0x124
        0x125
        0x125
        0x126
        0x126
        0x126
        0x127
        0x127
        0x128
        0x128
        0x128
        0x129
        0x129
        0x129
        0x12a
        0x12a
        0x12a
        0x12b
        0x12b
        0x12b
        0x12b
        0x12c
        0x12c
        0x12d
        0x12d
        0x12e
        0x12e
        0x12e
        0x12f
        0x12f
        0x130
        0x130
        0x130
        0x131
        0x131
        0x131
        0x132
        0x132
        0x132
        0x133
        0x133
        0x133
        0x134
        0x134
        0x134
        0x135
        0x135
        0x135
        0x135
        0x136
        0x136
        0x136
        0x136
        0x137
        0x138
        0x138
        0x138
        0x139
        0x139
        0x139
        0x13a
        0x13a
        0x13a
        0x13b
        0x13b
        0x13b
        0x13b
        0x13c
        0x13c
        0x13c
        0x13d
        0x13d
        0x13d
        0x13e
        0x13e
        0x13e
        0x13f
        0x13f
        0x13f
        0x13f
        0x13f
        0x140
        0x140
        0x140
        0x141
        0x141
        0x142
        0x142
        0x142
        0x143
        0x143
        0x143
        0x143
        0x144
        0x144
        0x144
        0x145
        0x145
        0x145
        0x145
        0x146
        0x146
        0x146
        0x147
        0x147
        0x147
        0x147
        0x148
        0x148
        0x148
        0x149
        0x149
        0x149
        0x149
        0x149
        0x14a
        0x14a
        0x14a
        0x14a
        0x14b
        0x14b
        0x14c
        0x14c
        0x14c
        0x14d
        0x14d
        0x14d
        0x14d
        0x14e
        0x14e
        0x14e
        0x14e
        0x14f
        0x14f
        0x14f
        0x150
        0x150
        0x150
        0x150
        0x151
        0x151
        0x151
        0x151
        0x152
        0x152
        0x152
        0x153
        0x153
        0x153
        0x153
        0x153
        0x153
        0x154
        0x154
        0x154
        0x154
        0x155
        0x155
        0x156
        0x156
        0x156
        0x156
        0x157
        0x157
        0x157
        0x158
        0x158
        0x158
        0x158
        0x159
        0x159
        0x159
        0x159
        0x15a
        0x15a
        0x15a
        0x15a
        0x15b
        0x15b
        0x15b
        0x15b
        0x15c
        0x15c
        0x15c
        0x15c
        0x15d
        0x15d
        0x15d
        0x15d
        0x15d
        0x15d
        0x15e
        0x15e
        0x15e
        0x15e
        0x15f
        0x15f
        0x160
        0x160
        0x160
        0x160
        0x161
        0x161
        0x161
        0x161
        0x162
        0x162
        0x162
        0x162
        0x163
        0x163
        0x163
        0x163
        0x164
        0x164
        0x164
        0x164
        0x165
        0x165
        0x165
        0x165
        0x166
        0x166
        0x166
        0x166
        0x167
        0x167
        0x167
        0x167
        0x167
        0x167
        0x167
        0x168
        0x168
        0x168
        0x168
        0x169
        0x169
        0x16a
        0x16a
        0x16a
        0x16a
        0x16b
        0x16b
        0x16b
        0x16b
        0x16c
        0x16c
        0x16c
        0x16c
        0x16d
        0x16d
        0x16d
        0x16d
        0x16e
        0x16e
        0x16e
        0x16e
        0x16e
        0x16f
        0x16f
        0x16f
        0x16f
        0x170
        0x170
        0x170
        0x170
        0x171
        0x171
        0x171
        0x171
        0x171
        0x171
        0x172
        0x172
        0x172
        0x172
        0x172
        0x173
        0x173
        0x174
        0x174
        0x174
        0x174
        0x175
        0x175
        0x175
        0x175
        0x176
        0x176
        0x176
        0x176
        0x176
        0x177
        0x177
        0x177
        0x177
        0x178
        0x178
        0x178
        0x178
        0x179
        0x179
        0x179
        0x179
        0x17a
        0x17a
        0x17a
        0x17a
        0x17a
        0x17b
        0x17b
        0x17b
        0x17b
        0x17b
        0x17b
        0x17c
        0x17c
        0x17c
        0x17c
        0x17d
        0x17d
        0x17d
        0x17e
        0x17e
        0x17e
        0x17e
        0x17f
        0x17f
        0x17f
        0x17f
        0x180
        0x180
        0x180
        0x180
        0x181
        0x181
        0x181
        0x181
        0x181
        0x182
        0x182
        0x182
        0x182
        0x183
        0x183
        0x183
        0x183
        0x184
        0x184
        0x184
        0x184
        0x184
        0x185
        0x185
        0x185
        0x185
        0x185
        0x185
        0x186
        0x186
        0x186
        0x186
        0x187
        0x187
        0x188
        0x188
        0x188
        0x188
        0x188
        0x189
        0x189
        0x189
        0x189
        0x18a
        0x18a
        0x18a
        0x18a
        0x18b
        0x18b
        0x18b
        0x18b
        0x18c
        0x18c
        0x18c
        0x18c
        0x18c
        0x18d
        0x18d
        0x18d
        0x18d
        0x18e
        0x18e
        0x18e
        0x18e
        0x18f
        0x18f
        0x18f
        0x18f
        0x18f
        0x18f
        0x190
        0x190
        0x190
        0x190
        0x190
        0x191
        0x191
        0x192
        0x192
        0x192
        0x192
        0x193
        0x193
        0x193
        0x193
        0x194
        0x194
        0x194
        0x194
        0x195
        0x195
        0x195
        0x195
        0x196
        0x196
        0x196
        0x196
        0x196
        0x197
        0x197
        0x197
        0x197
        0x198
        0x198
        0x198
        0x198
        0x199
        0x199
        0x199
        0x199
        0x199
        0x199
        0x19a
        0x19a
        0x19a
        0x19a
        0x19b
        0x19b
        0x19c
        0x19c
        0x19c
        0x19c
        0x19d
        0x19d
        0x19d
        0x19d
        0x19e
        0x19e
        0x19e
        0x19e
        0x19f
        0x19f
        0x19f
        0x19f
        0x1a0
        0x1a0
        0x1a0
        0x1a0
        0x1a1
        0x1a1
        0x1a1
        0x1a1
        0x1a2
        0x1a2
        0x1a2
        0x1a2
        0x1a3
        0x1a3
        0x1a3
        0x1a3
        0x1a3
        0x1a3
        0x1a4
        0x1a4
        0x1a4
        0x1a4
        0x1a5
        0x1a5
        0x1a6
        0x1a6
        0x1a6
        0x1a6
        0x1a7
        0x1a7
        0x1a7
        0x1a7
        0x1a8
        0x1a8
        0x1a8
        0x1a9
        0x1a9
        0x1a9
        0x1a9
        0x1aa
        0x1aa
        0x1aa
        0x1aa
        0x1ab
        0x1ab
        0x1ab
        0x1ab
        0x1ac
        0x1ac
        0x1ac
        0x1ad
        0x1ad
        0x1ad
        0x1ad
        0x1ad
        0x1ad
        0x1ae
        0x1ae
        0x1ae
        0x1ae
        0x1af
        0x1af
        0x1b0
        0x1b0
        0x1b0
        0x1b1
        0x1b1
        0x1b1
        0x1b1
        0x1b2
        0x1b2
        0x1b2
        0x1b3
        0x1b3
        0x1b3
        0x1b3
        0x1b4
        0x1b4
        0x1b4
        0x1b4
        0x1b5
        0x1b5
        0x1b5
        0x1b6
        0x1b6
        0x1b6
        0x1b6
        0x1b7
        0x1b7
        0x1b7
        0x1b7
        0x1b7
        0x1b8
        0x1b8
        0x1b8
        0x1b9
        0x1b9
        0x1ba
        0x1ba
        0x1ba
        0x1bb
        0x1bb
        0x1bb
        0x1bb
        0x1bc
        0x1bc
        0x1bc
        0x1bd
        0x1bd
        0x1bd
        0x1be
        0x1be
        0x1be
        0x1be
        0x1bf
        0x1bf
        0x1bf
        0x1c0
        0x1c0
        0x1c0
        0x1c1
        0x1c1
        0x1c1
        0x1c1
        0x1c1
        0x1c2
        0x1c2
        0x1c2
        0x1c3
        0x1c3
        0x1c4
        0x1c4
        0x1c4
        0x1c5
        0x1c5
        0x1c5
        0x1c6
        0x1c6
        0x1c6
        0x1c7
        0x1c7
        0x1c7
        0x1c8
        0x1c8
        0x1c8
        0x1c9
        0x1c9
        0x1c9
        0x1ca
        0x1ca
        0x1ca
        0x1cb
        0x1cb
        0x1cb
        0x1cb
        0x1cc
        0x1cc
        0x1cc
        0x1cd
        0x1cd
        0x1ce
        0x1ce
        0x1ce
        0x1cf
        0x1cf
        0x1cf
        0x1d0
        0x1d0
        0x1d1
        0x1d1
        0x1d1
        0x1d2
        0x1d2
        0x1d2
        0x1d3
        0x1d3
        0x1d3
        0x1d4
        0x1d4
        0x1d5
        0x1d5
        0x1d5
        0x1d5
        0x1d6
        0x1d6
        0x1d6
        0x1d7
        0x1d8
        0x1d8
        0x1d8
        0x1d9
        0x1d9
        0x1da
        0x1da
        0x1da
        0x1db
        0x1db
        0x1dc
        0x1dc
        0x1dc
        0x1dd
        0x1dd
        0x1de
        0x1de
        0x1de
        0x1df
        0x1df
        0x1df
        0x1e0
        0x1e0
        0x1e0
        0x1e1
        0x1e2
        0x1e2
        0x1e3
        0x1e3
        0x1e4
        0x1e4
        0x1e4
        0x1e5
        0x1e5
        0x1e6
        0x1e6
        0x1e7
        0x1e7
        0x1e8
        0x1e8
        0x1e8
        0x1e9
        0x1e9
        0x1e9
        0x1ea
        0x1ea
        0x1eb
        0x1ec
        0x1ec
        0x1ed
        0x1ed
        0x1ee
        0x1ee
        0x1ef
        0x1ef
        0x1f0
        0x1f0
        0x1f1
        0x1f1
        0x1f2
        0x1f2
        0x1f3
        0x1f3
        0x1f3
        0x1f4
        0x1f5
        0x1f6
        0x1f6
        0x1f7
        0x1f7
        0x1f8
        0x1f8
        0x1f9
        0x1f9
        0x1fa
        0x1fb
        0x1fb
        0x1fc
        0x1fc
        0x1fd
        0x1fd
        0x1fe
        0x1fe
        0x1ff
        0x200
        0x201
        0x201
        0x202
        0x203
        0x203
        0x204
        0x205
        0x205
        0x206
        0x207
        0x207
        0x207
        0x208
        0x209
        0x20a
        0x20b
        0x20c
        0x20c
        0x20d
        0x20e
        0x20e
        0x20f
        0x210
        0x211
        0x211
        0x212
        0x213
        0x214
        0x215
        0x216
        0x217
        0x217
        0x218
        0x219
        0x21a
        0x21b
        0x21b
        0x21c
        0x21e
        0x21f
        0x220
        0x221
        0x222
        0x223
        0x224
        0x225
        0x225
        0x226
        0x228
        0x229
        0x22a
        0x22b
        0x22c
        0x22e
        0x22f
        0x22f
        0x231
        0x232
        0x234
        0x235
        0x236
        0x238
        0x239
        0x23a
        0x23c
        0x23e
        0x23f
        0x241
        0x242
        0x243
        0x246
        0x247
        0x249
        0x24b
        0x24d
        0x24e
        0x251
        0x253
        0x255
        0x257
        0x25a
        0x25c
        0x25f
        0x261
        0x264
        0x267
        0x26a
        0x26c
        0x270
        0x274
        0x277
        0x27b
        0x27f
        0x284
        0x289
        0x28e
        0x293
        0x29a
        0x2a1
        0x2a8
        0x2b2
        0x2bc
        0x2ca
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x280

    .line 5
    .line 6
    iput p1, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mTileSize:I

    .line 7
    .line 8
    const-string/jumbo p1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float scale;\nuniform float shift_scale;\nuniform float hist_offset;\nuniform float hist_scale;\nuniform float density_offset;\nuniform float density_scale;\nvarying vec2 v_texcoord;\nvoid main() {\n  const vec3 weights = vec3(0.33333, 0.33333, 0.33333);\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float energy = dot(color.rgb, weights);\n  float mask_value = energy - 0.5;\n  float alpha;\n  if (mask_value > 0.0) {\n    alpha = (pow(2.0 * mask_value, 1.5) - 1.0) * scale + 1.0;\n  } else { \n    alpha = (pow(2.0 * mask_value, 2.0) - 1.0) * scale + 1.0;\n  }\n  float index = energy * hist_scale + hist_offset;\n  vec4 temp = texture2D(tex_sampler_1, vec2(index, 0.5));\n  float value = temp.g + temp.r * shift_scale;\n  index = value * density_scale + density_offset;\n  temp = texture2D(tex_sampler_2, vec2(index, 0.5));\n  value = temp.g + temp.r * shift_scale;\n  float dst_energy = energy * alpha + value * (1.0 - alpha);\n  float max_energy = energy / max(color.r, max(color.g, color.b));\n  if (dst_energy > max_energy) {\n    dst_energy = max_energy;\n  }\n  if (energy == 0.0) {\n    gl_FragColor = color;\n  } else {\n    gl_FragColor = vec4(color.rgb * dst_energy / energy, color.a);\n  }\n}\n"

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mAutoFixShader:Ljava/lang/String;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mWidth:I

    .line 15
    .line 16
    iput p1, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHeight:I

    .line 17
    .line 18
    iput p1, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mTarget:I

    .line 19
    .line 20
    return-void
.end method

.method private createHistogramFrame(Landroid/filterfw/core/FilterContext;II[I)V
    .locals 11

    .line 1
    const/16 v0, 0x2fe

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    int-to-float v2, p3

    .line 6
    const v3, 0x3d4ccccd    # 0.05f

    .line 7
    .line 8
    .line 9
    mul-float/2addr v2, v3

    .line 10
    float-to-int v2, v2

    .line 11
    int-to-float v4, p2

    .line 12
    mul-float/2addr v4, v3

    .line 13
    float-to-int v3, v4

    .line 14
    mul-int/lit8 v4, v3, 0x2

    .line 15
    .line 16
    sub-int v4, p2, v4

    .line 17
    .line 18
    mul-int/lit8 v5, v2, 0x2

    .line 19
    .line 20
    sub-int v5, p3, v5

    .line 21
    .line 22
    mul-int/2addr v5, v4

    .line 23
    move v4, v2

    .line 24
    :goto_0
    sub-int v6, p3, v2

    .line 25
    .line 26
    const/4 v7, 0x1

    .line 27
    if-ge v4, v6, :cond_1

    .line 28
    .line 29
    move v6, v3

    .line 30
    :goto_1
    sub-int v8, p2, v3

    .line 31
    .line 32
    if-ge v6, v8, :cond_0

    .line 33
    .line 34
    mul-int v8, v4, p2

    .line 35
    .line 36
    add-int/2addr v8, v6

    .line 37
    aget v8, p4, v8

    .line 38
    .line 39
    and-int/lit16 v9, v8, 0xff

    .line 40
    .line 41
    shr-int/lit8 v10, v8, 0x8

    .line 42
    .line 43
    and-int/lit16 v10, v10, 0xff

    .line 44
    .line 45
    add-int/2addr v9, v10

    .line 46
    shr-int/lit8 v8, v8, 0x10

    .line 47
    .line 48
    and-int/lit16 v8, v8, 0xff

    .line 49
    .line 50
    add-int/2addr v9, v8

    .line 51
    aget v8, v1, v9

    .line 52
    .line 53
    add-int/2addr v8, v7

    .line 54
    aput v8, v1, v9

    .line 55
    .line 56
    add-int/lit8 v6, v6, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move p2, v7

    .line 63
    :goto_2
    if-ge p2, v0, :cond_2

    .line 64
    .line 65
    aget p3, v1, p2

    .line 66
    .line 67
    add-int/lit8 p4, p2, -0x1

    .line 68
    .line 69
    aget p4, v1, p4

    .line 70
    .line 71
    add-int/2addr p3, p4

    .line 72
    aput p3, v1, p2

    .line 73
    .line 74
    add-int/lit8 p2, p2, 0x1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    const/4 p2, 0x0

    .line 78
    :goto_3
    if-ge p2, v0, :cond_3

    .line 79
    .line 80
    aget p3, v1, p2

    .line 81
    .line 82
    int-to-long p3, p3

    .line 83
    const-wide/32 v2, 0xffff

    .line 84
    .line 85
    .line 86
    mul-long/2addr p3, v2

    .line 87
    int-to-long v2, v5

    .line 88
    div-long/2addr p3, v2

    .line 89
    long-to-int p3, p3

    .line 90
    aput p3, v1, p2

    .line 91
    .line 92
    add-int/lit8 p2, p2, 0x1

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_3
    const/4 p2, 0x3

    .line 96
    invoke-static {v0, v7, p2, p2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    iget-object p3, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHistFrame:Landroid/filterfw/core/Frame;

    .line 101
    .line 102
    if-eqz p3, :cond_4

    .line 103
    .line 104
    invoke-virtual {p3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 105
    .line 106
    .line 107
    :cond_4
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1, p2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iput-object p1, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHistFrame:Landroid/filterfw/core/Frame;

    .line 116
    .line 117
    invoke-virtual {p1, v1}, Landroid/filterfw/core/Frame;->setInts([I)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method private initParameters()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    .line 2
    .line 3
    const/high16 v1, 0x3b800000    # 0.00390625f

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string/jumbo v2, "shift_scale"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    .line 16
    .line 17
    const v1, 0x3a2b1cbe

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string/jumbo v2, "hist_offset"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    .line 31
    .line 32
    const v1, 0x3f7faa72

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string/jumbo v2, "hist_scale"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    .line 46
    .line 47
    const/high16 v1, 0x3a000000

    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "density_offset"

    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    .line 59
    .line 60
    const v1, 0x3f7fc000

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v2, "density_scale"

    .line 68
    .line 69
    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    .line 73
    .line 74
    iget v1, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mScale:F

    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string/jumbo v2, "scale"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget p2, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mScale:F

    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const-string/jumbo v0, "scale"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0, p2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0

    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    .line 5
    .line 6
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float scale;\nuniform float shift_scale;\nuniform float hist_offset;\nuniform float hist_scale;\nuniform float density_offset;\nuniform float density_scale;\nvarying vec2 v_texcoord;\nvoid main() {\n  const vec3 weights = vec3(0.33333, 0.33333, 0.33333);\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float energy = dot(color.rgb, weights);\n  float mask_value = energy - 0.5;\n  float alpha;\n  if (mask_value > 0.0) {\n    alpha = (pow(2.0 * mask_value, 1.5) - 1.0) * scale + 1.0;\n  } else { \n    alpha = (pow(2.0 * mask_value, 2.0) - 1.0) * scale + 1.0;\n  }\n  float index = energy * hist_scale + hist_offset;\n  vec4 temp = texture2D(tex_sampler_1, vec2(index, 0.5));\n  float value = temp.g + temp.r * shift_scale;\n  index = value * density_scale + density_offset;\n  temp = texture2D(tex_sampler_2, vec2(index, 0.5));\n  value = temp.g + temp.r * shift_scale;\n  float dst_energy = energy * alpha + value * (1.0 - alpha);\n  float max_energy = energy / max(color.r, max(color.g, color.b));\n  if (dst_energy > max_energy) {\n    dst_energy = max_energy;\n  }\n  if (energy == 0.0) {\n    gl_FragColor = color;\n  } else {\n    gl_FragColor = vec4(color.rgb * dst_energy / energy, color.a);\n  }\n}\n"

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget p1, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mTileSize:I

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    .line 18
    .line 19
    iput p2, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mTarget:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 23
    .line 24
    const-string v0, "Filter Sharpen does not support frames of target "

    .line 25
    .line 26
    const-string v1, "!"

    .line 27
    .line 28
    invoke-static {v0, p2, v1}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 7

    .line 1
    const/16 v0, 0x400

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_0

    .line 7
    .line 8
    sget-object v3, Landroid/filterpacks/imageproc/AutoFixFilter;->normal_cdf:[I

    .line 9
    .line 10
    aget v3, v3, v2

    .line 11
    .line 12
    int-to-long v3, v3

    .line 13
    const-wide/32 v5, 0xffff

    .line 14
    .line 15
    .line 16
    mul-long/2addr v3, v5

    .line 17
    const/16 v5, 0x2fe

    .line 18
    .line 19
    int-to-long v5, v5

    .line 20
    div-long/2addr v3, v5

    .line 21
    long-to-int v3, v3

    .line 22
    aput v3, v1, v2

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x1

    .line 28
    const/4 v3, 0x3

    .line 29
    invoke-static {v0, v2, v3, v3}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mDensityFrame:Landroid/filterfw/core/Frame;

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/filterfw/core/Frame;->setInts([I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "image"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v3, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    iget v4, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mTarget:I

    .line 21
    .line 22
    if-eq v3, v4, :cond_1

    .line 23
    .line 24
    :cond_0
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/AutoFixFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Landroid/filterpacks/imageproc/AutoFixFilter;->initParameters()V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    iget v4, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mWidth:I

    .line 39
    .line 40
    if-ne v3, v4, :cond_2

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    iget v4, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHeight:I

    .line 47
    .line 48
    if-eq v3, v4, :cond_3

    .line 49
    .line 50
    :cond_2
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    iput v3, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mWidth:I

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    iput v3, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHeight:I

    .line 61
    .line 62
    iget v4, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mWidth:I

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getInts()[I

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-direct {p0, p1, v4, v3, v5}, Landroid/filterpacks/imageproc/AutoFixFilter;->createHistogramFrame(Landroid/filterfw/core/FilterContext;II[I)V

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const/4 v2, 0x3

    .line 80
    new-array v2, v2, [Landroid/filterfw/core/Frame;

    .line 81
    .line 82
    const/4 v3, 0x0

    .line 83
    aput-object v1, v2, v3

    .line 84
    .line 85
    const/4 v1, 0x1

    .line 86
    iget-object v3, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHistFrame:Landroid/filterfw/core/Frame;

    .line 87
    .line 88
    aput-object v3, v2, v1

    .line 89
    .line 90
    const/4 v1, 0x2

    .line 91
    iget-object v3, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mDensityFrame:Landroid/filterfw/core/Frame;

    .line 92
    .line 93
    aput-object v3, v2, v1

    .line 94
    .line 95
    iget-object v1, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mShaderProgram:Landroid/filterfw/core/Program;

    .line 96
    .line 97
    invoke-virtual {v1, v2, p1}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v0, p1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public setupPorts()V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string/jumbo v1, "image"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1, v1}, Landroid/filterfw/core/Filter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mDensityFrame:Landroid/filterfw/core/Frame;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mDensityFrame:Landroid/filterfw/core/Frame;

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHistFrame:Landroid/filterfw/core/Frame;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroid/filterpacks/imageproc/AutoFixFilter;->mHistFrame:Landroid/filterfw/core/Frame;

    .line 19
    .line 20
    :cond_1
    return-void
.end method
