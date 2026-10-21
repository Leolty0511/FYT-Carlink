.class public Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramFragmentFixedFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;,
        Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;,
        Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;
    }
.end annotation


# static fields
.field public static final MAX_TEXTURE:I = 0x2


# instance fields
.field mNumTextures:I

.field mPointSpriteEnable:Z

.field mRS:Landroid/renderscript/RenderScript;

.field mShader:Ljava/lang/String;

.field mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

.field mVaryingColorEnable:Z


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    new-array p1, p1, [Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    .line 8
    .line 9
    iput-object p1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mPointSpriteEnable:Z

    .line 13
    .line 14
    return-void
.end method

.method private buildShaderString()V
    .locals 7

    .line 1
    const-string v0, "//rs_shader_internal\n"

    .line 2
    .line 3
    iput-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 11
    .line 12
    const-string/jumbo v2, "varying lowp vec4 varColor;\n"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 27
    .line 28
    const-string/jumbo v2, "varying vec2 varTex0;\n"

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 43
    .line 44
    const-string/jumbo v2, "void main() {\n"

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 52
    .line 53
    iget-boolean v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mVaryingColorEnable:Z

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 63
    .line 64
    const-string v2, "  lowp vec4 col = varColor;\n"

    .line 65
    .line 66
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 79
    .line 80
    const-string v2, "  lowp vec4 col = UNI_Color;\n"

    .line 81
    .line 82
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 87
    .line 88
    :goto_0
    iget v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    .line 89
    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    iget-boolean v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mPointSpriteEnable:Z

    .line 93
    .line 94
    if-eqz v0, :cond_1

    .line 95
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 102
    .line 103
    const-string v2, "  vec2 t0 = gl_PointCoord;\n"

    .line 104
    .line 105
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iput-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 118
    .line 119
    const-string v2, "  vec2 t0 = varTex0.xy;\n"

    .line 120
    .line 121
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iput-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 126
    .line 127
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 128
    :goto_2
    iget v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    .line 129
    .line 130
    if-ge v0, v1, :cond_e

    .line 131
    .line 132
    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$1;->$SwitchMap$android$renderscript$ProgramFragmentFixedFunction$Builder$EnvMode:[I

    .line 133
    .line 134
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    .line 135
    .line 136
    aget-object v2, v2, v0

    .line 137
    .line 138
    iget-object v2, v2, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;->env:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    aget v1, v1, v2

    .line 145
    .line 146
    const/4 v2, 0x4

    .line 147
    const/4 v3, 0x3

    .line 148
    const/4 v4, 0x2

    .line 149
    const/4 v5, 0x1

    .line 150
    if-eq v1, v5, :cond_9

    .line 151
    .line 152
    if-eq v1, v4, :cond_4

    .line 153
    .line 154
    if-eq v1, v3, :cond_3

    .line 155
    .line 156
    goto/16 :goto_3

    .line 157
    .line 158
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 164
    .line 165
    const-string v3, "  col = texture2D(UNI_Tex0, t0);\n"

    .line 166
    .line 167
    invoke-static {v1, v2, v3}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 172
    .line 173
    goto/16 :goto_3

    .line 174
    .line 175
    :cond_4
    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$1;->$SwitchMap$android$renderscript$ProgramFragmentFixedFunction$Builder$Format:[I

    .line 176
    .line 177
    iget-object v6, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    .line 178
    .line 179
    aget-object v6, v6, v0

    .line 180
    .line 181
    iget-object v6, v6, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;->format:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    .line 182
    .line 183
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    aget v1, v1, v6

    .line 188
    .line 189
    if-eq v1, v5, :cond_8

    .line 190
    .line 191
    const-string v5, "  col.rgba *= texture2D(UNI_Tex0, t0).rgba;\n"

    .line 192
    .line 193
    if-eq v1, v4, :cond_7

    .line 194
    .line 195
    if-eq v1, v3, :cond_6

    .line 196
    .line 197
    if-eq v1, v2, :cond_5

    .line 198
    .line 199
    goto/16 :goto_3

    .line 200
    .line 201
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 207
    .line 208
    invoke-static {v1, v2, v5}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 213
    .line 214
    goto/16 :goto_3

    .line 215
    .line 216
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 222
    .line 223
    const-string v3, "  col.rgb *= texture2D(UNI_Tex0, t0).rgb;\n"

    .line 224
    .line 225
    invoke-static {v1, v2, v3}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 230
    .line 231
    goto/16 :goto_3

    .line 232
    .line 233
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 239
    .line 240
    invoke-static {v1, v2, v5}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 253
    .line 254
    const-string v3, "  col.a *= texture2D(UNI_Tex0, t0).a;\n"

    .line 255
    .line 256
    invoke-static {v1, v2, v3}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_9
    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$1;->$SwitchMap$android$renderscript$ProgramFragmentFixedFunction$Builder$Format:[I

    .line 264
    .line 265
    iget-object v6, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    .line 266
    .line 267
    aget-object v6, v6, v0

    .line 268
    .line 269
    iget-object v6, v6, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;->format:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    .line 270
    .line 271
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 272
    .line 273
    .line 274
    move-result v6

    .line 275
    aget v1, v1, v6

    .line 276
    .line 277
    if-eq v1, v5, :cond_d

    .line 278
    .line 279
    const-string v5, "  col.rgba = texture2D(UNI_Tex0, t0).rgba;\n"

    .line 280
    .line 281
    if-eq v1, v4, :cond_c

    .line 282
    .line 283
    if-eq v1, v3, :cond_b

    .line 284
    .line 285
    if-eq v1, v2, :cond_a

    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 294
    .line 295
    invoke-static {v1, v2, v5}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .line 306
    .line 307
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 308
    .line 309
    const-string v3, "  col.rgb = texture2D(UNI_Tex0, t0).rgb;\n"

    .line 310
    .line 311
    invoke-static {v1, v2, v3}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 316
    .line 317
    goto :goto_3

    .line 318
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 324
    .line 325
    invoke-static {v1, v2, v5}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 330
    .line 331
    goto :goto_3

    .line 332
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .line 336
    .line 337
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 338
    .line 339
    const-string v3, "  col.a = texture2D(UNI_Tex0, t0).a;\n"

    .line 340
    .line 341
    invoke-static {v1, v2, v3}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 346
    .line 347
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 348
    .line 349
    goto/16 :goto_2

    .line 350
    .line 351
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .line 355
    .line 356
    iget-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 357
    .line 358
    const-string v2, "  gl_FragColor = col;\n"

    .line 359
    .line 360
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    iput-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 365
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .line 370
    .line 371
    iget-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 372
    .line 373
    const-string/jumbo v2, "}\n"

    .line 374
    .line 375
    .line 376
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    iput-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 381
    .line 382
    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramFragmentFixedFunction;
    .locals 7

    .line 1
    new-instance v0, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    .line 10
    .line 11
    move v2, v1

    .line 12
    :goto_0
    const/4 v3, 0x2

    .line 13
    const/4 v4, 0x1

    .line 14
    if-ge v2, v3, :cond_1

    .line 15
    .line 16
    iget-object v3, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    .line 17
    .line 18
    aget-object v3, v3, v2

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    iget v3, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    .line 23
    .line 24
    add-int/2addr v3, v4

    .line 25
    iput v3, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-direct {p0}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->buildShaderString()V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/renderscript/Program$BaseProgramBuilder;->setShader(Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mVaryingColorEnable:Z

    .line 39
    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    new-instance v2, Landroid/renderscript/Element$Builder;

    .line 43
    .line 44
    iget-object v5, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 45
    .line 46
    invoke-direct {v2, v5}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 47
    .line 48
    .line 49
    iget-object v5, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 50
    .line 51
    invoke-static {v5}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    const-string v6, "Color"

    .line 56
    .line 57
    invoke-virtual {v2, v5, v6}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 58
    .line 59
    .line 60
    new-instance v5, Landroid/renderscript/Type$Builder;

    .line 61
    .line 62
    iget-object v6, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-direct {v5, v6, v2}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v4}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v0, v2}, Landroid/renderscript/Program$BaseProgramBuilder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    const/4 v2, 0x0

    .line 83
    :goto_1
    move v4, v1

    .line 84
    :goto_2
    iget v5, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    .line 85
    .line 86
    if-ge v4, v5, :cond_3

    .line 87
    .line 88
    sget-object v5, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    .line 89
    .line 90
    invoke-virtual {v0, v5}, Landroid/renderscript/Program$BaseProgramBuilder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 91
    .line 92
    .line 93
    add-int/lit8 v4, v4, 0x1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput v3, v0, Landroid/renderscript/Program;->mTextureCount:I

    .line 101
    .line 102
    iget-boolean v3, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mVaryingColorEnable:Z

    .line 103
    .line 104
    if-nez v3, :cond_4

    .line 105
    .line 106
    iget-object v3, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 107
    .line 108
    invoke-static {v3, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    new-instance v3, Landroid/renderscript/FieldPacker;

    .line 113
    .line 114
    const/16 v4, 0x10

    .line 115
    .line 116
    invoke-direct {v3, v4}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 117
    .line 118
    .line 119
    new-instance v4, Landroid/renderscript/Float4;

    .line 120
    .line 121
    const/high16 v5, 0x3f800000    # 1.0f

    .line 122
    .line 123
    invoke-direct {v4, v5, v5, v5, v5}, Landroid/renderscript/Float4;-><init>(FFFF)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v4}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v1, v3}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v2, v1}, Landroid/renderscript/Program;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 133
    .line 134
    .line 135
    :cond_4
    return-object v0
.end method

.method public setPointSpriteTexCoordinateReplacement(Z)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mPointSpriteEnable:Z

    return-object p0
.end method

.method public setTexture(Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;I)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    .locals 2

    .line 1
    if-ltz p3, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-ge p3, v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    .line 7
    .line 8
    new-instance v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, p2}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;-><init>(Landroid/renderscript/ProgramFragmentFixedFunction$Builder;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;)V

    .line 11
    .line 12
    .line 13
    aput-object v1, v0, p3

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string p2, "MAX_TEXTURE exceeded."

    .line 19
    .line 20
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public setVaryingColor(Z)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mVaryingColorEnable:Z

    return-object p0
.end method
