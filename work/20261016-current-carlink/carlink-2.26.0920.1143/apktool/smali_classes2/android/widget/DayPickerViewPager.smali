.class Landroid/widget/DayPickerViewPager;
.super Lcom/android/internal/widget/ViewPager;
.source "SourceFile"


# instance fields
.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p0}, Landroid/text/format/b;->y(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/widget/DayPickerPagerAdapter;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getCurrent()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/DayPickerPagerAdapter;->getView(Ljava/lang/Object;)Landroid/widget/SimpleMonthView;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eq v0, p2, :cond_1

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x0

    .line 38
    :goto_0
    if-ge v2, v1, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-eq v3, p2, :cond_2

    .line 45
    .line 46
    if-eq v3, v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    return-object v3

    .line 55
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const/4 p1, 0x0

    .line 59
    return-object p1
.end method

.method public onMeasure(II)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    const/high16 v4, 0x40000000    # 2.0f

    .line 15
    .line 16
    if-ne v1, v4, :cond_1

    .line 17
    .line 18
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eq v1, v4, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v3

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    move v1, v2

    .line 28
    :goto_1
    move v5, v3

    .line 29
    move v6, v5

    .line 30
    move v7, v6

    .line 31
    move v8, v7

    .line 32
    :goto_2
    const/4 v9, -0x1

    .line 33
    if-ge v5, v0, :cond_4

    .line 34
    .line 35
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v10

    .line 39
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 40
    .line 41
    .line 42
    move-result v11

    .line 43
    const/16 v12, 0x8

    .line 44
    .line 45
    if-eq v11, v12, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0, v10, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 51
    .line 52
    .line 53
    move-result-object v11

    .line 54
    check-cast v11, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 55
    .line 56
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 57
    .line 58
    .line 59
    move-result v12

    .line 60
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 65
    .line 66
    .line 67
    move-result v12

    .line 68
    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredState()I

    .line 73
    .line 74
    .line 75
    move-result v12

    .line 76
    invoke-static {v8, v12}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    iget v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 83
    .line 84
    if-eq v12, v9, :cond_2

    .line 85
    .line 86
    iget v11, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 87
    .line 88
    if-ne v11, v9, :cond_3

    .line 89
    .line 90
    :cond_2
    iget-object v9, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    add-int/2addr v1, v0

    .line 107
    add-int/2addr v1, v6

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    add-int/2addr v5, v0

    .line 117
    add-int/2addr v5, v7

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    if-eqz v5, :cond_5

    .line 139
    .line 140
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    :cond_5
    invoke-static {v1, p1, v8}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    shl-int/lit8 v5, v8, 0x10

    .line 161
    .line 162
    invoke-static {v0, p2, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-le v0, v2, :cond_8

    .line 176
    .line 177
    :goto_3
    if-ge v3, v0, :cond_8

    .line 178
    .line 179
    iget-object v1, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Landroid/view/View;

    .line 186
    .line 187
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    check-cast v2, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 192
    .line 193
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 194
    .line 195
    if-ne v5, v9, :cond_6

    .line 196
    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    sub-int/2addr v5, v6

    .line 206
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    sub-int/2addr v5, v6

    .line 211
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    goto :goto_4

    .line 216
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    add-int/2addr v6, v5

    .line 225
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 226
    .line 227
    invoke-static {p1, v6, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    :goto_4
    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 232
    .line 233
    if-ne v6, v9, :cond_7

    .line 234
    .line 235
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    sub-int/2addr v2, v6

    .line 244
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    sub-int/2addr v2, v6

    .line 249
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    goto :goto_5

    .line 254
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 255
    .line 256
    .line 257
    move-result v6

    .line 258
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 259
    .line 260
    .line 261
    move-result v7

    .line 262
    add-int/2addr v7, v6

    .line 263
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 264
    .line 265
    invoke-static {p2, v7, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    :goto_5
    invoke-virtual {v1, v5, v2}, Landroid/view/View;->measure(II)V

    .line 270
    .line 271
    .line 272
    add-int/lit8 v3, v3, 0x1

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_8
    iget-object p1, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 278
    .line 279
    .line 280
    return-void
.end method
