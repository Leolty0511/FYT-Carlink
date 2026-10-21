.class public Landroid/text/method/Touch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/Touch$DragState;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const-class v0, Landroid/text/method/Touch$DragState;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {p1, v1, p0, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, [Landroid/text/method/Touch$DragState;

    .line 13
    .line 14
    array-length p1, p0

    .line 15
    if-lez p1, :cond_0

    .line 16
    .line 17
    aget-object p0, p0, v1

    .line 18
    .line 19
    iget p0, p0, Landroid/text/method/Touch$DragState;->mScrollX:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, -0x1

    .line 23
    :goto_0
    return p0
.end method

.method public static getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const-class v0, Landroid/text/method/Touch$DragState;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {p1, v1, p0, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, [Landroid/text/method/Touch$DragState;

    .line 13
    .line 14
    array-length p1, p0

    .line 15
    if-lez p1, :cond_0

    .line 16
    .line 17
    aget-object p0, p0, v1

    .line 18
    .line 19
    iget p0, p0, Landroid/text/method/Touch$DragState;->mScrollY:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, -0x1

    .line 23
    :goto_0
    return p0
.end method

.method public static onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-class v1, Landroid/text/method/Touch$DragState;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v0, :cond_c

    .line 10
    .line 11
    if-eq v0, v2, :cond_9

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    if-eq v0, v4, :cond_0

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-interface {p1, v3, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, [Landroid/text/method/Touch$DragState;

    .line 27
    .line 28
    array-length v1, v0

    .line 29
    if-lez v1, :cond_8

    .line 30
    .line 31
    aget-object v1, v0, v3

    .line 32
    .line 33
    iget-boolean v1, v1, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    aget-object v5, v0, v3

    .line 54
    .line 55
    iget v5, v5, Landroid/text/method/Touch$DragState;->mX:F

    .line 56
    .line 57
    sub-float/2addr v4, v5

    .line 58
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    int-to-float v1, v1

    .line 63
    cmpl-float v4, v4, v1

    .line 64
    .line 65
    if-gez v4, :cond_1

    .line 66
    .line 67
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    aget-object v5, v0, v3

    .line 72
    .line 73
    iget v5, v5, Landroid/text/method/Touch$DragState;->mY:F

    .line 74
    .line 75
    sub-float/2addr v4, v5

    .line 76
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    cmpl-float v1, v4, v1

    .line 81
    .line 82
    if-ltz v1, :cond_2

    .line 83
    .line 84
    :cond_1
    aget-object v1, v0, v3

    .line 85
    .line 86
    iput-boolean v2, v1, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    .line 87
    .line 88
    :cond_2
    aget-object v1, v0, v3

    .line 89
    .line 90
    iget-boolean v4, v1, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    .line 91
    .line 92
    if-eqz v4, :cond_8

    .line 93
    .line 94
    iput-boolean v2, v1, Landroid/text/method/Touch$DragState;->mUsed:Z

    .line 95
    .line 96
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    and-int/2addr v1, v2

    .line 101
    if-nez v1, :cond_4

    .line 102
    .line 103
    invoke-static {p1, v2}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eq v1, v2, :cond_4

    .line 108
    .line 109
    const/16 v1, 0x800

    .line 110
    .line 111
    invoke-static {p1, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_3

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_3
    move p1, v3

    .line 119
    goto :goto_1

    .line 120
    :cond_4
    :goto_0
    move p1, v2

    .line 121
    :goto_1
    if-eqz p1, :cond_5

    .line 122
    .line 123
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    aget-object v1, v0, v3

    .line 128
    .line 129
    iget v1, v1, Landroid/text/method/Touch$DragState;->mX:F

    .line 130
    .line 131
    sub-float/2addr p1, v1

    .line 132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    aget-object v4, v0, v3

    .line 137
    .line 138
    iget v4, v4, Landroid/text/method/Touch$DragState;->mY:F

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    aget-object p1, v0, v3

    .line 142
    .line 143
    iget p1, p1, Landroid/text/method/Touch$DragState;->mX:F

    .line 144
    .line 145
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    sub-float/2addr p1, v1

    .line 150
    aget-object v1, v0, v3

    .line 151
    .line 152
    iget v1, v1, Landroid/text/method/Touch$DragState;->mY:F

    .line 153
    .line 154
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    :goto_2
    sub-float/2addr v1, v4

    .line 159
    aget-object v4, v0, v3

    .line 160
    .line 161
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    iput v5, v4, Landroid/text/method/Touch$DragState;->mX:F

    .line 166
    .line 167
    aget-object v0, v0, v3

    .line 168
    .line 169
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 170
    .line 171
    .line 172
    move-result p2

    .line 173
    iput p2, v0, Landroid/text/method/Touch$DragState;->mY:F

    .line 174
    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    float-to-int p1, p1

    .line 180
    add-int/2addr p2, p1

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    float-to-int v0, v1

    .line 186
    add-int/2addr p1, v0

    .line 187
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    add-int/2addr v1, v0

    .line 196
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    sub-int/2addr v5, v1

    .line 209
    sub-int/2addr v4, v5

    .line 210
    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    invoke-static {p0, v0, p2, p1}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    if-ne v1, p1, :cond_6

    .line 234
    .line 235
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    if-eq v3, p1, :cond_7

    .line 240
    .line 241
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->cancelLongPress()V

    .line 242
    .line 243
    .line 244
    :cond_7
    return v2

    .line 245
    :cond_8
    :goto_3
    return v3

    .line 246
    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 247
    .line 248
    .line 249
    move-result p0

    .line 250
    invoke-interface {p1, v3, p0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    check-cast p0, [Landroid/text/method/Touch$DragState;

    .line 255
    .line 256
    move p2, v3

    .line 257
    :goto_4
    array-length v0, p0

    .line 258
    if-ge p2, v0, :cond_a

    .line 259
    .line 260
    aget-object v0, p0, p2

    .line 261
    .line 262
    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    add-int/lit8 p2, p2, 0x1

    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_a
    array-length p1, p0

    .line 269
    if-lez p1, :cond_b

    .line 270
    .line 271
    aget-object p0, p0, v3

    .line 272
    .line 273
    iget-boolean p0, p0, Landroid/text/method/Touch$DragState;->mUsed:Z

    .line 274
    .line 275
    if-eqz p0, :cond_b

    .line 276
    .line 277
    return v2

    .line 278
    :cond_b
    return v3

    .line 279
    :cond_c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    invoke-interface {p1, v3, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    check-cast v0, [Landroid/text/method/Touch$DragState;

    .line 288
    .line 289
    move v1, v3

    .line 290
    :goto_5
    array-length v4, v0

    .line 291
    if-ge v1, v4, :cond_d

    .line 292
    .line 293
    aget-object v4, v0, v1

    .line 294
    .line 295
    invoke-interface {p1, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    add-int/lit8 v1, v1, 0x1

    .line 299
    .line 300
    goto :goto_5

    .line 301
    :cond_d
    new-instance v0, Landroid/text/method/Touch$DragState;

    .line 302
    .line 303
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 308
    .line 309
    .line 310
    move-result p2

    .line 311
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 316
    .line 317
    .line 318
    move-result p0

    .line 319
    invoke-direct {v0, v1, p2, v4, p0}, Landroid/text/method/Touch$DragState;-><init>(FFII)V

    .line 320
    .line 321
    .line 322
    const/16 p0, 0x11

    .line 323
    .line 324
    invoke-interface {p1, v0, v3, v3, p0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 325
    .line 326
    .line 327
    return v2
.end method

.method public static scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sub-int/2addr v0, v1

    .line 15
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x0

    .line 28
    if-lez v3, :cond_0

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v3, v4

    .line 33
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    add-int/2addr v6, v5

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    add-int/2addr v5, p3

    .line 53
    sub-int/2addr v5, v6

    .line 54
    invoke-virtual {p1, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    const v6, 0x7fffffff

    .line 59
    .line 60
    .line 61
    move v8, v6

    .line 62
    move v6, v4

    .line 63
    move v4, v8

    .line 64
    :goto_1
    if-gt v1, v5, :cond_2

    .line 65
    .line 66
    int-to-float v4, v4

    .line 67
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineLeft(I)F

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    float-to-int v4, v4

    .line 76
    int-to-float v6, v6

    .line 77
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineRight(I)F

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    float-to-int v6, v6

    .line 86
    add-int/lit8 v1, v1, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    move v6, v0

    .line 90
    :cond_2
    sub-int p1, v6, v4

    .line 91
    .line 92
    if-ge p1, v0, :cond_7

    .line 93
    .line 94
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 95
    .line 96
    if-ne v2, p2, :cond_3

    .line 97
    .line 98
    sub-int/2addr v0, p1

    .line 99
    div-int/lit8 v0, v0, 0x2

    .line 100
    .line 101
    :goto_2
    sub-int/2addr v4, v0

    .line 102
    goto :goto_3

    .line 103
    :cond_3
    if-eqz v3, :cond_4

    .line 104
    .line 105
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 106
    .line 107
    if-eq v2, p2, :cond_6

    .line 108
    .line 109
    :cond_4
    if-nez v3, :cond_5

    .line 110
    .line 111
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 112
    .line 113
    if-eq v2, p2, :cond_6

    .line 114
    .line 115
    :cond_5
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 116
    .line 117
    if-ne v2, p2, :cond_8

    .line 118
    .line 119
    :cond_6
    sub-int/2addr v0, p1

    .line 120
    goto :goto_2

    .line 121
    :cond_7
    sub-int/2addr v6, v0

    .line 122
    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    :cond_8
    :goto_3
    invoke-virtual {p0, v4, p3}, Landroid/view/View;->scrollTo(II)V

    .line 131
    .line 132
    .line 133
    return-void
.end method
