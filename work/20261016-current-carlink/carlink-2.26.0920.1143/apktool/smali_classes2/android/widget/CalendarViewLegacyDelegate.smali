.class Landroid/widget/CalendarViewLegacyDelegate;
.super Landroid/widget/CalendarView$AbstractCalendarViewDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CalendarViewLegacyDelegate$WeekView;,
        Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;,
        Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;
    }
.end annotation


# static fields
.field private static final ADJUSTMENT_SCROLL_DURATION:I = 0x1f4

.field private static final DAYS_PER_WEEK:I = 0x7

.field private static final DEFAULT_DATE_TEXT_SIZE:I = 0xe

.field private static final DEFAULT_SHOWN_WEEK_COUNT:I = 0x6

.field private static final DEFAULT_SHOW_WEEK_NUMBER:Z = true

.field private static final DEFAULT_WEEK_DAY_TEXT_APPEARANCE_RES_ID:I = -0x1

.field private static final GOTO_SCROLL_DURATION:I = 0x3e8

.field private static final MILLIS_IN_DAY:J = 0x5265c00L

.field private static final MILLIS_IN_WEEK:J = 0x240c8400L

.field private static final SCROLL_CHANGE_DELAY:I = 0x28

.field private static final SCROLL_HYST_WEEKS:I = 0x2

.field private static final UNSCALED_BOTTOM_BUFFER:I = 0x14

.field private static final UNSCALED_LIST_SCROLL_TOP_OFFSET:I = 0x2

.field private static final UNSCALED_SELECTED_DATE_VERTICAL_BAR_WIDTH:I = 0x6

.field private static final UNSCALED_WEEK_MIN_VISIBLE_HEIGHT:I = 0xc

.field private static final UNSCALED_WEEK_SEPARATOR_LINE_WIDTH:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

.field private mBottomBuffer:I

.field private mCurrentMonthDisplayed:I

.field private mCurrentScrollState:I

.field private mDateTextAppearanceResId:I

.field private mDateTextSize:I

.field private mDayNamesHeader:Landroid/view/ViewGroup;

