.class Landroid/inputmethodservice/KeyboardView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/KeyboardView;->initGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/KeyboardView;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/KeyboardView;)V
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/inputmethodservice/KeyboardView;->access$500(Landroid/inputmethodservice/KeyboardView;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    sub-float/2addr v3, v4

    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    sub-float/2addr p2, v4

    .line 37
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    div-int/lit8 v4, v4, 0x2

    .line 44
    .line 45
    iget-object v5, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    .line 46
    .line 47
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    div-int/lit8 v5, v5, 0x2

    .line 52
    .line 53
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    .line 54
    .line 55
    invoke-static {v6}, Landroid/inputmethodservice/KeyboardView;->access$600(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    const/16 v7, 0x3e8

    .line 60
    .line 61
    invoke-virtual {v6, v7}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->computeCurrentVelocity(I)V

    .line 62
    .line 63
    .line 64
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    .line 65
    .line 66
    invoke-static {v6}, Landroid/inputmethodservice/KeyboardView;->access$600(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v6}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->getXVelocity()F

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    .line 75
    .line 76
    invoke-static {v7}, Landroid/inputmethodservice/KeyboardView;->access$600(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-virtual {v7}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->getYVelocity()F

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    .line 85
    .line 86
    invoke-static {v8}, Landroid/inputmethodservice/KeyboardView;->access$700(Landroid/inputmethodservice/KeyboardView;)I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    int-to-float v8, v8

    .line 91
    cmpl-float v8, p3, v8

    .line 92
    .line 93
    const/high16 v9, 0x40800000    # 4.0f

    .line 94
    .line 95
    const/4 v10, 0x1

    .line 96
    if-lez v8, :cond_2

    .line 97
    .line 98
    cmpg-float v8, v2, v0

    .line 99
    .line 100
    if-gez v8, :cond_2

    .line 101
    .line 102
    int-to-float v8, v4

    .line 103
    cmpl-float v8, v3, v8

    .line 104
    .line 105
    if-lez v8, :cond_2

    .line 106
    .line 107
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    .line 108
    .line 109
    invoke-static {p2}, Landroid/inputmethodservice/KeyboardView;->access$800(Landroid/inputmethodservice/KeyboardView;)Z

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-eqz p2, :cond_1

    .line 114
    .line 115
    div-float/2addr p3, v9

    .line 116
    cmpg-float p2, v6, p3

    .line 117
    .line 118
    if-gez p2, :cond_1

    .line 119
    .line 120
    goto/16 :goto_0

    .line 121
    .line 122
    :cond_1
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/inputmethodservice/KeyboardView;->swipeRight()V

    .line 125
    .line 126
    .line 127
    return v10

    .line 128
    :cond_2
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    .line 129
    .line 130
    invoke-static {v8}, Landroid/inputmethodservice/KeyboardView;->access$700(Landroid/inputmethodservice/KeyboardView;)I

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    neg-int v8, v8

    .line 135
    int-to-float v8, v8

    .line 136
    cmpg-float v8, p3, v8

    .line 137
    .line 138
    if-gez v8, :cond_4

    .line 139
    .line 140
    cmpg-float v8, v2, v0

    .line 141
    .line 142
    if-gez v8, :cond_4

    .line 143
    .line 144
    neg-int v4, v4

    .line 145
    int-to-float v4, v4

    .line 146
    cmpg-float v3, v3, v4

    .line 147
    .line 148
    if-gez v3, :cond_4

    .line 149
    .line 150
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    .line 151
    .line 152
    invoke-static {p2}, Landroid/inputmethodservice/KeyboardView;->access$800(Landroid/inputmethodservice/KeyboardView;)Z

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    if-eqz p2, :cond_3

    .line 157
    .line 158
    div-float/2addr p3, v9

    .line 159
    cmpl-float p2, v6, p3

    .line 160
    .line 161
    if-lez p2, :cond_3

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_3
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    .line 165
    .line 166
    invoke-virtual {p1}, Landroid/inputmethodservice/KeyboardView;->swipeLeft()V

    .line 167
    .line 168
    .line 169
    return v10

    .line 170
    :cond_4
    iget-object p3, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    .line 171
    .line 172
    invoke-static {p3}, Landroid/inputmethodservice/KeyboardView;->access$700(Landroid/inputmethodservice/KeyboardView;)I

    .line 173
    .line 174
    .line 175
    move-result p3

    .line 176
    neg-int p3, p3

    .line 177
    int-to-float p3, p3

    .line 178
    cmpg-float p3, p4, p3

    .line 179
    .line 180
    if-gez p3, :cond_6

    .line 181
    .line 182
    cmpg-float p3, v0, v2

    .line 183
    .line 184
    if-gez p3, :cond_6

    .line 185
    .line 186
    neg-int p3, v5

    .line 187
    int-to-float p3, p3

    .line 188
    cmpg-float p3, p2, p3

    .line 189
    .line 190
    if-gez p3, :cond_6

    .line 191
    .line 192
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    .line 193
    .line 194
    invoke-static {p2}, Landroid/inputmethodservice/KeyboardView;->access$800(Landroid/inputmethodservice/KeyboardView;)Z

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    if-eqz p2, :cond_5

    .line 199
    .line 200
    div-float/2addr p4, v9

    .line 201
    cmpl-float p2, v7, p4

    .line 202
    .line 203
    if-lez p2, :cond_5

    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_5
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    .line 207
    .line 208
    invoke-virtual {p1}, Landroid/inputmethodservice/KeyboardView;->swipeUp()V

    .line 209
    .line 210
    .line 211
    return v10

    .line 212
    :cond_6
    iget-object p3, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    .line 213
    .line 214
    invoke-static {p3}, Landroid/inputmethodservice/KeyboardView;->access$700(Landroid/inputmethodservice/KeyboardView;)I

    .line 215
    .line 216
    .line 217
    move-result p3

    .line 218
    int-to-float p3, p3

    .line 219
    cmpl-float p3, p4, p3

    .line 220
    .line 221
    if-lez p3, :cond_8

    .line 222
    .line 223
    const/high16 p3, 0x40000000    # 2.0f

    .line 224
    .line 225
    div-float/2addr v2, p3

    .line 226
    cmpg-float p3, v0, v2

    .line 227
    .line 228
    if-gez p3, :cond_8

    .line 229
    .line 230
    int-to-float p3, v5

    .line 231
    cmpl-float p2, p2, p3

    .line 232
    .line 233
    if-lez p2, :cond_8

    .line 234
    .line 235
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    .line 236
    .line 237
    invoke-static {p2}, Landroid/inputmethodservice/KeyboardView;->access$800(Landroid/inputmethodservice/KeyboardView;)Z

    .line 238
    .line 239
    .line 240
    move-result p2

    .line 241
    if-eqz p2, :cond_7

    .line 242
    .line 243
    div-float/2addr p4, v9

    .line 244
    cmpg-float p2, v7, p4

    .line 245
    .line 246
    if-gez p2, :cond_7

    .line 247
    .line 248
    goto :goto_0

    .line 249
    :cond_7
    iget-object p1, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    .line 250
    .line 251
    invoke-virtual {p1}, Landroid/inputmethodservice/KeyboardView;->swipeDown()V

    .line 252
    .line 253
    .line 254
    return v10

    .line 255
    :cond_8
    move v10, v1

    .line 256
    :goto_0
    if-eqz v10, :cond_9

    .line 257
    .line 258
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    .line 259
    .line 260
    invoke-static {v2}, Landroid/inputmethodservice/KeyboardView;->access$900(Landroid/inputmethodservice/KeyboardView;)I

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    .line 265
    .line 266
    invoke-static {p2}, Landroid/inputmethodservice/KeyboardView;->access$1000(Landroid/inputmethodservice/KeyboardView;)I

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    iget-object p2, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    .line 271
    .line 272
    invoke-static {p2}, Landroid/inputmethodservice/KeyboardView;->access$1100(Landroid/inputmethodservice/KeyboardView;)I

    .line 273
    .line 274
    .line 275
    move-result v5

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 277
    .line 278
    .line 279
    move-result-wide v6

    .line 280
    invoke-static/range {v2 .. v7}, Landroid/inputmethodservice/KeyboardView;->access$1200(Landroid/inputmethodservice/KeyboardView;IIIJ)V

    .line 281
    .line 282
    .line 283
    :cond_9
    return v1
.end method
