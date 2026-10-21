.class Landroid/animation/FloatKeyframeSet;
.super Landroid/animation/KeyframeSet;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Keyframes$FloatKeyframes;


# direct methods
.method public varargs constructor <init>([Landroid/animation/Keyframe$FloatKeyframe;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    return-void
.end method


# virtual methods
.method public clone()Landroid/animation/FloatKeyframeSet;
    .locals 5

    .line 4
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 6
    new-array v2, v1, [Landroid/animation/Keyframe$FloatKeyframe;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 7
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe;

    invoke-virtual {v4}, Landroid/animation/Keyframe;->clone()Landroid/animation/Keyframe;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Landroid/animation/FloatKeyframeSet;

    invoke-direct {v0, v2}, Landroid/animation/FloatKeyframeSet;-><init>([Landroid/animation/Keyframe$FloatKeyframe;)V

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/KeyframeSet;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/animation/FloatKeyframeSet;->clone()Landroid/animation/FloatKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/Keyframes;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/animation/FloatKeyframeSet;->clone()Landroid/animation/FloatKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/animation/FloatKeyframeSet;->clone()Landroid/animation/FloatKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public getFloatValue(F)F
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
    check-cast v0, Landroid/animation/Keyframe$FloatKeyframe;

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
    check-cast v1, Landroid/animation/Keyframe$FloatKeyframe;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v1}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

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
    invoke-static {v3, v2, p1, v2}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-interface {v0, p1, v1, v2}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Ljava/lang/Number;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    :goto_0
    return p1

    .line 81
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 82
    .line 83
    cmpl-float v0, p1, v0

    .line 84
    .line 85
    if-ltz v0, :cond_5

    .line 86
    .line 87
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 88
    .line 89
    iget v1, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    .line 90
    .line 91
    add-int/lit8 v1, v1, -0x2

    .line 92
    .line 93
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/animation/Keyframe$FloatKeyframe;

    .line 98
    .line 99
    iget-object v1, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 100
    .line 101
    iget v3, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    .line 102
    .line 103
    sub-int/2addr v3, v2

    .line 104
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Landroid/animation/Keyframe$FloatKeyframe;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    invoke-virtual {v1}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    invoke-virtual {v1}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    if-eqz v1, :cond_3

    .line 131
    .line 132
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    :cond_3
    sub-float/2addr p1, v0

    .line 137
    sub-float/2addr v4, v0

    .line 138
    div-float/2addr p1, v4

    .line 139
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    .line 140
    .line 141
    if-nez v0, :cond_4

    .line 142
    .line 143
    invoke-static {v3, v2, p1, v2}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    goto :goto_1

    .line 148
    :cond_4
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-interface {v0, p1, v1, v2}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    check-cast p1, Ljava/lang/Number;

    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    :goto_1
    return p1

    .line 167
    :cond_5
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 168
    .line 169
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Landroid/animation/Keyframe$FloatKeyframe;

    .line 174
    .line 175
    move v1, v2

    .line 176
    :goto_2
    iget v3, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    .line 177
    .line 178
    if-ge v1, v3, :cond_9

    .line 179
    .line 180
    iget-object v3, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 181
    .line 182
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    check-cast v3, Landroid/animation/Keyframe$FloatKeyframe;

    .line 187
    .line 188
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    cmpg-float v4, p1, v4

    .line 193
    .line 194
    if-gez v4, :cond_8

    .line 195
    .line 196
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    sub-float/2addr p1, v2

    .line 205
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    sub-float/2addr v2, v4

    .line 214
    div-float/2addr p1, v2

    .line 215
    invoke-virtual {v0}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    invoke-virtual {v3}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    if-eqz v1, :cond_6

    .line 224
    .line 225
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    :cond_6
    iget-object v1, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    .line 230
    .line 231
    if-nez v1, :cond_7

    .line 232
    .line 233
    invoke-static {v2, v0, p1, v0}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    goto :goto_3

    .line 238
    :cond_7
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-interface {v1, p1, v0, v2}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    check-cast p1, Ljava/lang/Number;

    .line 251
    .line 252
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    :goto_3
    return p1

    .line 257
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 258
    .line 259
    move-object v0, v3

    .line 260
    goto :goto_2

    .line 261
    :cond_9
    iget-object p1, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 262
    .line 263
    sub-int/2addr v3, v2

    .line 264
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    check-cast p1, Landroid/animation/Keyframe;

    .line 269
    .line 270
    invoke-virtual {p1}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    check-cast p1, Ljava/lang/Number;

    .line 275
    .line 276
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    return p1
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/lang/Float;

    return-object v0
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/animation/FloatKeyframeSet;->getFloatValue(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
