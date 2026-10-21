.class Landroid/animation/IntKeyframeSet;
.super Landroid/animation/KeyframeSet;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Keyframes$IntKeyframes;


# direct methods
.method public varargs constructor <init>([Landroid/animation/Keyframe$IntKeyframe;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    return-void
.end method


# virtual methods
.method public clone()Landroid/animation/IntKeyframeSet;
    .locals 5

    .line 4
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 6
    new-array v2, v1, [Landroid/animation/Keyframe$IntKeyframe;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 7
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe;

    invoke-virtual {v4}, Landroid/animation/Keyframe;->clone()Landroid/animation/Keyframe;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Landroid/animation/IntKeyframeSet;

    invoke-direct {v0, v2}, Landroid/animation/IntKeyframeSet;-><init>([Landroid/animation/Keyframe$IntKeyframe;)V

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/KeyframeSet;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/animation/IntKeyframeSet;->clone()Landroid/animation/IntKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/Keyframes;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/animation/IntKeyframeSet;->clone()Landroid/animation/IntKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/animation/IntKeyframeSet;->clone()Landroid/animation/IntKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public getIntValue(F)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-gtz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/animation/Keyframe$IntKeyframe;

    .line 15
    .line 16
    iget-object v1, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/animation/Keyframe$IntKeyframe;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v1}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-virtual {v1}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    :cond_0
    sub-float/2addr p1, v0

    .line 51
    sub-float/2addr v4, v0

    .line 52
    div-float/2addr p1, v4

    .line 53
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    .line 54
    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    sub-int/2addr v3, v2

    .line 58
    int-to-float v0, v3

    .line 59
    mul-float/2addr p1, v0

    .line 60
    float-to-int p1, p1

    .line 61
    add-int/2addr v2, p1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-interface {v0, p1, v1, v2}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ljava/lang/Number;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    :goto_0
    return v2

    .line 82
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 83
    .line 84
    cmpl-float v0, p1, v0

    .line 85
    .line 86
    if-ltz v0, :cond_5

    .line 87
    .line 88
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 89
    .line 90
    iget v1, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    .line 91
    .line 92
    add-int/lit8 v1, v1, -0x2

    .line 93
    .line 94
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Landroid/animation/Keyframe$IntKeyframe;

    .line 99
    .line 100
    iget-object v1, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 101
    .line 102
    iget v3, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    .line 103
    .line 104
    sub-int/2addr v3, v2

    .line 105
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Landroid/animation/Keyframe$IntKeyframe;

    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-virtual {v1}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    invoke-virtual {v1}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    if-eqz v1, :cond_3

    .line 132
    .line 133
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    :cond_3
    sub-float/2addr p1, v0

    .line 138
    sub-float/2addr v4, v0

    .line 139
    div-float/2addr p1, v4

    .line 140
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    .line 141
    .line 142
    if-nez v0, :cond_4

    .line 143
    .line 144
    sub-int/2addr v3, v2

    .line 145
    int-to-float v0, v3

    .line 146
    mul-float/2addr p1, v0

    .line 147
    float-to-int p1, p1

    .line 148
    add-int/2addr v2, p1

    .line 149
    goto :goto_1

    .line 150
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-interface {v0, p1, v1, v2}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Ljava/lang/Number;

    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    :goto_1
    return v2

    .line 169
    :cond_5
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 170
    .line 171
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Landroid/animation/Keyframe$IntKeyframe;

    .line 176
    .line 177
    move v1, v2

    .line 178
    :goto_2
    iget v3, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    .line 179
    .line 180
    if-ge v1, v3, :cond_9

    .line 181
    .line 182
    iget-object v3, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 183
    .line 184
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    check-cast v3, Landroid/animation/Keyframe$IntKeyframe;

    .line 189
    .line 190
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    cmpg-float v4, p1, v4

    .line 195
    .line 196
    if-gez v4, :cond_8

    .line 197
    .line 198
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    sub-float/2addr p1, v2

    .line 207
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    sub-float/2addr v2, v4

    .line 216
    div-float/2addr p1, v2

    .line 217
    invoke-virtual {v0}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    invoke-virtual {v3}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-eqz v1, :cond_6

    .line 226
    .line 227
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    :cond_6
    iget-object v1, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    .line 232
    .line 233
    if-nez v1, :cond_7

    .line 234
    .line 235
    sub-int/2addr v2, v0

    .line 236
    int-to-float v1, v2

    .line 237
    mul-float/2addr p1, v1

    .line 238
    float-to-int p1, p1

    .line 239
    add-int/2addr v0, p1

    .line 240
    goto :goto_3

    .line 241
    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-interface {v1, p1, v0, v2}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    check-cast p1, Ljava/lang/Number;

    .line 254
    .line 255
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    :goto_3
    return v0

    .line 260
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 261
    .line 262
    move-object v0, v3

    .line 263
    goto :goto_2

    .line 264
    :cond_9
    iget-object p1, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 265
    .line 266
    sub-int/2addr v3, v2

    .line 267
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    check-cast p1, Landroid/animation/Keyframe;

    .line 272
    .line 273
    invoke-virtual {p1}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    check-cast p1, Ljava/lang/Number;

    .line 278
    .line 279
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 280
    .line 281
    .line 282
    move-result p1

    .line 283
    return p1
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/animation/IntKeyframeSet;->getIntValue(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
