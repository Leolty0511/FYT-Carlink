.class public Landroid/widget/GridView;
.super Landroid/widget/AbsListView;
.source "SourceFile"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/GridView$StretchMode;
    }
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010071

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroid/widget/GridView;->mNumColumns:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 7
    iput v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    const/4 v2, 0x2

    .line 8
    iput v2, p0, Landroid/widget/GridView;->mStretchMode:I

    const/4 v3, 0x0

    .line 9
    iput-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 10
    iput-object v3, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    const v3, 0x800003

    .line 11
    iput v3, p0, Landroid/widget/GridView;->mGravity:I

    .line 12
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 13
    sget-object v3, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 14
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    .line 15
    invoke-virtual {p0, p3}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 16
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    .line 17
    invoke-virtual {p0, p3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    const/4 p3, 0x3

    .line 18
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-ltz p3, :cond_0

    .line 19
    invoke-virtual {p0, p3}, Landroid/widget/GridView;->setStretchMode(I)V

    :cond_0
    const/4 p3, 0x4

    .line 20
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    if-lez p3, :cond_1

    .line 21
    invoke-virtual {p0, p3}, Landroid/widget/GridView;->setColumnWidth(I)V

    :cond_1
    const/4 p3, 0x5

    .line 22
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 23
    invoke-virtual {p0, p2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 24
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_2

    .line 25
    invoke-virtual {p0, p2}, Landroid/widget/GridView;->setGravity(I)V

    .line 26
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-le v0, p3, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sub-int/2addr v0, p2

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    sub-int/2addr p1, p3

    .line 17
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    neg-int p1, p1

    .line 22
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ge v0, p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sub-int/2addr p2, v0

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    sub-int/2addr p3, p1

    .line 17
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_5

    .line 6
    .line 7
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 21
    .line 22
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 23
    .line 24
    sub-int/2addr v0, v1

    .line 25
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 30
    .line 31
    sub-int/2addr v0, v1

    .line 32
    :cond_0
    if-gez v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v2, v0

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    add-int/lit8 v1, v0, -0x1

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 52
    .line 53
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 54
    .line 55
    sub-int/2addr v3, v4

    .line 56
    sub-int/2addr v1, v3

    .line 57
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 58
    .line 59
    add-int/2addr v3, v0

    .line 60
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 61
    .line 62
    if-ge v3, v0, :cond_3

    .line 63
    .line 64
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 65
    .line 66
    add-int/2addr v1, v0

    .line 67
    :cond_3
    if-lez v1, :cond_4

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    move v2, v1

    .line 71
    :goto_0
    if-eqz v2, :cond_5

    .line 72
    .line 73
    neg-int v0, v2

    .line 74
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 75
    .line 76
    .line 77
    :cond_5
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x1

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    if-eq v0, v3, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_3

    .line 38
    .line 39
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-nez v4, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-lez v4, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/widget/AbsListView;->keyPressed()V

    .line 52
    .line 53
    .line 54
    move v2, v3

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move v2, v1

    .line 57
    :cond_3
    :goto_0
    const/4 v4, 0x2

    .line 58
    if-nez v2, :cond_10

    .line 59
    .line 60
    if-eq v0, v3, :cond_10

    .line 61
    .line 62
    const/16 v5, 0x3d

    .line 63
    .line 64
    if-eq p1, v5, :cond_e

    .line 65
    .line 66
    const/16 v5, 0x5c

    .line 67
    .line 68
    const/16 v6, 0x21

    .line 69
    .line 70
    if-eq p1, v5, :cond_c

    .line 71
    .line 72
    const/16 v5, 0x5d

    .line 73
    .line 74
    const/16 v7, 0x82

    .line 75
    .line 76
    if-eq p1, v5, :cond_a

    .line 77
    .line 78
    const/16 v5, 0x7a

    .line 79
    .line 80
    if-eq p1, v5, :cond_9

    .line 81
    .line 82
    const/16 v5, 0x7b

    .line 83
    .line 84
    if-eq p1, v5, :cond_8

    .line 85
    .line 86
    packed-switch p1, :pswitch_data_0

    .line 87
    .line 88
    .line 89
    goto/16 :goto_2

    .line 90
    .line 91
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_10

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-nez v2, :cond_5

    .line 102
    .line 103
    const/16 v2, 0x42

    .line 104
    .line 105
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->arrowScroll(I)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_4

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    move v2, v1

    .line 113
    goto/16 :goto_2

    .line 114
    .line 115
    :cond_5
    :goto_1
    move v2, v3

    .line 116
    goto/16 :goto_2

    .line 117
    .line 118
    :pswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_10

    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-nez v2, :cond_5

    .line 129
    .line 130
    const/16 v2, 0x11

    .line 131
    .line 132
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->arrowScroll(I)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_4

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :pswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-eqz v5, :cond_6

    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-nez v2, :cond_5

    .line 150
    .line 151
    invoke-virtual {p0, v7}, Landroid/widget/GridView;->arrowScroll(I)Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_4

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_6
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-eqz v5, :cond_10

    .line 163
    .line 164
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-nez v2, :cond_5

    .line 169
    .line 170
    invoke-virtual {p0, v7}, Landroid/widget/GridView;->fullScroll(I)Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-eqz v2, :cond_4

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :pswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-eqz v5, :cond_7

    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-nez v2, :cond_5

    .line 188
    .line 189
    invoke-virtual {p0, v6}, Landroid/widget/GridView;->arrowScroll(I)Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_4

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_7
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    if-eqz v5, :cond_10

    .line 201
    .line 202
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-nez v2, :cond_5

    .line 207
    .line 208
    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_4

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    if-eqz v5, :cond_10

    .line 220
    .line 221
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-nez v2, :cond_5

    .line 226
    .line 227
    invoke-virtual {p0, v7}, Landroid/widget/GridView;->fullScroll(I)Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-eqz v2, :cond_4

    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    if-eqz v5, :cond_10

    .line 239
    .line 240
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    if-nez v2, :cond_5

    .line 245
    .line 246
    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-eqz v2, :cond_4

    .line 251
    .line 252
    goto/16 :goto_1

    .line 253
    .line 254
    :cond_a
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    if-eqz v5, :cond_b

    .line 259
    .line 260
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    if-nez v2, :cond_5

    .line 265
    .line 266
    invoke-virtual {p0, v7}, Landroid/widget/GridView;->pageScroll(I)Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-eqz v2, :cond_4

    .line 271
    .line 272
    goto/16 :goto_1

    .line 273
    .line 274
    :cond_b
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    if-eqz v5, :cond_10

    .line 279
    .line 280
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-nez v2, :cond_5

    .line 285
    .line 286
    invoke-virtual {p0, v7}, Landroid/widget/GridView;->fullScroll(I)Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-eqz v2, :cond_4

    .line 291
    .line 292
    goto/16 :goto_1

    .line 293
    .line 294
    :cond_c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 295
    .line 296
    .line 297
    move-result v5

    .line 298
    if-eqz v5, :cond_d

    .line 299
    .line 300
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    if-nez v2, :cond_5

    .line 305
    .line 306
    invoke-virtual {p0, v6}, Landroid/widget/GridView;->pageScroll(I)Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-eqz v2, :cond_4

    .line 311
    .line 312
    goto/16 :goto_1

    .line 313
    .line 314
    :cond_d
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    if-eqz v5, :cond_10

    .line 319
    .line 320
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    if-nez v2, :cond_5

    .line 325
    .line 326
    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    if-eqz v2, :cond_4

    .line 331
    .line 332
    goto/16 :goto_1

    .line 333
    .line 334
    :cond_e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 335
    .line 336
    .line 337
    move-result v5

    .line 338
    if-eqz v5, :cond_f

    .line 339
    .line 340
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 341
    .line 342
    .line 343
    move-result v2

    .line 344
    if-nez v2, :cond_5

    .line 345
    .line 346
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->sequenceScroll(I)Z

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    if-eqz v2, :cond_4

    .line 351
    .line 352
    goto/16 :goto_1

    .line 353
    .line 354
    :cond_f
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 355
    .line 356
    .line 357
    move-result v5

    .line 358
    if-eqz v5, :cond_10

    .line 359
    .line 360
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    .line 361
    .line 362
    .line 363
    move-result v2

    .line 364
    if-nez v2, :cond_5

    .line 365
    .line 366
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->sequenceScroll(I)Z

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    if-eqz v2, :cond_4

    .line 371
    .line 372
    goto/16 :goto_1

    .line 373
    .line 374
    :cond_10
    :goto_2
    if-eqz v2, :cond_11

    .line 375
    .line 376
    return v3

    .line 377
    :cond_11
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/AbsListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    if-eqz v2, :cond_12

    .line 382
    .line 383
    return v3

    .line 384
    :cond_12
    if-eqz v0, :cond_15

    .line 385
    .line 386
    if-eq v0, v3, :cond_14

    .line 387
    .line 388
    if-eq v0, v4, :cond_13

    .line 389
    .line 390
    return v1

    .line 391
    :cond_13
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    .line 392
    .line 393
    .line 394
    move-result p1

    .line 395
    return p1

    .line 396
    :cond_14
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 397
    .line 398
    .line 399
    move-result p1

    .line 400
    return p1

    .line 401
    :cond_15
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 402
    .line 403
    .line 404
    move-result p1

    .line 405
    return p1

    .line 406
    nop

    .line 407
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .locals 5

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2
    .line 3
    add-int/2addr v0, p3

    .line 4
    const/4 v1, 0x1

    .line 5
    sub-int/2addr v0, v1

    .line 6
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 7
    .line 8
    sub-int/2addr v2, v1

    .line 9
    if-ne v0, v2, :cond_3

    .line 10
    .line 11
    if-lez p3, :cond_3

    .line 12
    .line 13
    sub-int/2addr p3, v1

    .line 14
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    iget v0, p0, Landroid/view/View;->mBottom:I

    .line 23
    .line 24
    iget v2, p0, Landroid/view/View;->mTop:I

    .line 25
    .line 26
    sub-int/2addr v0, v2

    .line 27
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 28
    .line 29
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 30
    .line 31
    sub-int/2addr v0, v2

    .line 32
    sub-int/2addr v0, p3

    .line 33
    const/4 p3, 0x0

    .line 34
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-lez v0, :cond_3

    .line 43
    .line 44
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 45
    .line 46
    if-gtz v3, :cond_0

    .line 47
    .line 48
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 49
    .line 50
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 51
    .line 52
    if-ge v2, v4, :cond_3

    .line 53
    .line 54
    :cond_0
    if-nez v3, :cond_1

    .line 55
    .line 56
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 57
    .line 58
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 59
    .line 60
    sub-int/2addr v3, v2

    .line 61
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 66
    .line 67
    .line 68
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 69
    .line 70
    if-lez v0, :cond_3

    .line 71
    .line 72
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 73
    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    move p1, v1

    .line 77
    :cond_2
    sub-int/2addr v0, p1

    .line 78
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    sub-int/2addr p1, p2

    .line 83
    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 87
    .line 88
    .line 89
    :cond_3
    return-void
.end method

.method private correctTooLow(III)V
    .locals 7

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    if-lez p3, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 17
    .line 18
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 19
    .line 20
    iget v3, p0, Landroid/view/View;->mBottom:I

    .line 21
    .line 22
    iget v4, p0, Landroid/view/View;->mTop:I

    .line 23
    .line 24
    sub-int/2addr v3, v4

    .line 25
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 26
    .line 27
    sub-int/2addr v3, v1

    .line 28
    sub-int/2addr v0, v2

    .line 29
    add-int/lit8 v1, p3, -0x1

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 40
    .line 41
    add-int/2addr v4, p3

    .line 42
    const/4 p3, 0x1

    .line 43
    sub-int/2addr v4, p3

    .line 44
    if-lez v0, :cond_3

    .line 45
    .line 46
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 47
    .line 48
    add-int/lit8 v6, v5, -0x1

    .line 49
    .line 50
    if-lt v4, v6, :cond_0

    .line 51
    .line 52
    if-le v2, v3, :cond_3

    .line 53
    .line 54
    :cond_0
    sub-int/2addr v5, p3

    .line 55
    if-ne v4, v5, :cond_1

    .line 56
    .line 57
    sub-int/2addr v2, v3

    .line 58
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    :cond_1
    neg-int v0, v0

    .line 63
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 64
    .line 65
    .line 66
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 67
    .line 68
    sub-int/2addr v0, p3

    .line 69
    if-ge v4, v0, :cond_3

    .line 70
    .line 71
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 72
    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    move p1, p3

    .line 76
    :cond_2
    add-int/2addr v4, p1

    .line 77
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    add-int/2addr p1, p2

    .line 82
    invoke-direct {p0, v4, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 86
    .line 87
    .line 88
    :cond_3
    return-void
.end method

.method private determineColumns(I)Z
    .locals 8

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 2
    .line 3
    iget v1, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 4
    .line 5
    iget v2, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 6
    .line 7
    iget v3, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    const/4 v5, 0x2

    .line 11
    if-ne v3, v4, :cond_1

    .line 12
    .line 13
    if-lez v2, :cond_0

    .line 14
    .line 15
    add-int v3, p1, v0

    .line 16
    .line 17
    add-int v4, v2, v0

    .line 18
    .line 19
    div-int/2addr v3, v4

    .line 20
    iput v3, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iput v3, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 27
    .line 28
    :goto_0
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    if-gtz v3, :cond_2

    .line 32
    .line 33
    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 34
    .line 35
    :cond_2
    const/4 v3, 0x0

    .line 36
    if-eqz v1, :cond_9

    .line 37
    .line 38
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 39
    .line 40
    mul-int v7, v6, v2

    .line 41
    .line 42
    sub-int/2addr p1, v7

    .line 43
    add-int/lit8 v7, v6, -0x1

    .line 44
    .line 45
    mul-int/2addr v7, v0

    .line 46
    sub-int/2addr p1, v7

    .line 47
    if-gez p1, :cond_3

    .line 48
    .line 49
    move v3, v4

    .line 50
    :cond_3
    if-eq v1, v4, :cond_7

    .line 51
    .line 52
    if-eq v1, v5, :cond_6

    .line 53
    .line 54
    const/4 v5, 0x3

    .line 55
    if-eq v1, v5, :cond_4

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 59
    .line 60
    if-le v6, v4, :cond_5

    .line 61
    .line 62
    add-int/2addr v6, v4

    .line 63
    div-int/2addr p1, v6

    .line 64
    add-int/2addr p1, v0

    .line 65
    iput p1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_5
    add-int/2addr v0, p1

    .line 69
    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_6
    div-int/2addr p1, v6

    .line 73
    add-int/2addr p1, v2

    .line 74
    iput p1, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 75
    .line 76
    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_7
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 80
    .line 81
    if-le v6, v4, :cond_8

    .line 82
    .line 83
    sub-int/2addr v6, v4

    .line 84
    div-int/2addr p1, v6

    .line 85
    add-int/2addr p1, v0

    .line 86
    iput p1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_8
    add-int/2addr v0, p1

    .line 90
    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_9
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 94
    .line 95
    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 96
    .line 97
    :goto_1
    return v3
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/View;->mBottom:I

    .line 2
    .line 3
    iget v1, p0, Landroid/view/View;->mTop:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 7
    .line 8
    const/16 v2, 0x22

    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 15
    .line 16
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 17
    .line 18
    sub-int/2addr v0, v1

    .line 19
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 20
    if-ge p2, v0, :cond_2

    .line 21
    .line 22
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 23
    .line 24
    if-ge p1, v2, :cond_2

    .line 25
    .line 26
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    move-object v3, p2

    .line 33
    :cond_1
    iget-object p2, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    iget v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 40
    .line 41
    add-int/2addr p2, v1

    .line 42
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 43
    .line 44
    add-int/2addr p1, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    add-int/2addr p2, p1

    .line 53
    sub-int/2addr p2, v1

    .line 54
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->setVisibleRangeHint(II)V

    .line 55
    .line 56
    .line 57
    return-object v3
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 16
    .line 17
    add-int/lit8 v1, v0, -0x1

    .line 18
    .line 19
    sub-int/2addr v1, p1

    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    iget p1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 23
    .line 24
    rem-int p1, v1, p1

    .line 25
    .line 26
    sub-int/2addr v1, p1

    .line 27
    sub-int/2addr v0, v1

    .line 28
    invoke-direct {p0, v0, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 6
    .line 7
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 8
    .line 9
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 10
    .line 11
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    rem-int v4, v1, v2

    .line 17
    .line 18
    sub-int/2addr v1, v4

    .line 19
    const/4 v4, -0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 22
    .line 23
    add-int/lit8 v6, v4, -0x1

    .line 24
    .line 25
    sub-int/2addr v6, v1

    .line 26
    sub-int/2addr v4, v5

    .line 27
    rem-int v1, v6, v2

    .line 28
    .line 29
    sub-int/2addr v6, v1

    .line 30
    sub-int/2addr v4, v6

    .line 31
    sub-int v1, v4, v2

    .line 32
    .line 33
    add-int/2addr v1, v5

    .line 34
    const/4 v6, 0x0

    .line 35
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    :goto_0
    invoke-direct {p0, p2, v0, v1}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    invoke-direct {p0, p3, v0, v2, v1}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    move v0, v4

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move v0, v1

    .line 54
    :goto_1
    invoke-direct {p0, v0, p1, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 59
    .line 60
    iget-object v0, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 61
    .line 62
    invoke-direct {p0, v0, p2, p3}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, v0, p2, p3}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 66
    .line 67
    .line 68
    iget-boolean p2, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 69
    .line 70
    if-nez p2, :cond_2

    .line 71
    .line 72
    sub-int p2, v1, v2

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    sub-int/2addr p3, v3

    .line 79
    invoke-direct {p0, p2, p3}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 83
    .line 84
    .line 85
    add-int/2addr v1, v2

    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    add-int/2addr p2, v3

    .line 91
    invoke-direct {p0, v1, p2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    add-int/2addr v4, v2

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    add-int/2addr p2, v3

    .line 101
    invoke-direct {p0, v4, p2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 105
    .line 106
    .line 107
    sub-int/2addr v1, v5

    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    sub-int/2addr p2, v3

    .line 113
    invoke-direct {p0, v1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    :goto_2
    return-object p1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2
    .line 3
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 10
    .line 11
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 12
    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 20
    .line 21
    if-gez v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 25
    .line 26
    :cond_0
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 27
    .line 28
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 29
    .line 30
    rem-int v1, v0, v1

    .line 31
    .line 32
    sub-int/2addr v0, v1

    .line 33
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 34
    .line 35
    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->reconcileSelectedPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 6
    .line 7
    iget v2, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 8
    .line 9
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    rem-int v3, v0, v1

    .line 15
    .line 16
    sub-int/2addr v0, v3

    .line 17
    const/4 v3, -0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 20
    .line 21
    add-int/lit8 v5, v3, -0x1

    .line 22
    .line 23
    sub-int/2addr v5, v0

    .line 24
    sub-int/2addr v3, v4

    .line 25
    rem-int v0, v5, v1

    .line 26
    .line 27
    sub-int/2addr v5, v0

    .line 28
    sub-int/2addr v3, v5

    .line 29
    sub-int v0, v3, v1

    .line 30
    .line 31
    add-int/2addr v0, v4

    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-direct {p0, p1, v5, v0}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 46
    .line 47
    if-eqz v7, :cond_1

    .line 48
    .line 49
    move v7, v3

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move v7, v0

    .line 52
    :goto_1
    invoke-direct {p0, v7, v6, v4}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 57
    .line 58
    iget-object v7, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 59
    .line 60
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 61
    .line 62
    if-nez v8, :cond_2

    .line 63
    .line 64
    add-int p1, v0, v1

    .line 65
    .line 66
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    add-int/2addr v3, v2

    .line 71
    invoke-direct {p0, p1, v3}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p2}, Landroid/widget/GridView;->pinToBottom(I)V

    .line 75
    .line 76
    .line 77
    sub-int/2addr v0, v1

    .line 78
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    sub-int/2addr p1, v2

    .line 83
    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    invoke-direct {p0, p2, v5, v1, v0}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    sub-int/2addr p2, v5

    .line 99
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 100
    .line 101
    .line 102
    sub-int/2addr v0, v4

    .line 103
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    sub-int/2addr p2, v2

    .line 108
    invoke-direct {p0, v0, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    invoke-direct {p0, p1}, Landroid/widget/GridView;->pinToTop(I)V

    .line 112
    .line 113
    .line 114
    add-int/2addr v3, v1

    .line 115
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    add-int/2addr p1, v2

    .line 120
    invoke-direct {p0, v3, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 124
    .line 125
    .line 126
    :goto_2
    return-object v6
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 7

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2
    .line 3
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    rem-int v1, p1, v0

    .line 9
    .line 10
    sub-int/2addr p1, v1

    .line 11
    const/4 v1, -0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 14
    .line 15
    add-int/lit8 v3, v1, -0x1

    .line 16
    .line 17
    sub-int/2addr v3, p1

    .line 18
    sub-int/2addr v1, v2

    .line 19
    rem-int p1, v3, v0

    .line 20
    .line 21
    sub-int/2addr v3, p1

    .line 22
    sub-int/2addr v1, v3

    .line 23
    sub-int p1, v1, v0

    .line 24
    .line 25
    add-int/2addr p1, v2

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    :goto_0
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    move v3, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v3, p1

    .line 38
    :goto_1
    invoke-direct {p0, v3, p2, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 43
    .line 44
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 45
    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    return-object p1

    .line 50
    :cond_2
    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 51
    .line 52
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 53
    .line 54
    if-nez v5, :cond_3

    .line 55
    .line 56
    sub-int v1, p1, v0

    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    sub-int/2addr v2, v4

    .line 63
    invoke-direct {p0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 68
    .line 69
    .line 70
    add-int/2addr p1, v0

    .line 71
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    add-int/2addr v2, v4

    .line 76
    invoke-direct {p0, p1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-lez v2, :cond_5

    .line 85
    .line 86
    invoke-direct {p0, v0, v4, v2}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    add-int/2addr v1, v0

    .line 91
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    add-int/2addr v5, v4

    .line 96
    invoke-direct {p0, v1, v5}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 101
    .line 102
    .line 103
    sub-int/2addr p1, v2

    .line 104
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    sub-int/2addr v2, v4

    .line 109
    invoke-direct {p0, p1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-lez v2, :cond_4

    .line 118
    .line 119
    invoke-direct {p0, v0, v4, v2}, Landroid/widget/GridView;->correctTooLow(III)V

    .line 120
    .line 121
    .line 122
    :cond_4
    move-object v6, v1

    .line 123
    move-object v1, p1

    .line 124
    move-object p1, v6

    .line 125
    :cond_5
    :goto_2
    if-eqz p2, :cond_6

    .line 126
    .line 127
    return-object p2

    .line 128
    :cond_6
    if-eqz v1, :cond_7

    .line 129
    .line 130
    return-object v1

    .line 131
    :cond_7
    return-object p1
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 4

    .line 1
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 11
    .line 12
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v3

    .line 16
    :goto_0
    if-le p2, v0, :cond_2

    .line 17
    .line 18
    if-ltz p1, :cond_2

    .line 19
    .line 20
    invoke-direct {p0, p1, p2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    move-object v2, p2

    .line 27
    :cond_1
    iget-object p2, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    iget v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 34
    .line 35
    sub-int/2addr p2, v1

    .line 36
    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 37
    .line 38
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 39
    .line 40
    sub-int/2addr p1, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-boolean p2, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 43
    .line 44
    if-eqz p2, :cond_3

    .line 45
    .line 46
    add-int/lit8 p1, p1, 0x1

    .line 47
    .line 48
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 53
    .line 54
    :cond_3
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    add-int/2addr p2, p1

    .line 61
    add-int/lit8 p2, p2, -0x1

    .line 62
    .line 63
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->setVisibleRangeHint(II)V

    .line 64
    .line 65
    .line 66
    return-object v2
.end method

.method private getBottomSelectionPixel(IIII)I
    .locals 0

    add-int/2addr p4, p3

    add-int/lit8 p4, p4, -0x1

    iget p3, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 p3, p3, -0x1

    if-ge p4, p3, :cond_0

    sub-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private getTopSelectionPixel(III)I
    .locals 0

    if-lez p3, :cond_0

    add-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private isCandidateSelection(II)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, -0x1

    .line 6
    .line 7
    sub-int v2, v1, p1

    .line 8
    .line 9
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 16
    .line 17
    rem-int v3, p1, v2

    .line 18
    .line 19
    sub-int v3, p1, v3

    .line 20
    .line 21
    add-int/2addr v2, v3

    .line 22
    sub-int/2addr v2, v5

    .line 23
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 29
    .line 30
    rem-int v3, v2, v0

    .line 31
    .line 32
    sub-int/2addr v2, v3

    .line 33
    sub-int v2, v1, v2

    .line 34
    .line 35
    sub-int v0, v2, v0

    .line 36
    .line 37
    add-int/2addr v0, v5

    .line 38
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    move v0, v2

    .line 43
    :goto_0
    if-eq p2, v5, :cond_b

    .line 44
    .line 45
    const/4 v2, 0x2

    .line 46
    if-eq p2, v2, :cond_9

    .line 47
    .line 48
    const/16 v2, 0x11

    .line 49
    .line 50
    if-eq p2, v2, :cond_7

    .line 51
    .line 52
    const/16 v2, 0x21

    .line 53
    .line 54
    if-eq p2, v2, :cond_5

    .line 55
    .line 56
    const/16 v0, 0x42

    .line 57
    .line 58
    if-eq p2, v0, :cond_3

    .line 59
    .line 60
    const/16 p1, 0x82

    .line 61
    .line 62
    if-ne p2, p1, :cond_2

    .line 63
    .line 64
    if-nez v3, :cond_1

    .line 65
    .line 66
    move v4, v5

    .line 67
    :cond_1
    return v4

    .line 68
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    const-string p2, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    .line 71
    .line 72
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_3
    if-ne p1, v3, :cond_4

    .line 77
    .line 78
    move v4, v5

    .line 79
    :cond_4
    return v4

    .line 80
    :cond_5
    if-ne v0, v1, :cond_6

    .line 81
    .line 82
    move v4, v5

    .line 83
    :cond_6
    return v4

    .line 84
    :cond_7
    if-ne p1, v0, :cond_8

    .line 85
    .line 86
    move v4, v5

    .line 87
    :cond_8
    return v4

    .line 88
    :cond_9
    if-ne p1, v3, :cond_a

    .line 89
    .line 90
    if-nez v3, :cond_a

    .line 91
    .line 92
    move v4, v5

    .line 93
    :cond_a
    return v4

    .line 94
    :cond_b
    if-ne p1, v0, :cond_c

    .line 95
    .line 96
    if-ne v0, v1, :cond_c

    .line 97
    .line 98
    move v4, v5

    .line 99
    :cond_c
    return v4
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 11

    .line 1
    move-object v9, p0

    .line 2
    move v2, p1

    .line 3
    iget-boolean v0, v9, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v9, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v10

    .line 13
    if-eqz v10, :cond_0

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    move-object v0, p0

    .line 17
    move-object v1, v10

    .line 18
    move v2, p1

    .line 19
    move v3, p2

    .line 20
    move v4, p3

    .line 21
    move v5, p4

    .line 22
    move/from16 v6, p5

    .line 23
    .line 24
    move/from16 v8, p6

    .line 25
    .line 26
    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    .line 27
    .line 28
    .line 29
    return-object v10

    .line 30
    :cond_0
    iget-object v0, v9, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 31
    .line 32
    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v10

    .line 36
    iget-object v0, v9, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    aget-boolean v7, v0, v1

    .line 40
    .line 41
    move-object v0, p0

    .line 42
    move-object v1, v10

    .line 43
    move v2, p1

    .line 44
    move v3, p2

    .line 45
    move v4, p3

    .line 46
    move v5, p4

    .line 47
    move/from16 v6, p5

    .line 48
    .line 49
    move/from16 v8, p6

    .line 50
    .line 51
    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    .line 52
    .line 53
    .line 54
    return-object v10
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .locals 23

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    iget v8, v7, Landroid/widget/GridView;->mColumnWidth:I

    .line 4
    .line 5
    iget v9, v7, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x3

    .line 12
    const/4 v10, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-object v3, v7, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 20
    .line 21
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 22
    .line 23
    sub-int/2addr v2, v3

    .line 24
    sub-int/2addr v2, v8

    .line 25
    iget v3, v7, Landroid/widget/GridView;->mStretchMode:I

    .line 26
    .line 27
    if-ne v3, v1, :cond_0

    .line 28
    .line 29
    move v1, v9

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v1, v10

    .line 32
    :goto_0
    sub-int/2addr v2, v1

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    iget-object v2, v7, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 35
    .line 36
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 37
    .line 38
    iget v3, v7, Landroid/widget/GridView;->mStretchMode:I

    .line 39
    .line 40
    if-ne v3, v1, :cond_2

    .line 41
    .line 42
    move v1, v9

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v1, v10

    .line 45
    :goto_1
    add-int/2addr v2, v1

    .line 46
    :goto_2
    iget-boolean v1, v7, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 47
    .line 48
    const/4 v11, -0x1

    .line 49
    const/4 v12, 0x1

    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    iget v1, v7, Landroid/widget/GridView;->mNumColumns:I

    .line 53
    .line 54
    add-int v1, p1, v1

    .line 55
    .line 56
    iget v3, v7, Landroid/widget/AdapterView;->mItemCount:I

    .line 57
    .line 58
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    move/from16 v13, p1

    .line 63
    .line 64
    move v14, v1

    .line 65
    goto :goto_4

    .line 66
    :cond_3
    add-int/lit8 v1, p1, 0x1

    .line 67
    .line 68
    iget v3, v7, Landroid/widget/GridView;->mNumColumns:I

    .line 69
    .line 70
    sub-int v3, p1, v3

    .line 71
    .line 72
    add-int/2addr v3, v12

    .line 73
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    sub-int v4, v1, v3

    .line 78
    .line 79
    iget v5, v7, Landroid/widget/GridView;->mNumColumns:I

    .line 80
    .line 81
    if-ge v4, v5, :cond_5

    .line 82
    .line 83
    sub-int/2addr v5, v4

    .line 84
    add-int v4, v8, v9

    .line 85
    .line 86
    mul-int/2addr v4, v5

    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    move v5, v11

    .line 90
    goto :goto_3

    .line 91
    :cond_4
    move v5, v12

    .line 92
    :goto_3
    mul-int/2addr v5, v4

    .line 93
    add-int/2addr v2, v5

    .line 94
    :cond_5
    move v14, v1

    .line 95
    move v13, v3

    .line 96
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    .line 97
    .line 98
    .line 99
    move-result v15

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    .line 101
    .line 102
    .line 103
    move-result v16

    .line 104
    iget v6, v7, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 105
    .line 106
    if-eqz v0, :cond_6

    .line 107
    .line 108
    move/from16 v17, v11

    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_6
    move/from16 v17, v12

    .line 112
    .line 113
    :goto_5
    const/4 v0, 0x0

    .line 114
    move-object/from16 v18, v0

    .line 115
    .line 116
    move/from16 v19, v2

    .line 117
    .line 118
    move v5, v13

    .line 119
    :goto_6
    if-ge v5, v14, :cond_c

    .line 120
    .line 121
    if-ne v5, v6, :cond_7

    .line 122
    .line 123
    move/from16 v20, v12

    .line 124
    .line 125
    goto :goto_7

    .line 126
    :cond_7
    move/from16 v20, v10

    .line 127
    .line 128
    :goto_7
    if-eqz p3, :cond_8

    .line 129
    .line 130
    move/from16 v21, v11

    .line 131
    .line 132
    goto :goto_8

    .line 133
    :cond_8
    sub-int v0, v5, v13

    .line 134
    .line 135
    move/from16 v21, v0

    .line 136
    .line 137
    :goto_8
    move-object/from16 v0, p0

    .line 138
    .line 139
    move v1, v5

    .line 140
    move/from16 v2, p2

    .line 141
    .line 142
    move/from16 v3, p3

    .line 143
    .line 144
    move/from16 v4, v19

    .line 145
    .line 146
    move v10, v5

    .line 147
    move/from16 v5, v20

    .line 148
    .line 149
    move/from16 v22, v6

    .line 150
    .line 151
    move/from16 v6, v21

    .line 152
    .line 153
    invoke-direct/range {v0 .. v6}, Landroid/widget/GridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    mul-int v1, v17, v8

    .line 158
    .line 159
    add-int v1, v1, v19

    .line 160
    .line 161
    add-int/lit8 v2, v14, -0x1

    .line 162
    .line 163
    if-ge v10, v2, :cond_9

    .line 164
    .line 165
    mul-int v2, v17, v9

    .line 166
    .line 167
    add-int/2addr v2, v1

    .line 168
    move/from16 v19, v2

    .line 169
    .line 170
    goto :goto_9

    .line 171
    :cond_9
    move/from16 v19, v1

    .line 172
    .line 173
    :goto_9
    if-eqz v20, :cond_b

    .line 174
    .line 175
    if-nez v15, :cond_a

    .line 176
    .line 177
    if-eqz v16, :cond_b

    .line 178
    .line 179
    :cond_a
    move-object/from16 v18, v0

    .line 180
    .line 181
    :cond_b
    add-int/lit8 v5, v10, 0x1

    .line 182
    .line 183
    move/from16 v6, v22

    .line 184
    .line 185
    const/4 v10, 0x0

    .line 186
    goto :goto_6

    .line 187
    :cond_c
    iput-object v0, v7, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 188
    .line 189
    if-eqz v18, :cond_d

    .line 190
    .line 191
    iput-object v0, v7, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 192
    .line 193
    :cond_d
    return-object v18
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 6
    .line 7
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 8
    .line 9
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 10
    .line 11
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x1

    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    sub-int p1, v1, p1

    .line 18
    .line 19
    rem-int v4, p1, v2

    .line 20
    .line 21
    sub-int/2addr p1, v4

    .line 22
    rem-int v4, v1, v2

    .line 23
    .line 24
    sub-int/2addr v1, v4

    .line 25
    const/4 v4, -0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 28
    .line 29
    add-int/lit8 v7, v4, -0x1

    .line 30
    .line 31
    sub-int/2addr v7, v1

    .line 32
    sub-int/2addr v4, v6

    .line 33
    rem-int v8, v7, v2

    .line 34
    .line 35
    sub-int/2addr v7, v8

    .line 36
    sub-int/2addr v4, v7

    .line 37
    sub-int v7, v4, v2

    .line 38
    .line 39
    add-int/2addr v7, v6

    .line 40
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 45
    .line 46
    add-int/lit8 v9, v8, -0x1

    .line 47
    .line 48
    sub-int/2addr v1, p1

    .line 49
    sub-int/2addr v9, v1

    .line 50
    sub-int/2addr v8, v6

    .line 51
    rem-int p1, v9, v2

    .line 52
    .line 53
    sub-int/2addr v9, p1

    .line 54
    sub-int/2addr v8, v9

    .line 55
    sub-int/2addr v8, v2

    .line 56
    add-int/2addr v8, v6

    .line 57
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    move v1, v7

    .line 62
    :goto_0
    sub-int p1, v1, p1

    .line 63
    .line 64
    invoke-direct {p0, p2, v0, v1}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    invoke-direct {p0, p3, v0, v2, v1}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 73
    .line 74
    if-lez p1, :cond_3

    .line 75
    .line 76
    iget-object p1, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 77
    .line 78
    if-nez p1, :cond_1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    :goto_1
    iget-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 86
    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    move p1, v4

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    move p1, v1

    .line 92
    :goto_2
    add-int/2addr v5, v3

    .line 93
    invoke-direct {p0, p1, v5, v6}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object v0, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 98
    .line 99
    invoke-direct {p0, v0, p2, p3}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 100
    .line 101
    .line 102
    goto :goto_7

    .line 103
    :cond_3
    if-gez p1, :cond_6

    .line 104
    .line 105
    iget-object p1, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 106
    .line 107
    if-nez p1, :cond_4

    .line 108
    .line 109
    move p1, v5

    .line 110
    goto :goto_3

    .line 111
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    :goto_3
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 116
    .line 117
    if-eqz v0, :cond_5

    .line 118
    .line 119
    move v0, v4

    .line 120
    goto :goto_4

    .line 121
    :cond_5
    move v0, v1

    .line 122
    :goto_4
    sub-int/2addr p1, v3

    .line 123
    invoke-direct {p0, v0, p1, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iget-object v0, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 128
    .line 129
    invoke-direct {p0, v0, p2, p3}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 130
    .line 131
    .line 132
    goto :goto_7

    .line 133
    :cond_6
    iget-object p1, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 134
    .line 135
    if-nez p1, :cond_7

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    :goto_5
    iget-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 143
    .line 144
    if-eqz p1, :cond_8

    .line 145
    .line 146
    move p1, v4

    .line 147
    goto :goto_6

    .line 148
    :cond_8
    move p1, v1

    .line 149
    :goto_6
    invoke-direct {p0, p1, v5, v6}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iget-object v0, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 154
    .line 155
    :goto_7
    iget-boolean p2, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 156
    .line 157
    if-nez p2, :cond_9

    .line 158
    .line 159
    sub-int p2, v1, v2

    .line 160
    .line 161
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 162
    .line 163
    .line 164
    move-result p3

    .line 165
    sub-int/2addr p3, v3

    .line 166
    invoke-direct {p0, p2, p3}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 170
    .line 171
    .line 172
    add-int/2addr v1, v2

    .line 173
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 174
    .line 175
    .line 176
    move-result p2

    .line 177
    add-int/2addr p2, v3

    .line 178
    invoke-direct {p0, v1, p2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    goto :goto_8

    .line 182
    :cond_9
    add-int/2addr v4, v2

    .line 183
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    add-int/2addr p2, v3

    .line 188
    invoke-direct {p0, v4, p2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 192
    .line 193
    .line 194
    sub-int/2addr v1, v6

    .line 195
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 196
    .line 197
    .line 198
    move-result p2

    .line 199
    sub-int/2addr p2, v3

    .line 200
    invoke-direct {p0, v1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    :goto_8
    return-object p1
.end method

.method private pinToBottom(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 6
    .line 7
    add-int/2addr v1, v0

    .line 8
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sub-int/2addr p1, v0

    .line 23
    if-lez p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sub-int/2addr p1, v0

    .line 15
    if-gez p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p5

    .line 8
    .line 9
    move/from16 v4, p8

    .line 10
    .line 11
    const-string/jumbo v5, "setupGridItem"

    .line 12
    .line 13
    .line 14
    const-wide/16 v6, 0x8

    .line 15
    .line 16
    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    const/4 v8, 0x0

    .line 21
    if-eqz p6, :cond_0

    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    if-eqz v9, :cond_0

    .line 28
    .line 29
    move v9, v5

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v9, v8

    .line 32
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    .line 33
    .line 34
    .line 35
    move-result v10

    .line 36
    if-eq v9, v10, :cond_1

    .line 37
    .line 38
    move v10, v5

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v10, v8

    .line 41
    :goto_1
    iget v11, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 42
    .line 43
    if-lez v11, :cond_2

    .line 44
    .line 45
    const/4 v12, 0x3

    .line 46
    if-ge v11, v12, :cond_2

    .line 47
    .line 48
    iget v11, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 49
    .line 50
    if-ne v11, v2, :cond_2

    .line 51
    .line 52
    move v11, v5

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move v11, v8

    .line 55
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    .line 56
    .line 57
    .line 58
    move-result v12

    .line 59
    if-eq v11, v12, :cond_3

    .line 60
    .line 61
    move v12, v5

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    move v12, v8

    .line 64
    :goto_3
    if-eqz p7, :cond_5

    .line 65
    .line 66
    if-nez v10, :cond_5

    .line 67
    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    .line 69
    .line 70
    .line 71
    move-result v13

    .line 72
    if-eqz v13, :cond_4

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_4
    move v13, v8

    .line 76
    goto :goto_5

    .line 77
    :cond_5
    :goto_4
    move v13, v5

    .line 78
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 79
    .line 80
    .line 81
    move-result-object v14

    .line 82
    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    .line 83
    .line 84
    if-nez v14, :cond_6

    .line 85
    .line 86
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 87
    .line 88
    .line 89
    move-result-object v14

    .line 90
    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    .line 91
    .line 92
    :cond_6
    iget-object v15, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 93
    .line 94
    invoke-interface {v15, v2}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 95
    .line 96
    .line 97
    move-result v15

    .line 98
    iput v15, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 99
    .line 100
    iget-object v15, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 101
    .line 102
    invoke-interface {v15, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 103
    .line 104
    .line 105
    move-result v15

    .line 106
    iput-boolean v15, v14, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 107
    .line 108
    if-eqz v10, :cond_7

    .line 109
    .line 110
    invoke-virtual {v1, v9}, Landroid/view/View;->setSelected(Z)V

    .line 111
    .line 112
    .line 113
    if-eqz v9, :cond_7

    .line 114
    .line 115
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    .line 116
    .line 117
    .line 118
    :cond_7
    if-eqz v12, :cond_8

    .line 119
    .line 120
    invoke-virtual {v1, v11}, Landroid/view/View;->setPressed(Z)V

    .line 121
    .line 122
    .line 123
    :cond_8
    iget v9, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 124
    .line 125
    if-eqz v9, :cond_a

    .line 126
    .line 127
    iget-object v9, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 128
    .line 129
    if-eqz v9, :cond_a

    .line 130
    .line 131
    instance-of v10, v1, Landroid/widget/Checkable;

    .line 132
    .line 133
    if-eqz v10, :cond_9

    .line 134
    .line 135
    move-object v10, v1

    .line 136
    check-cast v10, Landroid/widget/Checkable;

    .line 137
    .line 138
    invoke-virtual {v9, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    invoke-interface {v10, v9}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 143
    .line 144
    .line 145
    goto :goto_6

    .line 146
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 155
    .line 156
    const/16 v10, 0xb

    .line 157
    .line 158
    if-lt v9, v10, :cond_a

    .line 159
    .line 160
    iget-object v9, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 161
    .line 162
    invoke-virtual {v9, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    invoke-virtual {v1, v9}, Landroid/view/View;->setActivated(Z)V

    .line 167
    .line 168
    .line 169
    :cond_a
    :goto_6
    if-eqz p7, :cond_c

    .line 170
    .line 171
    iget-boolean v9, v14, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 172
    .line 173
    if-nez v9, :cond_c

    .line 174
    .line 175
    invoke-virtual {v0, v1, v4, v14}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 176
    .line 177
    .line 178
    if-eqz p7, :cond_b

    .line 179
    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 185
    .line 186
    iget v4, v4, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 187
    .line 188
    if-eq v4, v2, :cond_d

    .line 189
    .line 190
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 191
    .line 192
    .line 193
    goto :goto_7

    .line 194
    :cond_c
    iput-boolean v8, v14, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 195
    .line 196
    invoke-virtual {v0, v1, v4, v14, v5}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 197
    .line 198
    .line 199
    :cond_d
    :goto_7
    if-eqz v13, :cond_e

    .line 200
    .line 201
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    iget v4, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 206
    .line 207
    invoke-static {v2, v8, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    iget v4, v0, Landroid/widget/GridView;->mColumnWidth:I

    .line 212
    .line 213
    const/high16 v9, 0x40000000    # 2.0f

    .line 214
    .line 215
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    iget v9, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 220
    .line 221
    invoke-static {v4, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    invoke-virtual {v1, v4, v2}, Landroid/view/View;->measure(II)V

    .line 226
    .line 227
    .line 228
    goto :goto_8

    .line 229
    :cond_e
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->cleanupLayoutState(Landroid/view/View;)V

    .line 230
    .line 231
    .line 232
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    if-eqz p4, :cond_f

    .line 241
    .line 242
    move/from16 v8, p3

    .line 243
    .line 244
    goto :goto_9

    .line 245
    :cond_f
    sub-int v8, p3, v4

    .line 246
    .line 247
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    .line 248
    .line 249
    .line 250
    move-result v9

    .line 251
    iget v10, v0, Landroid/widget/GridView;->mGravity:I

    .line 252
    .line 253
    invoke-static {v10, v9}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    and-int/lit8 v9, v9, 0x7

    .line 258
    .line 259
    if-eq v9, v5, :cond_11

    .line 260
    .line 261
    const/4 v10, 0x5

    .line 262
    if-eq v9, v10, :cond_10

    .line 263
    .line 264
    goto :goto_a

    .line 265
    :cond_10
    iget v9, v0, Landroid/widget/GridView;->mColumnWidth:I

    .line 266
    .line 267
    add-int/2addr v3, v9

    .line 268
    sub-int/2addr v3, v2

    .line 269
    goto :goto_a

    .line 270
    :cond_11
    iget v9, v0, Landroid/widget/GridView;->mColumnWidth:I

    .line 271
    .line 272
    const/4 v10, 0x2

    .line 273
    invoke-static {v9, v2, v10, v3}, Landroid/app/m;->b(IIII)I

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    :goto_a
    if-eqz v13, :cond_12

    .line 278
    .line 279
    add-int/2addr v2, v3

    .line 280
    add-int/2addr v4, v8

    .line 281
    invoke-virtual {v1, v3, v8, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 282
    .line 283
    .line 284
    goto :goto_b

    .line 285
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    sub-int/2addr v3, v2

    .line 290
    invoke-virtual {v1, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    sub-int/2addr v8, v2

    .line 298
    invoke-virtual {v1, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 299
    .line 300
    .line 301
    :goto_b
    iget-boolean v2, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    .line 302
    .line 303
    if-eqz v2, :cond_13

    .line 304
    .line 305
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    if-nez v2, :cond_13

    .line 310
    .line 311
    invoke-virtual {v1, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 312
    .line 313
    .line 314
    :cond_13
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 315
    .line 316
    .line 317
    return-void
.end method


# virtual methods
.method public arrowScroll(I)Z
    .locals 10

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 2
    .line 3
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 4
    .line 5
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    div-int v2, v0, v1

    .line 12
    .line 13
    mul-int/2addr v2, v1

    .line 14
    add-int v5, v2, v1

    .line 15
    .line 16
    sub-int/2addr v5, v3

    .line 17
    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 18
    .line 19
    sub-int/2addr v6, v3

    .line 20
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 26
    .line 27
    add-int/lit8 v5, v2, -0x1

    .line 28
    .line 29
    sub-int/2addr v5, v0

    .line 30
    sub-int/2addr v2, v3

    .line 31
    div-int/2addr v5, v1

    .line 32
    mul-int/2addr v5, v1

    .line 33
    sub-int v5, v2, v5

    .line 34
    .line 35
    sub-int v2, v5, v1

    .line 36
    .line 37
    add-int/2addr v2, v3

    .line 38
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    :goto_0
    const/16 v6, 0x21

    .line 43
    .line 44
    const/4 v7, 0x6

    .line 45
    if-eq p1, v6, :cond_2

    .line 46
    .line 47
    const/16 v6, 0x82

    .line 48
    .line 49
    if-eq p1, v6, :cond_1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 53
    .line 54
    add-int/lit8 v8, v6, -0x1

    .line 55
    .line 56
    if-ge v5, v8, :cond_3

    .line 57
    .line 58
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 59
    .line 60
    add-int/2addr v1, v0

    .line 61
    sub-int/2addr v6, v3

    .line 62
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    if-lez v2, :cond_3

    .line 71
    .line 72
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 73
    .line 74
    sub-int v1, v0, v1

    .line 75
    .line 76
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 81
    .line 82
    .line 83
    :goto_1
    move v1, v3

    .line 84
    goto :goto_3

    .line 85
    :cond_3
    :goto_2
    move v1, v4

    .line 86
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    const/16 v8, 0x42

    .line 91
    .line 92
    const/16 v9, 0x11

    .line 93
    .line 94
    if-le v0, v2, :cond_6

    .line 95
    .line 96
    if-ne p1, v9, :cond_4

    .line 97
    .line 98
    if-eqz v6, :cond_5

    .line 99
    .line 100
    :cond_4
    if-ne p1, v8, :cond_6

    .line 101
    .line 102
    if-eqz v6, :cond_6

    .line 103
    .line 104
    :cond_5
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 105
    .line 106
    sub-int/2addr v0, v3

    .line 107
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_6
    if-ge v0, v5, :cond_9

    .line 116
    .line 117
    if-ne p1, v9, :cond_7

    .line 118
    .line 119
    if-nez v6, :cond_8

    .line 120
    .line 121
    :cond_7
    if-ne p1, v8, :cond_9

    .line 122
    .line 123
    if-nez v6, :cond_9

    .line 124
    .line 125
    :cond_8
    iput v7, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 126
    .line 127
    add-int/2addr v0, v3

    .line 128
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 129
    .line 130
    sub-int/2addr v1, v3

    .line 131
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_9
    move v3, v1

    .line 140
    :goto_4
    if-eqz v3, :cond_a

    .line 141
    .line 142
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 150
    .line 151
    .line 152
    :cond_a
    if-eqz v3, :cond_b

    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 155
    .line 156
    .line 157
    :cond_b
    return v3
.end method

.method public attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 2

    .line 1
    iget-object p1, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 2
    .line 3
    check-cast p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 8
    .line 9
    invoke-direct {p1}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 13
    .line 14
    :cond_0
    iput p4, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 15
    .line 16
    iput p3, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 17
    .line 18
    iget p2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 19
    .line 20
    iput p2, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 21
    .line 22
    div-int v0, p4, p2

    .line 23
    .line 24
    iput v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 25
    .line 26
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    rem-int p4, p3, p2

    .line 31
    .line 32
    iput p4, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 33
    .line 34
    div-int/2addr p3, p2

    .line 35
    iput p3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    add-int/lit8 p4, p4, -0x1

    .line 39
    .line 40
    sub-int/2addr p4, p3

    .line 41
    add-int/lit8 p3, p2, -0x1

    .line 42
    .line 43
    rem-int v1, p4, p2

    .line 44
    .line 45
    sub-int/2addr p3, v1

    .line 46
    iput p3, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 47
    .line 48
    add-int/lit8 v0, v0, -0x1

    .line 49
    .line 50
    div-int/2addr p4, p2

    .line 51
    sub-int/2addr v0, p4

    .line 52
    iput v0, p1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_2

    .line 7
    .line 8
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 9
    .line 10
    add-int v3, v0, v2

    .line 11
    .line 12
    add-int/lit8 v3, v3, -0x1

    .line 13
    .line 14
    div-int/2addr v3, v2

    .line 15
    mul-int/lit8 v3, v3, 0x64

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-lez v1, :cond_0

    .line 30
    .line 31
    const/16 v4, 0x64

    .line 32
    .line 33
    invoke-static {v2, v4, v1, v3}, Landroid/app/m;->z(IIII)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-lez v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    sub-int/2addr v1, v2

    .line 58
    mul-int/lit8 v1, v1, 0x64

    .line 59
    .line 60
    div-int/2addr v1, v0

    .line 61
    sub-int/2addr v3, v1

    .line 62
    :cond_1
    return v3

    .line 63
    :cond_2
    return v1
.end method

.method public computeVerticalScrollOffset()I
    .locals 7

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ltz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 27
    .line 28
    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 29
    .line 30
    add-int/2addr v4, v3

    .line 31
    add-int/lit8 v4, v4, -0x1

    .line 32
    .line 33
    div-int/2addr v4, v3

    .line 34
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isStackFromBottom()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_0

    .line 39
    .line 40
    mul-int v5, v4, v3

    .line 41
    .line 42
    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 43
    .line 44
    sub-int/2addr v5, v6

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v5, v1

    .line 47
    :goto_0
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 48
    .line 49
    add-int/2addr v6, v5

    .line 50
    div-int/2addr v6, v3

    .line 51
    mul-int/lit8 v6, v6, 0x64

    .line 52
    .line 53
    mul-int/lit8 v2, v2, 0x64

    .line 54
    .line 55
    div-int/2addr v2, v0

    .line 56
    sub-int/2addr v6, v2

    .line 57
    iget v0, p0, Landroid/view/View;->mScrollY:I

    .line 58
    .line 59
    int-to-float v0, v0

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    int-to-float v2, v2

    .line 65
    div-float/2addr v0, v2

    .line 66
    int-to-float v2, v4

    .line 67
    mul-float/2addr v0, v2

    .line 68
    const/high16 v2, 0x42c80000    # 100.0f

    .line 69
    .line 70
    mul-float/2addr v0, v2

    .line 71
    float-to-int v0, v0

    .line 72
    add-int/2addr v6, v0

    .line 73
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    return v0

    .line 78
    :cond_1
    return v1
.end method

.method public computeVerticalScrollRange()I
    .locals 4

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2
    .line 3
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 4
    .line 5
    add-int/2addr v1, v0

    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    div-int/2addr v1, v0

    .line 9
    mul-int/lit8 v0, v1, 0x64

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    int-to-float v2, v2

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    int-to-float v3, v3

    .line 26
    div-float/2addr v2, v3

    .line 27
    int-to-float v1, v1

    .line 28
    mul-float/2addr v2, v1

    .line 29
    const/high16 v1, 0x42c80000    # 100.0f

    .line 30
    .line 31
    mul-float/2addr v2, v1

    .line 32
    float-to-int v1, v2

    .line 33
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-int/2addr v0, v1

    .line 38
    :cond_0
    return v0
.end method

.method public encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "numColumns"

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public fillGap(Z)V
    .locals 5

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2
    .line 3
    iget v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/16 v4, 0x22

    .line 11
    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 15
    .line 16
    and-int/2addr p1, v4

    .line 17
    if-ne p1, v4, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingTop()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    :cond_0
    if-lez v2, :cond_1

    .line 24
    .line 25
    add-int/lit8 p1, v2, -0x1

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    add-int v3, p1, v1

    .line 36
    .line 37
    :cond_1
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 38
    .line 39
    add-int/2addr p1, v2

    .line 40
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    add-int/lit8 v2, v0, -0x1

    .line 45
    .line 46
    add-int/2addr p1, v2

    .line 47
    :cond_2
    invoke-direct {p0, p1, v3}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-direct {p0, v0, v1, p1}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    iget p1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 59
    .line 60
    and-int/2addr p1, v4

    .line 61
    if-ne p1, v4, :cond_4

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingBottom()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    goto :goto_0

    .line 68
    :cond_4
    move p1, v3

    .line 69
    :goto_0
    if-lez v2, :cond_5

    .line 70
    .line 71
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    sub-int/2addr p1, v1

    .line 80
    goto :goto_1

    .line 81
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    sub-int p1, v2, p1

    .line 86
    .line 87
    :goto_1
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 88
    .line 89
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 90
    .line 91
    if-nez v3, :cond_6

    .line 92
    .line 93
    sub-int/2addr v2, v0

    .line 94
    goto :goto_2

    .line 95
    :cond_6
    add-int/lit8 v2, v2, -0x1

    .line 96
    .line 97
    :goto_2
    invoke-direct {p0, v2, p1}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-direct {p0, v0, v1, p1}, Landroid/widget/GridView;->correctTooLow(III)V

    .line 105
    .line 106
    .line 107
    :goto_3
    return-void
.end method

.method public findMotionRow(I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_3

    .line 6
    .line 7
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 8
    .line 9
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v0, :cond_3

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-gt p1, v3, :cond_0

    .line 25
    .line 26
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 27
    .line 28
    add-int/2addr p1, v2

    .line 29
    return p1

    .line 30
    :cond_0
    add-int/2addr v2, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    :goto_1
    if-ltz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-lt p1, v2, :cond_2

    .line 45
    .line 46
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 47
    .line 48
    add-int/2addr p1, v0

    .line 49
    return p1

    .line 50
    :cond_2
    sub-int/2addr v0, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    const/4 p1, -0x1

    .line 53
    return p1
.end method

.method public fullScroll(I)Z
    .locals 4

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    iput v1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 9
    .line 10
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 v0, 0x82

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    iput v1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 22
    .line 23
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 24
    .line 25
    sub-int/2addr p1, v2

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v2, v3

    .line 34
    :goto_0
    if-eqz v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 37
    .line 38
    .line 39
    :cond_2
    return v2
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getColumnWidth()I
    .locals 1

    iget v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 1

    iget v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    return v0
.end method

.method public getNumColumns()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    return v0
.end method

.method public getRequestedColumnWidth()I
    .locals 1

    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    return v0
.end method

.method public getRequestedHorizontalSpacing()I
    .locals 1

    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    return v0
.end method

.method public getStretchMode()I
    .locals 1

    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    return v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    return v0
.end method

.method public layoutChildren()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-boolean v2, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 9
    .line 10
    :cond_0
    const/4 v3, 0x0

    .line 11
    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    .line 17
    iget-object v4, v1, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 18
    .line 19
    if-nez v4, :cond_2

    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->resetList()V

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    iput-boolean v3, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 30
    .line 31
    :cond_1
    return-void

    .line 32
    :cond_2
    :try_start_1
    iget-object v4, v1, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 33
    .line 34
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 35
    .line 36
    iget v6, v1, Landroid/view/View;->mBottom:I

    .line 37
    .line 38
    iget v7, v1, Landroid/view/View;->mTop:I

    .line 39
    .line 40
    sub-int/2addr v6, v7

    .line 41
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 42
    .line 43
    sub-int/2addr v6, v4

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    iget v7, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 49
    .line 50
    packed-switch v7, :pswitch_data_0

    .line 51
    .line 52
    .line 53
    iget v7, v1, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :pswitch_0
    iget v7, v1, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 57
    .line 58
    if-ltz v7, :cond_3

    .line 59
    .line 60
    iget v9, v1, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 61
    .line 62
    sub-int/2addr v7, v9

    .line 63
    goto :goto_0

    .line 64
    :pswitch_1
    iget v7, v1, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 65
    .line 66
    iget v9, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 67
    .line 68
    sub-int/2addr v7, v9

    .line 69
    if-ltz v7, :cond_3

    .line 70
    .line 71
    if-ge v7, v4, :cond_3

    .line 72
    .line 73
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    move-object v9, v7

    .line 78
    const/4 v10, 0x0

    .line 79
    const/4 v11, 0x0

    .line 80
    goto :goto_3

    .line 81
    :cond_3
    :pswitch_2
    move v7, v3

    .line 82
    :goto_0
    const/4 v9, 0x0

    .line 83
    const/4 v10, 0x0

    .line 84
    const/4 v11, 0x0

    .line 85
    goto :goto_4

    .line 86
    :goto_1
    iget v9, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 87
    .line 88
    sub-int/2addr v7, v9

    .line 89
    if-ltz v7, :cond_4

    .line 90
    .line 91
    if-ge v7, v4, :cond_4

    .line 92
    .line 93
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    const/4 v7, 0x0

    .line 99
    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    move-object v10, v7

    .line 104
    move-object v11, v9

    .line 105
    const/4 v9, 0x0

    .line 106
    :goto_3
    move v7, v3

    .line 107
    :goto_4
    iget-boolean v12, v1, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 108
    .line 109
    if-eqz v12, :cond_5

    .line 110
    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->handleDataChanged()V

    .line 112
    .line 113
    .line 114
    :cond_5
    iget v13, v1, Landroid/widget/AdapterView;->mItemCount:I

    .line 115
    .line 116
    if-nez v13, :cond_7

    .line 117
    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->resetList()V

    .line 119
    .line 120
    .line 121
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    .line 123
    .line 124
    if-nez v2, :cond_6

    .line 125
    .line 126
    iput-boolean v3, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 127
    .line 128
    :cond_6
    return-void

    .line 129
    :cond_7
    :try_start_2
    iget v13, v1, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 130
    .line 131
    invoke-virtual {v1, v13}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 135
    .line 136
    .line 137
    move-result-object v13

    .line 138
    if-eqz v13, :cond_a

    .line 139
    .line 140
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v15

    .line 144
    if-eqz v15, :cond_a

    .line 145
    .line 146
    invoke-virtual {v1, v15}, Landroid/widget/AbsListView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    if-eqz v8, :cond_a

    .line 151
    .line 152
    if-eqz v12, :cond_9

    .line 153
    .line 154
    invoke-virtual {v8}, Landroid/view/View;->hasTransientState()Z

    .line 155
    .line 156
    .line 157
    move-result v16

    .line 158
    if-nez v16, :cond_9

    .line 159
    .line 160
    iget-boolean v14, v1, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    .line 161
    .line 162
    if-eqz v14, :cond_8

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_8
    const/4 v14, 0x0

    .line 166
    const/4 v15, 0x0

    .line 167
    goto :goto_6

    .line 168
    :cond_9
    :goto_5
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 169
    .line 170
    .line 171
    move-result-object v14

    .line 172
    :goto_6
    invoke-virtual {v1, v8}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    goto :goto_7

    .line 177
    :cond_a
    const/4 v8, -0x1

    .line 178
    const/4 v14, 0x0

    .line 179
    const/4 v15, 0x0

    .line 180
    :goto_7
    iget v3, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 181
    .line 182
    iget-object v0, v1, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 183
    .line 184
    if-eqz v12, :cond_c

    .line 185
    .line 186
    const/4 v12, 0x0

    .line 187
    :goto_8
    if-ge v12, v4, :cond_b

    .line 188
    .line 189
    move/from16 v17, v2

    .line 190
    .line 191
    :try_start_3
    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    move/from16 v18, v8

    .line 196
    .line 197
    add-int v8, v3, v12

    .line 198
    .line 199
    invoke-virtual {v0, v2, v8}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 200
    .line 201
    .line 202
    add-int/lit8 v12, v12, 0x1

    .line 203
    .line 204
    move/from16 v2, v17

    .line 205
    .line 206
    move/from16 v8, v18

    .line 207
    .line 208
    goto :goto_8

    .line 209
    :cond_b
    move/from16 v17, v2

    .line 210
    .line 211
    move/from16 v18, v8

    .line 212
    .line 213
    goto :goto_9

    .line 214
    :cond_c
    move/from16 v17, v2

    .line 215
    .line 216
    move/from16 v18, v8

    .line 217
    .line 218
    invoke-virtual {v0, v4, v3}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 219
    .line 220
    .line 221
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->detachAllViewsFromParent()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 225
    .line 226
    .line 227
    iget v2, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 228
    .line 229
    packed-switch v2, :pswitch_data_1

    .line 230
    .line 231
    .line 232
    if-nez v4, :cond_13

    .line 233
    .line 234
    iget-boolean v2, v1, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 235
    .line 236
    goto :goto_a

    .line 237
    :pswitch_3
    invoke-direct {v1, v7, v5, v6}, Landroid/widget/GridView;->moveSelection(III)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    goto/16 :goto_11

    .line 242
    .line 243
    :pswitch_4
    iget v2, v1, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 244
    .line 245
    iget v3, v1, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 246
    .line 247
    invoke-direct {v1, v2, v3}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    goto/16 :goto_11

    .line 252
    .line 253
    :pswitch_5
    iget v2, v1, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 254
    .line 255
    iget v3, v1, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 256
    .line 257
    invoke-direct {v1, v2, v3}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    goto/16 :goto_11

    .line 262
    .line 263
    :pswitch_6
    iget v2, v1, Landroid/widget/AdapterView;->mItemCount:I

    .line 264
    .line 265
    const/4 v3, 0x1

    .line 266
    sub-int/2addr v2, v3

    .line 267
    invoke-direct {v1, v2, v6}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 272
    .line 273
    .line 274
    goto/16 :goto_11

    .line 275
    .line 276
    :pswitch_7
    if-eqz v9, :cond_d

    .line 277
    .line 278
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    invoke-direct {v1, v2, v5, v6}, Landroid/widget/GridView;->fillFromSelection(III)Landroid/view/View;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    goto/16 :goto_11

    .line 287
    .line 288
    :cond_d
    invoke-direct {v1, v5, v6}, Landroid/widget/GridView;->fillSelection(II)Landroid/view/View;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    goto/16 :goto_11

    .line 293
    .line 294
    :pswitch_8
    const/4 v2, 0x0

    .line 295
    iput v2, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 296
    .line 297
    invoke-direct {v1, v5}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_11

    .line 305
    .line 306
    :goto_a
    if-nez v2, :cond_10

    .line 307
    .line 308
    iget-object v2, v1, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 309
    .line 310
    if-eqz v2, :cond_f

    .line 311
    .line 312
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInTouchMode()Z

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    if-eqz v2, :cond_e

    .line 317
    .line 318
    goto :goto_b

    .line 319
    :cond_e
    const/4 v2, 0x0

    .line 320
    goto :goto_c

    .line 321
    :cond_f
    :goto_b
    const/4 v2, -0x1

    .line 322
    :goto_c
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 323
    .line 324
    .line 325
    invoke-direct {v1, v5}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    goto :goto_11

    .line 330
    :cond_10
    iget v2, v1, Landroid/widget/AdapterView;->mItemCount:I

    .line 331
    .line 332
    const/4 v3, 0x1

    .line 333
    sub-int/2addr v2, v3

    .line 334
    iget-object v3, v1, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 335
    .line 336
    if-eqz v3, :cond_12

    .line 337
    .line 338
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInTouchMode()Z

    .line 339
    .line 340
    .line 341
    move-result v3

    .line 342
    if-eqz v3, :cond_11

    .line 343
    .line 344
    goto :goto_d

    .line 345
    :cond_11
    move v3, v2

    .line 346
    goto :goto_e

    .line 347
    :cond_12
    :goto_d
    const/4 v3, -0x1

    .line 348
    :goto_e
    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 349
    .line 350
    .line 351
    invoke-direct {v1, v2, v6}, Landroid/widget/GridView;->fillFromBottom(II)Landroid/view/View;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    goto :goto_11

    .line 356
    :cond_13
    iget v2, v1, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 357
    .line 358
    if-ltz v2, :cond_15

    .line 359
    .line 360
    iget v3, v1, Landroid/widget/AdapterView;->mItemCount:I

    .line 361
    .line 362
    if-ge v2, v3, :cond_15

    .line 363
    .line 364
    if-nez v10, :cond_14

    .line 365
    .line 366
    goto :goto_f

    .line 367
    :cond_14
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    .line 368
    .line 369
    .line 370
    move-result v5

    .line 371
    :goto_f
    invoke-direct {v1, v2, v5}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    goto :goto_11

    .line 376
    :cond_15
    iget v2, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 377
    .line 378
    iget v3, v1, Landroid/widget/AdapterView;->mItemCount:I

    .line 379
    .line 380
    if-ge v2, v3, :cond_17

    .line 381
    .line 382
    if-nez v11, :cond_16

    .line 383
    .line 384
    goto :goto_10

    .line 385
    :cond_16
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    .line 386
    .line 387
    .line 388
    move-result v5

    .line 389
    :goto_10
    invoke-direct {v1, v2, v5}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    goto :goto_11

    .line 394
    :cond_17
    const/4 v2, 0x0

    .line 395
    invoke-direct {v1, v2, v5}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    move-object v2, v3

    .line 400
    :goto_11
    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 401
    .line 402
    .line 403
    if-eqz v2, :cond_18

    .line 404
    .line 405
    const/4 v0, -0x1

    .line 406
    invoke-virtual {v1, v0, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    iput v0, v1, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 414
    .line 415
    goto :goto_13

    .line 416
    :cond_18
    iget v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 417
    .line 418
    if-lez v0, :cond_19

    .line 419
    .line 420
    const/4 v2, 0x3

    .line 421
    if-ge v0, v2, :cond_19

    .line 422
    .line 423
    const/4 v0, 0x1

    .line 424
    goto :goto_12

    .line 425
    :cond_19
    const/4 v0, 0x0

    .line 426
    :goto_12
    if-eqz v0, :cond_1a

    .line 427
    .line 428
    iget v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 429
    .line 430
    iget v2, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 431
    .line 432
    sub-int/2addr v0, v2

    .line 433
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    if-eqz v0, :cond_1c

    .line 438
    .line 439
    iget v2, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 440
    .line 441
    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 442
    .line 443
    .line 444
    goto :goto_13

    .line 445
    :cond_1a
    iget v0, v1, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 446
    .line 447
    const/4 v2, -0x1

    .line 448
    if-eq v0, v2, :cond_1b

    .line 449
    .line 450
    iget v0, v1, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 451
    .line 452
    iget v2, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 453
    .line 454
    sub-int/2addr v0, v2

    .line 455
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    if-eqz v0, :cond_1c

    .line 460
    .line 461
    iget v2, v1, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 462
    .line 463
    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 464
    .line 465
    .line 466
    goto :goto_13

    .line 467
    :cond_1b
    const/4 v2, 0x0

    .line 468
    iput v2, v1, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 469
    .line 470
    iget-object v0, v1, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 471
    .line 472
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 473
    .line 474
    .line 475
    :cond_1c
    :goto_13
    if-eqz v13, :cond_1f

    .line 476
    .line 477
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    if-nez v0, :cond_1f

    .line 482
    .line 483
    if-eqz v15, :cond_1e

    .line 484
    .line 485
    invoke-virtual {v15}, Landroid/view/View;->isAttachedToWindow()Z

    .line 486
    .line 487
    .line 488
    move-result v0

    .line 489
    if-eqz v0, :cond_1e

    .line 490
    .line 491
    invoke-virtual {v15}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    if-eqz v14, :cond_1d

    .line 496
    .line 497
    if-eqz v0, :cond_1d

    .line 498
    .line 499
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    .line 500
    .line 501
    .line 502
    move-result-wide v2

    .line 503
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    .line 504
    .line 505
    .line 506
    move-result v2

    .line 507
    const/16 v3, 0x40

    .line 508
    .line 509
    const/4 v4, 0x0

    .line 510
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 511
    .line 512
    .line 513
    goto :goto_14

    .line 514
    :cond_1d
    invoke-virtual {v15}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 515
    .line 516
    .line 517
    goto :goto_14

    .line 518
    :cond_1e
    move/from16 v8, v18

    .line 519
    .line 520
    const/4 v0, -0x1

    .line 521
    if-eq v8, v0, :cond_1f

    .line 522
    .line 523
    iget v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 524
    .line 525
    sub-int/2addr v8, v0

    .line 526
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 527
    .line 528
    .line 529
    move-result v0

    .line 530
    const/4 v2, 0x1

    .line 531
    sub-int/2addr v0, v2

    .line 532
    const/4 v2, 0x0

    .line 533
    invoke-static {v8, v2, v0}, Landroid/util/MathUtils;->constrain(III)I

    .line 534
    .line 535
    .line 536
    move-result v0

    .line 537
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    if-eqz v0, :cond_1f

    .line 542
    .line 543
    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 544
    .line 545
    .line 546
    :cond_1f
    :goto_14
    const/4 v2, 0x0

    .line 547
    iput v2, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 548
    .line 549
    iput-boolean v2, v1, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 550
    .line 551
    iget-object v0, v1, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 552
    .line 553
    if-eqz v0, :cond_20

    .line 554
    .line 555
    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 556
    .line 557
    .line 558
    const/4 v0, 0x0

    .line 559
    iput-object v0, v1, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 560
    .line 561
    :cond_20
    const/4 v2, 0x0

    .line 562
    iput-boolean v2, v1, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 563
    .line 564
    iget v0, v1, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 565
    .line 566
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 567
    .line 568
    .line 569
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateScrollIndicators()V

    .line 570
    .line 571
    .line 572
    iget v0, v1, Landroid/widget/AdapterView;->mItemCount:I

    .line 573
    .line 574
    if-lez v0, :cond_21

    .line 575
    .line 576
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 577
    .line 578
    .line 579
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 580
    .line 581
    .line 582
    if-nez v17, :cond_22

    .line 583
    .line 584
    const/4 v2, 0x0

    .line 585
    iput-boolean v2, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 586
    .line 587
    :cond_22
    return-void

    .line 588
    :catchall_0
    move-exception v0

    .line 589
    goto :goto_15

    .line 590
    :catchall_1
    move-exception v0

    .line 591
    move/from16 v17, v2

    .line 592
    .line 593
    :goto_15
    if-nez v17, :cond_23

    .line 594
    .line 595
    const/4 v2, 0x0

    .line 596
    iput-boolean v2, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 597
    .line 598
    :cond_23
    throw v0

    .line 599
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public lookForSelectablePosition(IZ)I
    .locals 1

    .line 1
    iget-object p2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-eqz p2, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-ltz p1, :cond_2

    .line 14
    .line 15
    iget p2, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 16
    .line 17
    if-lt p1, p2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return p1

    .line 21
    :cond_2
    :goto_0
    return v0
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    if-eqz p3, :cond_2

    .line 8
    .line 9
    iget p1, p0, Landroid/view/View;->mScrollX:I

    .line 10
    .line 11
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 12
    .line 13
    invoke-virtual {p3, p1, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const v2, 0x7fffffff

    .line 23
    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    :goto_0
    if-ge v3, v1, :cond_2

    .line 27
    .line 28
    invoke-direct {p0, v3, p2}, Landroid/widget/GridView;->isCandidateSelection(II)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v4, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v4, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p3, p1, p2}, Landroid/widget/AbsListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-ge v4, v2, :cond_1

    .line 50
    .line 51
    move v0, v3

    .line 52
    move v2, v4

    .line 53
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    if-ltz v0, :cond_3

    .line 57
    .line 58
    iget p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 59
    .line 60
    add-int/2addr v0, p1

    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelection(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 66
    .line 67
    .line 68
    :goto_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 11

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    div-int v2, v0, v1

    .line 13
    .line 14
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    rem-int v0, p2, v1

    .line 20
    .line 21
    div-int v1, p2, v1

    .line 22
    .line 23
    move v7, v0

    .line 24
    move v5, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sub-int/2addr v0, v4

    .line 27
    sub-int/2addr v0, p2

    .line 28
    add-int/lit8 v3, v1, -0x1

    .line 29
    .line 30
    rem-int v5, v0, v1

    .line 31
    .line 32
    sub-int/2addr v3, v5

    .line 33
    sub-int/2addr v2, v4

    .line 34
    div-int/2addr v0, v1

    .line 35
    sub-int v1, v2, v0

    .line 36
    .line 37
    move v5, v1

    .line 38
    move v7, v3

    .line 39
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/widget/AbsListView$LayoutParams;

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    iget p1, p1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 48
    .line 49
    const/4 v0, -0x2

    .line 50
    if-ne p1, v0, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/4 v4, 0x0

    .line 54
    :goto_1
    move v9, v4

    .line 55
    invoke-virtual {p0, p2}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    const/4 v6, 0x1

    .line 60
    const/4 v8, 0x1

    .line 61
    invoke-static/range {v5 .. v10}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    div-int/2addr v1, v0

    .line 13
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectionModeForAccessibility()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {v1, v0, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 23
    .line 24
    .line 25
    if-gtz v0, :cond_0

    .line 26
    .line 27
    if-lez v1, :cond_1

    .line 28
    .line 29
    :cond_0
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMeasure(II)V
    .locals 13

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 23
    .line 24
    if-lez v2, :cond_0

    .line 25
    .line 26
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 27
    .line 28
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 29
    .line 30
    add-int/2addr v2, v5

    .line 31
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 32
    .line 33
    add-int/2addr v2, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 36
    .line 37
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 38
    .line 39
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 40
    .line 41
    add-int/2addr v2, v4

    .line 42
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarWidth()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    add-int/2addr v2, v4

    .line 47
    :cond_1
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 48
    .line 49
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 50
    .line 51
    sub-int v5, v2, v5

    .line 52
    .line 53
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 54
    .line 55
    sub-int/2addr v5, v4

    .line 56
    invoke-direct {p0, v5}, Landroid/widget/GridView;->determineColumns(I)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 61
    .line 62
    const/4 v6, 0x0

    .line 63
    if-nez v5, :cond_2

    .line 64
    .line 65
    move v5, v6

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-interface {v5}, Landroid/widget/Adapter;->getCount()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    :goto_1
    iput v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 72
    .line 73
    const/4 v7, -0x1

    .line 74
    const/4 v8, 0x1

    .line 75
    if-lez v5, :cond_4

    .line 76
    .line 77
    iget-object v9, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 78
    .line 79
    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    check-cast v10, Landroid/widget/AbsListView$LayoutParams;

    .line 88
    .line 89
    if-nez v10, :cond_3

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    check-cast v10, Landroid/widget/AbsListView$LayoutParams;

    .line 96
    .line 97
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    iget-object v11, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 101
    .line 102
    invoke-interface {v11, v6}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    iput v11, v10, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 107
    .line 108
    iget-object v11, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 109
    .line 110
    invoke-interface {v11, v6}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 111
    .line 112
    .line 113
    move-result v11

    .line 114
    iput-boolean v11, v10, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 115
    .line 116
    iput-boolean v8, v10, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 117
    .line 118
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    iget v11, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 127
    .line 128
    invoke-static {p2, v6, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    iget v11, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 133
    .line 134
    const/high16 v12, 0x40000000    # 2.0f

    .line 135
    .line 136
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 137
    .line 138
    .line 139
    move-result v11

    .line 140
    iget v12, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 141
    .line 142
    invoke-static {v11, v6, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    invoke-virtual {v9, v11, p2}, Landroid/view/View;->measure(II)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    .line 154
    .line 155
    .line 156
    move-result v11

    .line 157
    invoke-static {v6, v11}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 158
    .line 159
    .line 160
    iget-object v11, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 161
    .line 162
    iget v10, v10, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 163
    .line 164
    invoke-virtual {v11, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    if-eqz v10, :cond_5

    .line 169
    .line 170
    iget-object v10, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 171
    .line 172
    invoke-virtual {v10, v9, v7}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_4
    move p2, v6

    .line 177
    :cond_5
    :goto_2
    if-nez v1, :cond_6

    .line 178
    .line 179
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 180
    .line 181
    iget v9, v3, Landroid/graphics/Rect;->top:I

    .line 182
    .line 183
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 184
    .line 185
    add-int/2addr v9, v3

    .line 186
    add-int/2addr v9, p2

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    mul-int/lit8 v3, v3, 0x2

    .line 192
    .line 193
    add-int/2addr v3, v9

    .line 194
    :cond_6
    const/high16 v9, -0x80000000

    .line 195
    .line 196
    if-ne v1, v9, :cond_a

    .line 197
    .line 198
    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 199
    .line 200
    iget v10, v1, Landroid/graphics/Rect;->top:I

    .line 201
    .line 202
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 203
    .line 204
    add-int/2addr v10, v1

    .line 205
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 206
    .line 207
    :cond_7
    if-ge v6, v5, :cond_9

    .line 208
    .line 209
    add-int/2addr v10, p2

    .line 210
    add-int/2addr v6, v1

    .line 211
    if-ge v6, v5, :cond_8

    .line 212
    .line 213
    iget v11, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 214
    .line 215
    add-int/2addr v10, v11

    .line 216
    :cond_8
    if-lt v10, v3, :cond_7

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_9
    move v3, v10

    .line 220
    :cond_a
    :goto_3
    if-ne v0, v9, :cond_c

    .line 221
    .line 222
    iget p2, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    .line 223
    .line 224
    if-eq p2, v7, :cond_c

    .line 225
    .line 226
    iget v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 227
    .line 228
    mul-int/2addr v0, p2

    .line 229
    sub-int/2addr p2, v8

    .line 230
    iget v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 231
    .line 232
    mul-int/2addr p2, v1

    .line 233
    add-int/2addr p2, v0

    .line 234
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 235
    .line 236
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 237
    .line 238
    add-int/2addr p2, v1

    .line 239
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 240
    .line 241
    add-int/2addr p2, v0

    .line 242
    if-gt p2, v2, :cond_b

    .line 243
    .line 244
    if-eqz v4, :cond_c

    .line 245
    .line 246
    :cond_b
    const/high16 p2, 0x1000000

    .line 247
    .line 248
    or-int/2addr v2, p2

    .line 249
    :cond_c
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 250
    .line 251
    .line 252
    iput p1, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 253
    .line 254
    return-void
.end method

.method public pageScroll(I)Z
    .locals 4

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sub-int/2addr p1, v0

    .line 14
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 v0, 0x82

    .line 20
    .line 21
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 24
    .line 25
    sub-int/2addr p1, v1

    .line 26
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    add-int/2addr v3, v0

    .line 33
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p1, -0x1

    .line 39
    :goto_0
    if-ltz p1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 48
    .line 49
    .line 50
    return v1

    .line 51
    :cond_2
    return v2
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const v0, 0x1020037

    .line 10
    .line 11
    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const-string v0, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    .line 20
    .line 21
    const/4 v2, -0x1

    .line 22
    invoke-virtual {p2, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    mul-int/2addr p1, p2

    .line 27
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sub-int/2addr v0, v1

    .line 32
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-ltz p2, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    .line 39
    .line 40
    .line 41
    return v1

    .line 42
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 43
    return p1
.end method

.method public sequenceScroll(I)Z
    .locals 8

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 2
    .line 3
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 4
    .line 5
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 6
    .line 7
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    div-int v3, v0, v1

    .line 14
    .line 15
    mul-int/2addr v3, v1

    .line 16
    add-int/2addr v1, v3

    .line 17
    sub-int/2addr v1, v5

    .line 18
    add-int/lit8 v6, v2, -0x1

    .line 19
    .line 20
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    add-int/lit8 v3, v2, -0x1

    .line 26
    .line 27
    sub-int v6, v3, v0

    .line 28
    .line 29
    div-int/2addr v6, v1

    .line 30
    mul-int/2addr v6, v1

    .line 31
    sub-int/2addr v3, v6

    .line 32
    sub-int v1, v3, v1

    .line 33
    .line 34
    add-int/2addr v1, v5

    .line 35
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    move v7, v3

    .line 40
    move v3, v1

    .line 41
    move v1, v7

    .line 42
    :goto_0
    const/4 v6, 0x6

    .line 43
    if-eq p1, v5, :cond_2

    .line 44
    .line 45
    const/4 v3, 0x2

    .line 46
    if-eq p1, v3, :cond_1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    sub-int/2addr v2, v5

    .line 50
    if-ge v0, v2, :cond_4

    .line 51
    .line 52
    iput v6, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 53
    .line 54
    add-int/lit8 v2, v0, 0x1

    .line 55
    .line 56
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 57
    .line 58
    .line 59
    if-ne v0, v1, :cond_3

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    if-lez v0, :cond_4

    .line 63
    .line 64
    iput v6, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 65
    .line 66
    add-int/lit8 v1, v0, -0x1

    .line 67
    .line 68
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 69
    .line 70
    .line 71
    if-ne v0, v3, :cond_3

    .line 72
    .line 73
    :goto_1
    move v4, v5

    .line 74
    :cond_3
    move v0, v4

    .line 75
    move v4, v5

    .line 76
    goto :goto_3

    .line 77
    :cond_4
    :goto_2
    move v0, v4

    .line 78
    :goto_3
    if-eqz v4, :cond_5

    .line 79
    .line 80
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 88
    .line 89
    .line 90
    :cond_5
    if-eqz v0, :cond_6

    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 93
    .line 94
    .line 95
    :cond_6
    return v4
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 2
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 5
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 6
    iput-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 8
    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 9
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 10
    iget-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    .line 11
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v0, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 12
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result p1

    iput p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 14
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 15
    new-instance v0, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 16
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 17
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 18
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 19
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result p1

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 21
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 23
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    goto :goto_1

    .line 24
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 25
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 26
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    return-void
.end method

.method public setColumnWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/widget/GridView;->mGravity:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 12
    .line 13
    :goto_0
    const/4 p1, 0x2

    .line 14
    iput p1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 15
    .line 16
    iget-object p1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setSelectionInt(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 14
    .line 15
    .line 16
    iget-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    iget v2, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 25
    .line 26
    sub-int/2addr v1, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget v1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 29
    .line 30
    :goto_0
    if-eqz p1, :cond_2

    .line 31
    .line 32
    iget p1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 33
    .line 34
    add-int/lit8 p1, p1, -0x1

    .line 35
    .line 36
    sub-int v0, p1, v0

    .line 37
    .line 38
    :cond_2
    iget p1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 39
    .line 40
    div-int/2addr v1, p1

    .line 41
    div-int/2addr v0, p1

    .line 42
    if-eq v1, v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 45
    .line 46
    .line 47
    :cond_3
    return-void
.end method

.method public setStretchMode(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    return-void
.end method
