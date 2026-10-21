.class final Landroid/widget/Editor$CursorAnchorInfoNotifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CursorAnchorInfoNotifier"
.end annotation


# instance fields
.field final mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field final mTmpIntOffset:[I

.field final mViewToScreenMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 3
    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    .line 4
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Landroid/widget/Editor$CursorAnchorInfoNotifier;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method public updatePosition(IIZZ)V
    .locals 10

    .line 1
    iget-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    .line 2
    .line 3
    iget-object p1, p1, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 4
    .line 5
    if-eqz p1, :cond_e

    .line 6
    .line 7
    iget p1, p1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 8
    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object p2, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    .line 21
    .line 22
    invoke-static {p2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_2

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isCursorAnchorInfoEnabled()Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-nez p2, :cond_3

    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    iget-object p2, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    .line 41
    .line 42
    invoke-static {p2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    if-nez p2, :cond_4

    .line 51
    .line 52
    return-void

    .line 53
    :cond_4
    iget-object p3, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 54
    .line 55
    invoke-virtual {p3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    .line 56
    .line 57
    .line 58
    iget-object p4, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    .line 59
    .line 60
    invoke-static {p4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 61
    .line 62
    .line 63
    move-result-object p4

    .line 64
    invoke-virtual {p4}, Landroid/widget/TextView;->getSelectionStart()I

    .line 65
    .line 66
    .line 67
    move-result p4

    .line 68
    iget-object v0, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    .line 69
    .line 70
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-virtual {p3, p4, v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    .line 82
    .line 83
    iget-object v1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    .line 84
    .line 85
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    .line 97
    .line 98
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    .line 108
    .line 109
    iget-object v1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    .line 110
    .line 111
    const/4 v6, 0x0

    .line 112
    aget v2, v1, v6

    .line 113
    .line 114
    int-to-float v2, v2

    .line 115
    const/4 v7, 0x1

    .line 116
    aget v1, v1, v7

    .line 117
    .line 118
    int-to-float v1, v1

    .line 119
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    .line 123
    .line 124
    invoke-virtual {p3, v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    .line 128
    .line 129
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    int-to-float v8, v0

    .line 138
    iget-object v0, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    .line 139
    .line 140
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    int-to-float v9, v0

    .line 149
    iget-object v0, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    .line 150
    .line 151
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    instance-of v1, v0, Landroid/text/Spannable;

    .line 160
    .line 161
    if-eqz v1, :cond_7

    .line 162
    .line 163
    move-object v1, v0

    .line 164
    check-cast v1, Landroid/text/Spannable;

    .line 165
    .line 166
    invoke-static {v1}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    invoke-static {v1}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-ge v1, v2, :cond_5

    .line 175
    .line 176
    move v3, v2

    .line 177
    move v2, v1

    .line 178
    goto :goto_0

    .line 179
    :cond_5
    move v3, v1

    .line 180
    :goto_0
    if-ltz v2, :cond_6

    .line 181
    .line 182
    if-ge v2, v3, :cond_6

    .line 183
    .line 184
    move v1, v7

    .line 185
    goto :goto_1

    .line 186
    :cond_6
    move v1, v6

    .line 187
    :goto_1
    if-eqz v1, :cond_7

    .line 188
    .line 189
    invoke-interface {v0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {p3, v2, v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    .line 197
    .line 198
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    move-object v1, p3

    .line 203
    move v4, v8

    .line 204
    move v5, v9

    .line 205
    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->populateCharacterBounds(Landroid/view/inputmethod/CursorAnchorInfo$Builder;IIFF)V

    .line 206
    .line 207
    .line 208
    :cond_7
    if-ltz p4, :cond_d

    .line 209
    .line 210
    invoke-virtual {p2, p4}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    invoke-virtual {p2, p4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    add-float/2addr v1, v8

    .line 219
    invoke-virtual {p2, v0}, Landroid/text/Layout;->getLineTop(I)I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    int-to-float v2, v2

    .line 224
    add-float/2addr v2, v9

    .line 225
    invoke-virtual {p2, v0}, Landroid/text/Layout;->getLineBaseline(I)I

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    int-to-float v3, v3

    .line 230
    add-float/2addr v3, v9

    .line 231
    invoke-virtual {p2, v0}, Landroid/text/Layout;->getLineBottom(I)I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    int-to-float v0, v0

    .line 236
    add-float v4, v0, v9

    .line 237
    .line 238
    iget-object v0, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    .line 239
    .line 240
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    iget-object v5, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    .line 249
    .line 250
    invoke-static {v5}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    invoke-virtual {v5, v1, v4}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    if-nez v0, :cond_8

    .line 259
    .line 260
    if-eqz v5, :cond_9

    .line 261
    .line 262
    :cond_8
    move v6, v7

    .line 263
    :cond_9
    if-eqz v0, :cond_a

    .line 264
    .line 265
    if-nez v5, :cond_b

    .line 266
    .line 267
    :cond_a
    or-int/lit8 v6, v6, 0x2

    .line 268
    .line 269
    :cond_b
    invoke-virtual {p2, p4}, Landroid/text/Layout;->isRtlCharAt(I)Z

    .line 270
    .line 271
    .line 272
    move-result p2

    .line 273
    if-eqz p2, :cond_c

    .line 274
    .line 275
    or-int/lit8 p2, v6, 0x4

    .line 276
    .line 277
    move v5, p2

    .line 278
    goto :goto_2

    .line 279
    :cond_c
    move v5, v6

    .line 280
    :goto_2
    move-object v0, p3

    .line 281
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 282
    .line 283
    .line 284
    :cond_d
    iget-object p2, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    .line 285
    .line 286
    invoke-static {p2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 287
    .line 288
    .line 289
    move-result-object p2

    .line 290
    invoke-virtual {p3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    .line 291
    .line 292
    .line 293
    move-result-object p3

    .line 294
    invoke-virtual {p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 295
    .line 296
    .line 297
    :cond_e
    :goto_3
    return-void
.end method
