.class Landroid/widget/AbsListView$PositionScroller;
.super Landroid/widget/AbsListView$AbsPositionScroller;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PositionScroller"
.end annotation


# static fields
.field private static final MOVE_DOWN_BOUND:I = 0x3

.field private static final MOVE_DOWN_POS:I = 0x1

.field private static final MOVE_OFFSET:I = 0x5

.field private static final MOVE_UP_BOUND:I = 0x4

.field private static final MOVE_UP_POS:I = 0x2

.field private static final SCROLL_DURATION:I = 0xc8


# instance fields
.field private mBoundPos:I

.field private final mExtraScroll:I

.field private mLastSeenPos:I

.field private mMode:I

.field private mOffsetFromTop:I

.field private mScrollDuration:I

.field private mTargetPos:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/AbsListView$AbsPositionScroller;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/widget/AbsListView;->access$4700(Landroid/widget/AbsListView;)Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    .line 19
    .line 20
    return-void
.end method

.method private scrollToVisible(III)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 2
    .line 3
    iget v1, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/2addr v0, v1

    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 13
    .line 14
    iget-object v3, v2, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 15
    .line 16
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object v4, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 23
    .line 24
    iget-object v4, v4, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 25
    .line 26
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 27
    .line 28
    sub-int/2addr v2, v4

    .line 29
    if-lt p1, v1, :cond_0

    .line 30
    .line 31
    if-le p1, v0, :cond_1

    .line 32
    .line 33
    :cond_0
    const-string v4, "scrollToVisible called with targetPos "

    .line 34
    .line 35
    const-string v5, " not visible ["

    .line 36
    .line 37
    const-string v6, ", "

    .line 38
    .line 39
    invoke-static {v4, p1, v5, v1, v6}, Landroid/accessibilityservice/c;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v5, "]"

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const-string v5, "AbsListView"

    .line 56
    .line 57
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_1
    if-lt p2, v1, :cond_2

    .line 61
    .line 62
    if-le p2, v0, :cond_3

    .line 63
    .line 64
    :cond_2
    const/4 p2, -0x1

    .line 65
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 66
    .line 67
    sub-int/2addr p1, v1

    .line 68
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    const/4 v4, 0x0

    .line 81
    if-le p1, v2, :cond_4

    .line 82
    .line 83
    sub-int/2addr p1, v2

    .line 84
    goto :goto_0

    .line 85
    :cond_4
    move p1, v4

    .line 86
    :goto_0
    if-ge v0, v3, :cond_5

    .line 87
    .line 88
    sub-int p1, v0, v3

    .line 89
    .line 90
    :cond_5
    if-nez p1, :cond_6

    .line 91
    .line 92
    return-void

    .line 93
    :cond_6
    if-ltz p2, :cond_8

    .line 94
    .line 95
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 96
    .line 97
    sub-int/2addr p2, v1

    .line 98
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-gez p1, :cond_7

    .line 115
    .line 116
    add-int v5, p2, v1

    .line 117
    .line 118
    if-le v5, v2, :cond_7

    .line 119
    .line 120
    sub-int/2addr p2, v2

    .line 121
    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    goto :goto_1

    .line 126
    :cond_7
    if-lez p1, :cond_8

    .line 127
    .line 128
    sub-int p2, v0, v1

    .line 129
    .line 130
    if-ge p2, v3, :cond_8

    .line 131
    .line 132
    sub-int/2addr v0, v3

    .line 133
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    :cond_8
    :goto_1
    iget-object p2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 138
    .line 139
    invoke-virtual {p2, p1, p3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 140
    .line 141
    .line 142
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 8
    .line 9
    iget v2, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 10
    .line 11
    iget v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x1

    .line 15
    if-eq v3, v5, :cond_18

    .line 16
    .line 17
    const/4 v6, 0x2

    .line 18
    if-eq v3, v6, :cond_13

    .line 19
    .line 20
    const/4 v7, 0x3

    .line 21
    if-eq v3, v7, :cond_d

    .line 22
    .line 23
    const/4 v7, 0x4

    .line 24
    if-eq v3, v7, :cond_8

    .line 25
    .line 26
    const/4 v0, 0x5

    .line 27
    if-eq v3, v0, :cond_0

    .line 28
    .line 29
    goto/16 :goto_6

    .line 30
    .line 31
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 32
    .line 33
    if-ne v0, v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {v1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    iput v2, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget v1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 46
    .line 47
    add-int v3, v2, v0

    .line 48
    .line 49
    sub-int/2addr v3, v5

    .line 50
    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 51
    .line 52
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    iget-object v8, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 61
    .line 62
    add-int/lit8 v9, v0, -0x1

    .line 63
    .line 64
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    int-to-float v10, v7

    .line 73
    const/4 v11, 0x0

    .line 74
    cmpl-float v12, v10, v11

    .line 75
    .line 76
    const/high16 v13, 0x3f800000    # 1.0f

    .line 77
    .line 78
    if-nez v12, :cond_2

    .line 79
    .line 80
    move v6, v13

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    add-int/2addr v6, v7

    .line 87
    int-to-float v6, v6

    .line 88
    div-float/2addr v6, v10

    .line 89
    :goto_0
    int-to-float v7, v9

    .line 90
    cmpl-float v10, v7, v11

    .line 91
    .line 92
    if-nez v10, :cond_3

    .line 93
    .line 94
    move v8, v13

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    iget-object v10, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 97
    .line 98
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    add-int/2addr v10, v9

    .line 103
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    sub-int/2addr v10, v8

    .line 108
    int-to-float v8, v10

    .line 109
    div-float/2addr v8, v7

    .line 110
    :goto_1
    if-ge v1, v2, :cond_4

    .line 111
    .line 112
    sub-int v7, v2, v1

    .line 113
    .line 114
    int-to-float v7, v7

    .line 115
    sub-float v6, v13, v6

    .line 116
    .line 117
    add-float/2addr v6, v7

    .line 118
    add-float v11, v6, v13

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_4
    if-le v1, v3, :cond_5

    .line 122
    .line 123
    sub-int v6, v1, v3

    .line 124
    .line 125
    int-to-float v6, v6

    .line 126
    sub-float v7, v13, v8

    .line 127
    .line 128
    add-float v11, v7, v6

    .line 129
    .line 130
    :cond_5
    :goto_2
    int-to-float v0, v0

    .line 131
    div-float/2addr v11, v0

    .line 132
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    invoke-static {v0, v13}, Ljava/lang/Math;->min(FF)F

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-ge v1, v2, :cond_6

    .line 141
    .line 142
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 143
    .line 144
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    neg-int v1, v1

    .line 149
    int-to-float v1, v1

    .line 150
    mul-float/2addr v1, v0

    .line 151
    float-to-int v1, v1

    .line 152
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 153
    .line 154
    int-to-float v2, v2

    .line 155
    mul-float/2addr v2, v0

    .line 156
    float-to-int v0, v2

    .line 157
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 158
    .line 159
    invoke-virtual {v2, v1, v0, v5, v5}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 163
    .line 164
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_6

    .line 168
    .line 169
    :cond_6
    if-le v1, v3, :cond_7

    .line 170
    .line 171
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 172
    .line 173
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    int-to-float v1, v1

    .line 178
    mul-float/2addr v1, v0

    .line 179
    float-to-int v1, v1

    .line 180
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 181
    .line 182
    int-to-float v2, v2

    .line 183
    mul-float/2addr v2, v0

    .line 184
    float-to-int v0, v2

    .line 185
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 186
    .line 187
    invoke-virtual {v2, v1, v0, v5, v5}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 191
    .line 192
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_6

    .line 196
    .line 197
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 198
    .line 199
    sub-int/2addr v1, v2

    .line 200
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    iget v1, p0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    .line 209
    .line 210
    sub-int/2addr v0, v1

    .line 211
    iget v1, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 212
    .line 213
    int-to-float v1, v1

    .line 214
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    int-to-float v2, v2

    .line 219
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 220
    .line 221
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    int-to-float v3, v3

    .line 226
    div-float/2addr v2, v3

    .line 227
    mul-float/2addr v2, v1

    .line 228
    float-to-int v1, v2

    .line 229
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 230
    .line 231
    invoke-virtual {v2, v0, v1, v5, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_6

    .line 235
    .line 236
    :cond_8
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    sub-int/2addr v1, v6

    .line 241
    if-gez v1, :cond_9

    .line 242
    .line 243
    return-void

    .line 244
    :cond_9
    add-int/2addr v2, v1

    .line 245
    iget v3, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 246
    .line 247
    if-ne v2, v3, :cond_a

    .line 248
    .line 249
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 250
    .line 251
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 252
    .line 253
    .line 254
    return-void

    .line 255
    :cond_a
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 256
    .line 257
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    sub-int v6, v0, v1

    .line 270
    .line 271
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 272
    .line 273
    iget-object v7, v7, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 274
    .line 275
    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 276
    .line 277
    iget v8, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    .line 278
    .line 279
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 280
    .line 281
    .line 282
    move-result v7

    .line 283
    iput v2, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 284
    .line 285
    iget v8, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 286
    .line 287
    if-le v2, v8, :cond_b

    .line 288
    .line 289
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 290
    .line 291
    sub-int/2addr v6, v7

    .line 292
    neg-int v1, v6

    .line 293
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 294
    .line 295
    invoke-virtual {v0, v1, v2, v5, v5}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 296
    .line 297
    .line 298
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 299
    .line 300
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 301
    .line 302
    .line 303
    goto/16 :goto_6

    .line 304
    .line 305
    :cond_b
    sub-int/2addr v0, v7

    .line 306
    add-int/2addr v1, v3

    .line 307
    if-le v0, v1, :cond_c

    .line 308
    .line 309
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 310
    .line 311
    sub-int/2addr v0, v1

    .line 312
    neg-int v0, v0

    .line 313
    iget v1, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 314
    .line 315
    invoke-virtual {v2, v0, v1, v5, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 316
    .line 317
    .line 318
    goto/16 :goto_6

    .line 319
    .line 320
    :cond_c
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 321
    .line 322
    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 323
    .line 324
    .line 325
    goto/16 :goto_6

    .line 326
    .line 327
    :cond_d
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    iget v1, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 332
    .line 333
    if-eq v2, v1, :cond_12

    .line 334
    .line 335
    if-le v0, v5, :cond_12

    .line 336
    .line 337
    add-int/2addr v0, v2

    .line 338
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 339
    .line 340
    iget v3, v1, Landroid/widget/AdapterView;->mItemCount:I

    .line 341
    .line 342
    if-lt v0, v3, :cond_e

    .line 343
    .line 344
    goto :goto_3

    .line 345
    :cond_e
    add-int/2addr v2, v5

    .line 346
    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 347
    .line 348
    if-ne v2, v0, :cond_f

    .line 349
    .line 350
    invoke-virtual {v1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 351
    .line 352
    .line 353
    return-void

    .line 354
    :cond_f
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 367
    .line 368
    iget-object v3, v3, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 369
    .line 370
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 371
    .line 372
    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    .line 373
    .line 374
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 375
    .line 376
    .line 377
    move-result v3

    .line 378
    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 379
    .line 380
    if-ge v2, v6, :cond_10

    .line 381
    .line 382
    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 383
    .line 384
    add-int/2addr v1, v0

    .line 385
    sub-int/2addr v1, v3

    .line 386
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 387
    .line 388
    .line 389
    move-result v0

    .line 390
    iget v1, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 391
    .line 392
    invoke-virtual {v6, v0, v1, v5, v5}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 393
    .line 394
    .line 395
    iput v2, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 396
    .line 397
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 398
    .line 399
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 400
    .line 401
    .line 402
    goto/16 :goto_6

    .line 403
    .line 404
    :cond_10
    if-le v0, v3, :cond_11

    .line 405
    .line 406
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 407
    .line 408
    sub-int/2addr v0, v3

    .line 409
    iget v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 410
    .line 411
    invoke-virtual {v1, v0, v2, v5, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 412
    .line 413
    .line 414
    goto/16 :goto_6

    .line 415
    .line 416
    :cond_11
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 417
    .line 418
    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 419
    .line 420
    .line 421
    goto/16 :goto_6

    .line 422
    .line 423
    :cond_12
    :goto_3
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 424
    .line 425
    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 426
    .line 427
    .line 428
    return-void

    .line 429
    :cond_13
    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 430
    .line 431
    if-ne v2, v0, :cond_14

    .line 432
    .line 433
    invoke-virtual {v1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 434
    .line 435
    .line 436
    return-void

    .line 437
    :cond_14
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    if-nez v0, :cond_15

    .line 442
    .line 443
    return-void

    .line 444
    :cond_15
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    if-lez v2, :cond_16

    .line 449
    .line 450
    iget v1, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    .line 451
    .line 452
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 453
    .line 454
    iget-object v3, v3, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 455
    .line 456
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 457
    .line 458
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 459
    .line 460
    .line 461
    move-result v1

    .line 462
    goto :goto_4

    .line 463
    :cond_16
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 464
    .line 465
    iget-object v1, v1, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 466
    .line 467
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 468
    .line 469
    :goto_4
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 470
    .line 471
    sub-int/2addr v0, v1

    .line 472
    iget v1, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 473
    .line 474
    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 475
    .line 476
    if-le v2, v6, :cond_17

    .line 477
    .line 478
    move v4, v5

    .line 479
    :cond_17
    invoke-virtual {v3, v0, v1, v5, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 480
    .line 481
    .line 482
    iput v2, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 483
    .line 484
    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 485
    .line 486
    if-le v2, v0, :cond_1d

    .line 487
    .line 488
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 489
    .line 490
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 491
    .line 492
    .line 493
    goto :goto_6

    .line 494
    :cond_18
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 495
    .line 496
    .line 497
    move-result v1

    .line 498
    sub-int/2addr v1, v5

    .line 499
    add-int/2addr v2, v1

    .line 500
    if-gez v1, :cond_19

    .line 501
    .line 502
    return-void

    .line 503
    :cond_19
    iget v3, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 504
    .line 505
    if-ne v2, v3, :cond_1a

    .line 506
    .line 507
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 508
    .line 509
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 510
    .line 511
    .line 512
    return-void

    .line 513
    :cond_1a
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 514
    .line 515
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 520
    .line 521
    .line 522
    move-result v3

    .line 523
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 524
    .line 525
    .line 526
    move-result v1

    .line 527
    sub-int/2addr v0, v1

    .line 528
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 529
    .line 530
    iget v6, v1, Landroid/widget/AdapterView;->mItemCount:I

    .line 531
    .line 532
    sub-int/2addr v6, v5

    .line 533
    if-ge v2, v6, :cond_1b

    .line 534
    .line 535
    iget-object v1, v1, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 536
    .line 537
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 538
    .line 539
    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    .line 540
    .line 541
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 542
    .line 543
    .line 544
    move-result v1

    .line 545
    goto :goto_5

    .line 546
    :cond_1b
    iget-object v1, v1, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 547
    .line 548
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 549
    .line 550
    :goto_5
    sub-int/2addr v3, v0

    .line 551
    add-int/2addr v3, v1

    .line 552
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 553
    .line 554
    iget v1, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 555
    .line 556
    iget v6, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 557
    .line 558
    if-ge v2, v6, :cond_1c

    .line 559
    .line 560
    move v4, v5

    .line 561
    :cond_1c
    invoke-virtual {v0, v3, v1, v5, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 562
    .line 563
    .line 564
    iput v2, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 565
    .line 566
    iget v0, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 567
    .line 568
    if-ge v2, v0, :cond_1d

    .line 569
    .line 570
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    .line 571
    .line 572
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 573
    .line 574
    .line 575
    :cond_1d
    :goto_6
    return-void
.end method

.method public start(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v1, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Landroid/widget/AbsListView$PositionScroller$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/AbsListView$PositionScroller$1;-><init>(Landroid/widget/AbsListView$PositionScroller;I)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v0, v2

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .line 6
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v1, 0xc8

    const/4 v4, -0x1

    if-ge p1, v2, :cond_2

    sub-int/2addr v2, p1

    add-int/2addr v2, v3

    const/4 v0, 0x2

    .line 7
    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_0

    :cond_2
    if-le p1, v0, :cond_4

    sub-int v0, p1, v0

    add-int/lit8 v2, v0, 0x1

    .line 8
    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    :goto_0
    if-lez v2, :cond_3

    .line 9
    div-int/2addr v1, v2

    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_1

    .line 10
    :cond_3
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 11
    :goto_1
    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 12
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 13
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 14
    iget-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 15
    :cond_4
    invoke-direct {p0, p1, v4, v1}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    return-void
.end method

.method public start(II)V
    .locals 5

    .line 16
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    return-void

    .line 18
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v1, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v2, :cond_1

    .line 19
    new-instance v0, Landroid/widget/AbsListView$PositionScroller$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/AbsListView$PositionScroller$2;-><init>(Landroid/widget/AbsListView$PositionScroller;II)V

    iput-object v0, v1, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    return-void

    .line 20
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 21
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v3, v2, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v1, v3

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    .line 22
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v2, 0xc8

    if-ge p1, v3, :cond_5

    sub-int/2addr v1, p2

    if-ge v1, v4, :cond_3

    return-void

    :cond_3
    sub-int/2addr v3, p1

    add-int/2addr v3, v4

    sub-int/2addr v1, v4

    if-ge v1, v3, :cond_4

    const/4 v3, 0x4

    .line 23
    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    :goto_0
    move v3, v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    .line 24
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_1

    :cond_5
    if-le p1, v1, :cond_9

    sub-int v3, p2, v3

    if-ge v3, v4, :cond_6

    return-void

    :cond_6
    sub-int v1, p1, v1

    add-int/2addr v1, v4

    sub-int/2addr v3, v4

    if-ge v3, v1, :cond_7

    const/4 v1, 0x3

    .line 25
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_1

    .line 26
    :cond_7
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_0

    :goto_1
    if-lez v3, :cond_8

    .line 27
    div-int/2addr v2, v3

    iput v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_2

    .line 28
    :cond_8
    iput v2, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 29
    :goto_2
    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 30
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 31
    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 32
    iget-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 33
    :cond_9
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    return-void
.end method

.method public startWithOffset(II)V
    .locals 1

    const/16 v0, 0xc8

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(III)V

    return-void
.end method

.method public startWithOffset(III)V
    .locals 7

    .line 2
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 3
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v1, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Landroid/widget/AbsListView$PositionScroller$3;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/widget/AbsListView$PositionScroller$3;-><init>(Landroid/widget/AbsListView$PositionScroller;III)V

    iput-object v1, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, p2

    .line 7
    iget-object p2, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {p2}, Landroid/widget/AdapterView;->getCount()I

    move-result p2

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 8
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    const/4 v3, -0x1

    .line 9
    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 10
    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    const/4 v4, 0x5

    .line 11
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 12
    iget-object v4, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v5, v4, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v6, v5, v0

    sub-int/2addr v6, v2

    if-ge p1, v5, :cond_2

    sub-int/2addr v5, p1

    goto :goto_0

    :cond_2
    if-le p1, v6, :cond_4

    sub-int v5, p1, v6

    :goto_0
    int-to-float p1, v5

    int-to-float p2, v0

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_3

    goto :goto_1

    :cond_3
    int-to-float p2, p3

    div-float/2addr p2, p1

    float-to-int p3, p2

    .line 13
    :goto_1
    iput p3, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 14
    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 15
    invoke-virtual {v4, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    sub-int/2addr p1, v5

    .line 16
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    .line 17
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1, p3, v2, p2}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