.field private mDayNamesLong:[Ljava/lang/String;

.field private mDayNamesShort:[Ljava/lang/String;

.field private mDaysPerWeek:I

.field private mFirstDayOfMonth:Landroid/icu/util/Calendar;

.field private mFirstDayOfWeek:I

.field private mFocusedMonthDateColor:I

.field private mFriction:F

.field private mIsScrollingUp:Z

.field private mListScrollTopOffset:I

.field private mListView:Landroid/widget/ListView;

.field private mMaxDate:Landroid/icu/util/Calendar;

.field private mMinDate:Landroid/icu/util/Calendar;

.field private mMonthName:Landroid/widget/TextView;

.field private mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

.field private mPreviousScrollPosition:J

.field private mPreviousScrollState:I

.field private mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

.field private mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

.field private final mSelectedDateVerticalBarWidth:I

.field private mSelectedWeekBackgroundColor:I

.field private mShowWeekNumber:Z

.field private mShownWeekCount:I

.field private mTempDate:Landroid/icu/util/Calendar;

.field private mUnfocusedMonthDateColor:I

.field private mVelocityScale:F

.field private mWeekDayTextAppearanceResId:I

.field private mWeekMinVisibleHeight:I

.field private mWeekNumberColor:I

.field private mWeekSeparatorLineColor:I

.field private final mWeekSeparatorLineWidth:I


# direct methods
.method public constructor <init>(Landroid/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x2

    .line 5
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    .line 6
    .line 7
    const/16 v0, 0xc

    .line 8
    .line 9
    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekMinVisibleHeight:I

    .line 10
    .line 11
    const/16 v1, 0x14

    .line 12
    .line 13
    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mBottomBuffer:I

    .line 14
    .line 15
    const/4 v1, 0x7

    .line 16
    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    .line 17
    .line 18
    const v2, 0x3d4ccccd    # 0.05f

    .line 19
    .line 20
    .line 21
    iput v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFriction:F

    .line 22
    .line 23
    const v2, 0x3eaa7efa    # 0.333f

    .line 24
    .line 25
    .line 26
    iput v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mVelocityScale:F

    .line 27
    .line 28
    const/4 v2, -0x1

    .line 29
    iput v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    iput-boolean v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    .line 33
    .line 34
    iput v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    .line 35
    .line 36
    iput v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentScrollState:I

    .line 37
    .line 38
    new-instance v4, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    invoke-direct {v4, p0, v5}, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;-><init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/CalendarViewLegacyDelegate$1;)V

    .line 42
    .line 43
    .line 44
    iput-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    .line 45
    .line 46
    sget-object v4, Lcom/android/internal/R$styleable;->CalendarView:[I

    .line 47
    .line 48
    invoke-virtual {p2, p3, v4, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const/4 p3, 0x1

    .line 53
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 54
    .line 55
    .line 56
    move-result p4

    .line 57
    iput-boolean p4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    .line 58
    .line 59
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 60
    .line 61
    .line 62
    move-result-object p4

    .line 63
    invoke-static {p4}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    .line 64
    .line 65
    .line 66
    move-result-object p4

    .line 67
    iget-object p4, p4, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result p4

    .line 73
    invoke-virtual {p2, v3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 74
    .line 75
    .line 76
    move-result p4

    .line 77
    iput p4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    .line 78
    .line 79
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object p4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 84
    .line 85
    invoke-static {p1, p4}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_0

    .line 90
    .line 91
    const-string p1, "01/01/1900"

    .line 92
    .line 93
    iget-object p4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 94
    .line 95
    invoke-static {p1, p4}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    .line 96
    .line 97
    .line 98
    :cond_0
    const/4 p1, 0x3

    .line 99
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iget-object p4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 104
    .line 105
    invoke-static {p1, p4}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_1

    .line 110
    .line 111
    const-string p1, "01/01/2100"

    .line 112
    .line 113
    iget-object p4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 114
    .line 115
    invoke-static {p1, p4}, Landroid/widget/CalendarView;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    .line 116
    .line 117
    .line 118
    :cond_1
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 119
    .line 120
    iget-object p4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 121
    .line 122
    invoke-static {p1, p4}, Landroid/widget/b;->p(Landroid/icu/util/Calendar;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_4

    .line 127
    .line 128
    const/4 p1, 0x4

    .line 129
    const/4 p4, 0x6

    .line 130
    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    .line 135
    .line 136
    const/4 p1, 0x5

    .line 137
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    .line 142
    .line 143
    invoke-virtual {p2, p4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    .line 148
    .line 149
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    .line 154
    .line 155
    const/16 p1, 0x9

    .line 156
    .line 157
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    .line 162
    .line 163
    const/16 p1, 0x8

    .line 164
    .line 165
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    .line 170
    .line 171
    const/16 p1, 0xa

    .line 172
    .line 173
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    .line 178
    .line 179
    const p1, 0x1030046

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    .line 187
    .line 188
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->updateDateTextSize()V

    .line 189
    .line 190
    .line 191
    const/16 p1, 0xb

    .line 192
    .line 193
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    .line 198
    .line 199
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 200
    .line 201
    .line 202
    iget-object p1, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    .line 203
    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    const/high16 p2, 0x41400000    # 12.0f

    .line 213
    .line 214
    invoke-static {p3, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    float-to-int p2, p2

    .line 219
    iput p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekMinVisibleHeight:I

    .line 220
    .line 221
    const/high16 p2, 0x40000000    # 2.0f

    .line 222
    .line 223
    invoke-static {p3, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 224
    .line 225
    .line 226
    move-result p2

    .line 227
    float-to-int p2, p2

    .line 228
    iput p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    .line 229
    .line 230
    const/high16 p2, 0x41a00000    # 20.0f

    .line 231
    .line 232
    invoke-static {p3, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 233
    .line 234
    .line 235
    move-result p2

    .line 236
    float-to-int p2, p2

    .line 237
    iput p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mBottomBuffer:I

    .line 238
    .line 239
    const/high16 p2, 0x40c00000    # 6.0f

    .line 240
    .line 241
    invoke-static {p3, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 242
    .line 243
    .line 244
    move-result p2

    .line 245
    float-to-int p2, p2

    .line 246
    iput p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBarWidth:I

    .line 247
    .line 248
    const/high16 p2, 0x3f800000    # 1.0f

    .line 249
    .line 250
    invoke-static {p3, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    float-to-int p1, p1

    .line 255
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineWidth:I

    .line 256
    .line 257
    iget-object p1, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mContext:Landroid/content/Context;

    .line 258
    .line 259
    const-string p2, "layout_inflater"

    .line 260
    .line 261
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    check-cast p1, Landroid/view/LayoutInflater;

    .line 266
    .line 267
    const p2, 0x1090040

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, p2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    iget-object p2, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    .line 275
    .line 276
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 277
    .line 278
    .line 279
    iget-object p2, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    .line 280
    .line 281
    const p4, 0x102000a

    .line 282
    .line 283
    .line 284
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 285
    .line 286
    .line 287
    move-result-object p2

    .line 288
    check-cast p2, Landroid/widget/ListView;

    .line 289
    .line 290
    iput-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 291
    .line 292
    const p2, 0x1020219

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 296
    .line 297
    .line 298
    move-result-object p2

    .line 299
    check-cast p2, Landroid/view/ViewGroup;

    .line 300
    .line 301
    iput-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    .line 302
    .line 303
    const p2, 0x1020308

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    check-cast p1, Landroid/widget/TextView;

    .line 311
    .line 312
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMonthName:Landroid/widget/TextView;

    .line 313
    .line 314
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    .line 315
    .line 316
    .line 317
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpListView()V

    .line 318
    .line 319
    .line 320
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpAdapter()V

    .line 321
    .line 322
    .line 323
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 324
    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 326
    .line 327
    .line 328
    move-result-wide p4

    .line 329
    invoke-static {p1, p4, p5}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 330
    .line 331
    .line 332
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 333
    .line 334
    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 335
    .line 336
    invoke-static {p1, p2}, Landroid/widget/b;->p(Landroid/icu/util/Calendar;Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result p1

    .line 340
    if-eqz p1, :cond_2

    .line 341
    .line 342
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 343
    .line 344
    invoke-direct {p0, p1, v3, p3, p3}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    .line 345
    .line 346
    .line 347
    goto :goto_0

    .line 348
    :cond_2
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 349
    .line 350
    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 351
    .line 352
    invoke-static {p1, p2}, Landroid/widget/b;->p(Landroid/icu/util/Calendar;Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    if-eqz p1, :cond_3

    .line 357
    .line 358
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 359
    .line 360
    invoke-direct {p0, p1, v3, p3, p3}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    .line 361
    .line 362
    .line 363
    goto :goto_0

    .line 364
    :cond_3
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 365
    .line 366
    invoke-direct {p0, p1, v3, p3, p3}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    .line 367
    .line 368
    .line 369
    :goto_0
    iget-object p1, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    .line 370
    .line 371
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 372
    .line 373
    .line 374
    return-void

    .line 375
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 376
    .line 377
    const-string p2, "Max date cannot be before min date."

    .line 378
    .line 379
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    throw p1
.end method

.method public static synthetic access$1002(Landroid/widget/CalendarViewLegacyDelegate;I)I
    .locals 0

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentScrollState:I

    return p1
.end method

.method public static synthetic access$1100(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 0

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    return p0
.end method

.method public static synthetic access$1102(Landroid/widget/CalendarViewLegacyDelegate;I)I
    .locals 0

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    return p1
.end method

.method public static synthetic access$1200(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 0

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    return p0
.end method

.method public static synthetic access$1300(Landroid/widget/CalendarViewLegacyDelegate;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    return p0
.end method

.method public static synthetic access$1400(Landroid/widget/CalendarViewLegacyDelegate;Landroid/icu/util/Calendar;)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getWeeksSinceMinDate(Landroid/icu/util/Calendar;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1500(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;
    .locals 0

    iget-object p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    return-object p0
.end method

.method public static synthetic access$1600(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;
    .locals 0

    iget-object p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    return-object p0
.end method

.method public static synthetic access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 0

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    return p0
.end method

.method public static synthetic access$1800(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method public static synthetic access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/icu/util/Calendar;
    .locals 0

    iget-object p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    return-object p0
.end method

.method public static synthetic access$2000(Landroid/widget/CalendarViewLegacyDelegate;Landroid/icu/util/Calendar;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Landroid/icu/util/Calendar;)V

    return-void
.end method

.method public static synthetic access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    return p0
.end method

.method public static synthetic access$2200(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 0

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    return p0
.end method

.method public static synthetic access$2300(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 0

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextSize:I

    return p0
.end method

.method public static synthetic access$2400(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 0

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    return p0
.end method

.method public static synthetic access$2500(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 0

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineWidth:I

    return p0
.end method

.method public static synthetic access$2600(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 0

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    return p0
.end method

.method public static synthetic access$2700(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 0

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    return p0
.end method

.method public static synthetic access$2800(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 0

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    return p0
.end method

.method public static synthetic access$2900(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 0

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    return p0
.end method

.method public static synthetic access$3000(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 0

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBarWidth:I

    return p0
.end method

.method public static synthetic access$3100(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic access$3200(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 0

    iget p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    return p0
.end method

.method public static synthetic access$600(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-object p0
.end method

.method public static synthetic access$700(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;
    .locals 0

    iget-object p0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    return-object p0
.end method

.method public static synthetic access$800(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/AbsListView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarViewLegacyDelegate;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public static synthetic access$900(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/AbsListView;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CalendarViewLegacyDelegate;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method private static getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/format/b;->k(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {p0}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-static {p1}, Landroid/text/format/b;->k(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0, v0, v1}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method private getWeeksSinceMinDate(Landroid/icu/util/Calendar;)I
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroid/widget/b;->p(Landroid/icu/util/Calendar;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-static {p1}, Landroid/widget/b;->f(Landroid/icu/util/Calendar;)Landroid/icu/util/TimeZone;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {p1}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    invoke-static {v2, v3, v4}, Landroid/widget/b;->b(Landroid/icu/util/TimeZone;J)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    int-to-long v2, p1

    .line 26
    add-long/2addr v0, v2

    .line 27
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 28
    .line 29
    invoke-static {p1}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 34
    .line 35
    invoke-static {p1}, Landroid/widget/b;->f(Landroid/icu/util/Calendar;)Landroid/icu/util/TimeZone;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 40
    .line 41
    invoke-static {v4}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    invoke-static {p1, v4, v5}, Landroid/widget/b;->b(Landroid/icu/util/TimeZone;J)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    int-to-long v4, p1

    .line 50
    add-long/2addr v2, v4

    .line 51
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 52
    .line 53
    invoke-static {p1}, Landroid/widget/b;->q(Landroid/icu/util/Calendar;)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    .line 58
    .line 59
    sub-int/2addr p1, v4

    .line 60
    int-to-long v4, p1

    .line 61
    const-wide/32 v6, 0x5265c00

    .line 62
    .line 63
    .line 64
    mul-long/2addr v4, v6

    .line 65
    sub-long/2addr v0, v2

    .line 66
    add-long/2addr v0, v4

    .line 67
    const-wide/32 v2, 0x240c8400

    .line 68
    .line 69
    .line 70
    div-long/2addr v0, v2

    .line 71
    long-to-int p1, v0

    .line 72
    return p1

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v2, "fromDate: "

    .line 78
    .line 79
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 83
    .line 84
    invoke-static {v2}, Landroid/widget/b;->i(Landroid/icu/util/Calendar;)Ljava/util/Date;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v2, " does not precede toDate: "

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Landroid/widget/b;->i(Landroid/icu/util/Calendar;)Ljava/util/Date;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v0
.end method

.method private goTo(Landroid/icu/util/Calendar;ZZZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroid/widget/b;->p(Landroid/icu/util/Calendar;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_8

    .line 8
    .line 9
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 10
    .line 11
    invoke-static {p1, v0}, Landroid/text/format/b;->x(Landroid/icu/util/Calendar;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_8

    .line 16
    .line 17
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-gez v3, :cond_0

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    :cond_0
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    .line 41
    .line 42
    add-int/2addr v3, v0

    .line 43
    add-int/lit8 v3, v3, -0x1

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mBottomBuffer:I

    .line 52
    .line 53
    if-le v1, v4, :cond_1

    .line 54
    .line 55
    add-int/lit8 v3, v3, -0x1

    .line 56
    .line 57
    :cond_1
    if-eqz p3, :cond_2

    .line 58
    .line 59
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setSelectedDay(Landroid/icu/util/Calendar;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getWeeksSinceMinDate(Landroid/icu/util/Calendar;)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-lt v1, v0, :cond_4

    .line 69
    .line 70
    if-gt v1, v3, :cond_4

    .line 71
    .line 72
    if-eqz p4, :cond_3

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    if-eqz p3, :cond_7

    .line 76
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Landroid/icu/util/Calendar;)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    :goto_0
    iget-object p3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    .line 82
    .line 83
    invoke-static {p1}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 84
    .line 85
    .line 86
    move-result-wide v0

    .line 87
    invoke-static {p3, v0, v1}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    .line 91
    .line 92
    invoke-static {p1}, Landroid/text/format/b;->s(Landroid/icu/util/Calendar;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    .line 96
    .line 97
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Landroid/icu/util/Calendar;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    .line 101
    .line 102
    iget-object p3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 103
    .line 104
    invoke-static {p1, p3}, Landroid/widget/b;->p(Landroid/icu/util/Calendar;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_5

    .line 109
    .line 110
    move p1, v2

    .line 111
    goto :goto_1

    .line 112
    :cond_5
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    .line 113
    .line 114
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getWeeksSinceMinDate(Landroid/icu/util/Calendar;)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    :goto_1
    const/4 p3, 0x2

    .line 119
    iput p3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    .line 120
    .line 121
    if-eqz p2, :cond_6

    .line 122
    .line 123
    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 124
    .line 125
    iget p3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    .line 126
    .line 127
    const/16 p4, 0x3e8

    .line 128
    .line 129
    invoke-virtual {p2, p1, p3, p4}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_6
    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 134
    .line 135
    iget p3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    .line 136
    .line 137
    invoke-virtual {p2, p1, p3}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 141
    .line 142
    invoke-direct {p0, p1, v2}, Landroid/widget/CalendarViewLegacyDelegate;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 143
    .line 144
    .line 145
    :cond_7
    :goto_2
    return-void

    .line 146
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 147
    .line 148
    const-string/jumbo p2, "timeInMillis must be between the values of getMinDate() and getMaxDate()"

    .line 149
    .line 150
    .line 151
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p1
.end method

.method private invalidateAllWeekViews()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method private static isSameDate(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/format/b;->c(Landroid/icu/util/Calendar;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/text/format/b;->c(Landroid/icu/util/Calendar;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p1}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-ne p0, p1, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method private onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 3
    .line 4
    .line 5
    move-result-object p3

    .line 6
    check-cast p3, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 7
    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 12
    .line 13
    .line 14
    move-result p4

    .line 15
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    mul-int/2addr v0, p4

    .line 20
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    .line 21
    .line 22
    .line 23
    move-result p4

    .line 24
    sub-int/2addr v0, p4

    .line 25
    int-to-long v0, v0

    .line 26
    iget-wide v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollPosition:J

    .line 27
    .line 28
    cmp-long p4, v0, v2

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    if-gez p4, :cond_1

    .line 32
    .line 33
    iput-boolean v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    if-lez p4, :cond_c

    .line 37
    .line 38
    iput-boolean p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    .line 41
    .line 42
    .line 43
    move-result p4

    .line 44
    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekMinVisibleHeight:I

    .line 45
    .line 46
    if-ge p4, v3, :cond_2

    .line 47
    .line 48
    move p2, v2

    .line 49
    :cond_2
    iget-boolean p4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    .line 50
    .line 51
    if-eqz p4, :cond_3

    .line 52
    .line 53
    add-int/lit8 p2, p2, 0x2

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    move-object p3, p1

    .line 60
    check-cast p3, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    if-eqz p2, :cond_4

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    move-object p3, p1

    .line 70
    check-cast p3, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 71
    .line 72
    :cond_4
    :goto_1
    if-eqz p3, :cond_b

    .line 73
    .line 74
    iget-boolean p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    .line 75
    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    invoke-virtual {p3}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getMonthOfFirstWeekDay()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    goto :goto_2

    .line 83
    :cond_5
    invoke-virtual {p3}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getMonthOfLastWeekDay()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    :goto_2
    iget p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    .line 88
    .line 89
    const/16 p4, 0xb

    .line 90
    .line 91
    if-ne p2, p4, :cond_6

    .line 92
    .line 93
    if-nez p1, :cond_6

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_6
    if-nez p2, :cond_7

    .line 97
    .line 98
    if-ne p1, p4, :cond_7

    .line 99
    .line 100
    const/4 v2, -0x1

    .line 101
    goto :goto_3

    .line 102
    :cond_7
    sub-int v2, p1, p2

    .line 103
    .line 104
    :goto_3
    iget-boolean p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    .line 105
    .line 106
    if-nez p1, :cond_8

    .line 107
    .line 108
    if-gtz v2, :cond_9

    .line 109
    .line 110
    :cond_8
    if-eqz p1, :cond_b

    .line 111
    .line 112
    if-gez v2, :cond_b

    .line 113
    .line 114
    :cond_9
    invoke-virtual {p3}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getFirstDay()Landroid/icu/util/Calendar;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget-boolean p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    .line 119
    .line 120
    if-eqz p2, :cond_a

    .line 121
    .line 122
    invoke-static {p1}, Landroid/widget/b;->l(Landroid/icu/util/Calendar;)V

    .line 123
    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_a
    invoke-static {p1}, Landroid/widget/b;->s(Landroid/icu/util/Calendar;)V

    .line 127
    .line 128
    .line 129
    :goto_4
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Landroid/icu/util/Calendar;)V

    .line 130
    .line 131
    .line 132
    :cond_b
    iput-wide v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollPosition:J

    .line 133
    .line 134
    iget p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentScrollState:I

    .line 135
    .line 136
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    .line 137
    .line 138
    :cond_c
    return-void
.end method

.method private onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method private setMonthDisplayed(Landroid/icu/util/Calendar;)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    .line 6
    .line 7
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setFocusMonth(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v5

    .line 16
    iget-object v2, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const/16 v7, 0x34

    .line 19
    .line 20
    move-wide v3, v5

    .line 21
    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMonthName:Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMonthName:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private setUpAdapter()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;-><init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    .line 13
    .line 14
    new-instance v1, Landroid/widget/CalendarViewLegacyDelegate$1;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Landroid/widget/CalendarViewLegacyDelegate$1;-><init>(Landroid/widget/CalendarViewLegacyDelegate;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 23
    .line 24
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private setUpHeader()V
    .locals 8

    .line 1
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    .line 2
    .line 3
    new-array v1, v0, [Ljava/lang/String;

    .line 4
    .line 5
    iput-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesShort:[Ljava/lang/String;

    .line 6
    .line 7
    new-array v1, v0, [Ljava/lang/String;

    .line 8
    .line 9
    iput-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesLong:[Ljava/lang/String;

    .line 10
    .line 11
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    .line 12
    .line 13
    add-int/2addr v0, v1

    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x7

    .line 17
    if-le v1, v2, :cond_0

    .line 18
    .line 19
    add-int/lit8 v2, v1, -0x7

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    move v2, v1

    .line 23
    :goto_1
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesShort:[Ljava/lang/String;

    .line 24
    .line 25
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    .line 26
    .line 27
    sub-int v4, v1, v4

    .line 28
    .line 29
    const/16 v5, 0x32

    .line 30
    .line 31
    invoke-static {v2, v5}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    aput-object v5, v3, v4

    .line 36
    .line 37
    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesLong:[Ljava/lang/String;

    .line 38
    .line 39
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    .line 40
    .line 41
    sub-int v4, v1, v4

    .line 42
    .line 43
    const/16 v5, 0xa

    .line 44
    .line 45
    invoke-static {v2, v5}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    aput-object v2, v3, v4

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/widget/TextView;

    .line 62
    .line 63
    iget-boolean v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    .line 64
    .line 65
    const/16 v3, 0x8

    .line 66
    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    :goto_2
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    const/4 v2, 0x1

    .line 83
    move v4, v2

    .line 84
    :goto_3
    if-ge v4, v0, :cond_5

    .line 85
    .line 86
    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    .line 87
    .line 88
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    check-cast v5, Landroid/widget/TextView;

    .line 93
    .line 94
    iget v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    .line 95
    .line 96
    const/4 v7, -0x1

    .line 97
    if-le v6, v7, :cond_3

    .line 98
    .line 99
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 100
    .line 101
    .line 102
    :cond_3
    iget v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    .line 103
    .line 104
    add-int/2addr v6, v2

    .line 105
    if-ge v4, v6, :cond_4

    .line 106
    .line 107
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesShort:[Ljava/lang/String;

    .line 108
    .line 109
    add-int/lit8 v7, v4, -0x1

    .line 110
    .line 111
    aget-object v6, v6, v7

    .line 112
    .line 113
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesLong:[Ljava/lang/String;

    .line 117
    .line 118
    aget-object v6, v6, v7

    .line 119
    .line 120
    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_4
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_5
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method private setUpListView()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 20
    .line 21
    new-instance v1, Landroid/widget/CalendarViewLegacyDelegate$2;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Landroid/widget/CalendarViewLegacyDelegate$2;-><init>(Landroid/widget/CalendarViewLegacyDelegate;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 30
    .line 31
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFriction:F

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setFriction(F)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 37
    .line 38
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mVelocityScale:F

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setVelocityScale(F)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private updateDateTextSize()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    .line 8
    .line 9
    sget-object v2, Lcom/android/internal/R$styleable;->TextAppearance:[I

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/16 v2, 0xe

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextSize:I

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public getBoundsForDate(JLandroid/graphics/Rect;)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/text/format/b;->j()Landroid/icu/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1, p2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 p2, 0x0

    .line 15
    move v1, p2

    .line 16
    :goto_0
    if-ge v1, p1, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 25
    .line 26
    invoke-virtual {v2, v0, p3}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getBoundsForDate(Landroid/icu/util/Calendar;Landroid/graphics/Rect;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    const/4 p1, 0x2

    .line 33
    new-array p2, p1, [I

    .line 34
    .line 35
    new-array p1, p1, [I

    .line 36
    .line 37
    invoke-virtual {v2, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    aget p2, p2, v0

    .line 47
    .line 48
    aget p1, p1, v0

    .line 49
    .line 50
    sub-int/2addr p2, p1

    .line 51
    iget p1, p3, Landroid/graphics/Rect;->top:I

    .line 52
    .line 53
    add-int/2addr p1, p2

    .line 54
    iput p1, p3, Landroid/graphics/Rect;->top:I

    .line 55
    .line 56
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    .line 57
    .line 58
    add-int/2addr p1, p2

    .line 59
    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    .line 60
    .line 61
    return v0

    .line 62
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return p2
.end method

.method public getDate()J
    .locals 2

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTextAppearance()I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    return v0
.end method

.method public getFocusedMonthDateColor()I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-static {v0}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-static {v0}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSelectedWeekBackgroundColor()I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    return v0
.end method

.method public getShowWeekNumber()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    return v0
.end method

.method public getShownWeekCount()I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    return v0
.end method

.method public getUnfocusedMonthDateColor()I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    return v0
.end method

.method public getWeekDayTextAppearance()I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    return v0
.end method

.method public getWeekNumberColor()I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    return v0
.end method

.method public getWeekSeparatorLineColor()I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 5
    .line 6
    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 11
    .line 12
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    .line 13
    .line 14
    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Landroid/icu/util/Calendar;

    .line 19
    .line 20
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 21
    .line 22
    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 27
    .line 28
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 29
    .line 30
    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 35
    .line 36
    return-void
.end method

.method public setDate(J)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/CalendarViewLegacyDelegate;->setDate(JZZ)V

    return-void
.end method

.method public setDate(JZZ)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-static {v0, p1, p2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 3
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-static {p2}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Landroid/icu/util/Calendar;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/widget/CalendarViewLegacyDelegate;->isSameDate(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p3, p2, p4}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    return-void
.end method

.method public setDateTextAppearance(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->updateDateTextSize()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->invalidateAllWeekViews()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    .line 7
    .line 8
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    .line 9
    .line 10
    invoke-static {p1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$500(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setFocusedMonthDateColor(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    .line 6
    .line 7
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-ge v0, p1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 23
    .line 24
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->access$200(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 31
    .line 32
    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public setMaxDate(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 7
    .line 8
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->isSameDate(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 18
    .line 19
    invoke-static {v0, p1, p2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    .line 23
    .line 24
    invoke-static {p1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$500(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    .line 28
    .line 29
    invoke-static {p1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Landroid/icu/util/Calendar;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 34
    .line 35
    invoke-static {p1, p2}, Landroid/text/format/b;->x(Landroid/icu/util/Calendar;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 42
    .line 43
    invoke-static {p1}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 44
    .line 45
    .line 46
    move-result-wide p1

    .line 47
    invoke-virtual {p0, p1, p2}, Landroid/widget/CalendarViewLegacyDelegate;->setDate(J)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 p2, 0x1

    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0, p2, v0}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public setMinDate(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 7
    .line 8
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->isSameDate(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 18
    .line 19
    invoke-static {v0, p1, p2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    .line 23
    .line 24
    invoke-static {p1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Landroid/icu/util/Calendar;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 29
    .line 30
    invoke-static {p1, p2}, Landroid/widget/b;->p(Landroid/icu/util/Calendar;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    .line 37
    .line 38
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 39
    .line 40
    invoke-virtual {p2, v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setSelectedDay(Landroid/icu/util/Calendar;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    .line 44
    .line 45
    invoke-static {p2}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$500(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 49
    .line 50
    invoke-static {p1, p2}, Landroid/widget/b;->p(Landroid/icu/util/Calendar;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-eqz p2, :cond_2

    .line 55
    .line 56
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 57
    .line 58
    invoke-static {p1}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 59
    .line 60
    .line 61
    move-result-wide p1

    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/widget/CalendarViewLegacyDelegate;->setDate(J)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 p2, 0x1

    .line 67
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0, p2, v0}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Landroid/icu/util/Calendar;ZZZ)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method public setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-void
.end method

.method public setSelectedDateVerticalBar(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 3
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    .line 4
    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    .line 5
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 6
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 7
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->access$100(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSelectedWeekBackgroundColor(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    .line 6
    .line 7
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-ge v0, p1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 23
    .line 24
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->access$100(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 31
    .line 32
    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public setShowWeekNumber(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    .line 7
    .line 8
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setShownWeekCount(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    .line 6
    .line 7
    iget-object p1, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setUnfocusedMonthDateColor(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    .line 6
    .line 7
    iget-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-ge v0, p1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    .line 23
    .line 24
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->access$300(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 31
    .line 32
    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setWeekNumberColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    .line 6
    .line 7
    iget-boolean p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->invalidateAllWeekViews()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setWeekSeparatorLineColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->invalidateAllWeekViews()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
