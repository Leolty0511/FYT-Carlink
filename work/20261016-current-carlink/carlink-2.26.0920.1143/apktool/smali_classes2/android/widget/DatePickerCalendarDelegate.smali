.class Landroid/widget/DatePickerCalendarDelegate;
.super Landroid/widget/DatePicker$AbstractDatePickerDelegate;
.source "SourceFile"


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final ATTRS_DISABLED_ALPHA:[I

.field private static final ATTRS_TEXT_COLOR:[I

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final UNINITIALIZED:I = -0x1

.field private static final USE_LOCALE:I = 0x0

.field private static final VIEW_MONTH_DAY:I = 0x0

.field private static final VIEW_YEAR:I = 0x1


# instance fields
.field private mAnimator:Landroid/widget/ViewAnimator;

.field private mContainer:Landroid/view/ViewGroup;

.field private mCurrentView:I

.field private mDayPickerView:Landroid/widget/DayPickerView;

.field private mFirstDayOfWeek:I

.field private mHeaderMonthDay:Landroid/widget/TextView;

.field private mHeaderYear:Landroid/widget/TextView;

.field private final mMaxDate:Landroid/icu/util/Calendar;

.field private final mMinDate:Landroid/icu/util/Calendar;

.field private mMonthDayFormat:Landroid/icu/text/DateFormat;

.field private final mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

.field private final mOnHeaderClickListener:Landroid/view/View$OnClickListener;

.field private final mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

.field private mSelectDay:Ljava/lang/String;

.field private mSelectYear:Ljava/lang/String;

.field private final mTempDate:Landroid/icu/util/Calendar;

.field private mYearFormat:Landroid/icu/text/DateFormat;

.field private mYearPickerView:Landroid/widget/YearPickerView;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    const v2, 0x1010098

    .line 5
    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    aput v2, v1, v3

    .line 9
    .line 10
    sput-object v1, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_TEXT_COLOR:[I

    .line 11
    .line 12
    new-array v0, v0, [I

    .line 13
    .line 14
    const v1, 0x1010033

    .line 15
    .line 16
    .line 17
    aput v1, v0, v3

    .line 18
    .line 19
    sput-object v0, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_DISABLED_ALPHA:[I

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    .line 9
    .line 10
    new-instance p2, Landroid/widget/DatePickerCalendarDelegate$1;

    .line 11
    .line 12
    invoke-direct {p2, p0}, Landroid/widget/DatePickerCalendarDelegate$1;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Landroid/widget/DatePickerCalendarDelegate;->mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    .line 16
    .line 17
    new-instance v0, Landroid/widget/DatePickerCalendarDelegate$2;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Landroid/widget/DatePickerCalendarDelegate$2;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

    .line 23
    .line 24
    new-instance v1, Landroid/widget/e;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Landroid/widget/e;-><init>(Landroid/widget/DatePickerCalendarDelegate;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mOnHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 30
    .line 31
    iget-object v2, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 32
    .line 33
    invoke-static {v2}, Landroid/text/format/b;->k(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iput-object v3, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 38
    .line 39
    invoke-static {v2}, Landroid/text/format/b;->k(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iput-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 44
    .line 45
    invoke-static {v2}, Landroid/text/format/b;->k(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    iput-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 50
    .line 51
    invoke-static {v2}, Landroid/text/format/b;->k(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iput-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 56
    .line 57
    invoke-static {v3}, Landroid/widget/b;->C(Landroid/icu/util/Calendar;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v2}, Landroid/widget/b;->D(Landroid/icu/util/Calendar;)V

    .line 61
    .line 62
    .line 63
    iget-object v4, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 64
    .line 65
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    iget-object v5, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    sget-object v6, Lcom/android/internal/R$styleable;->DatePicker:[I

    .line 72
    .line 73
    invoke-virtual {v5, p3, v6, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    iget-object p4, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    const-string p5, "layout_inflater"

    .line 80
    .line 81
    invoke-virtual {p4, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p4

    .line 85
    check-cast p4, Landroid/view/LayoutInflater;

    .line 86
    .line 87
    const/16 p5, 0x13

    .line 88
    .line 89
    const v5, 0x109004e

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, p5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 93
    .line 94
    .line 95
    move-result p5

    .line 96
    iget-object v5, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 97
    .line 98
    invoke-virtual {p4, p5, v5, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p4

    .line 102
    check-cast p4, Landroid/view/ViewGroup;

    .line 103
    .line 104
    iput-object p4, p0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    .line 105
    .line 106
    invoke-virtual {p4, p1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 107
    .line 108
    .line 109
    iget-object p4, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 110
    .line 111
    iget-object p5, p0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    .line 112
    .line 113
    invoke-virtual {p4, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 114
    .line 115
    .line 116
    iget-object p4, p0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    .line 117
    .line 118
    const p5, 0x1020213

    .line 119
    .line 120
    .line 121
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object p4

    .line 125
    check-cast p4, Landroid/view/ViewGroup;

    .line 126
    .line 127
    const p5, 0x1020215

    .line 128
    .line 129
    .line 130
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object p5

    .line 134
    check-cast p5, Landroid/widget/TextView;

    .line 135
    .line 136
    iput-object p5, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 137
    .line 138
    invoke-virtual {p5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    .line 140
    .line 141
    const p5, 0x1020214

    .line 142
    .line 143
    .line 144
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object p5

    .line 148
    check-cast p5, Landroid/widget/TextView;

    .line 149
    .line 150
    iput-object p5, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    .line 151
    .line 152
    invoke-virtual {p5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    .line 154
    .line 155
    const/16 p5, 0xa

    .line 156
    .line 157
    invoke-virtual {p3, p5, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 158
    .line 159
    .line 160
    move-result p5

    .line 161
    const/4 v1, 0x0

    .line 162
    if-eqz p5, :cond_0

    .line 163
    .line 164
    iget-object v5, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    .line 165
    .line 166
    sget-object v6, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_TEXT_COLOR:[I

    .line 167
    .line 168
    invoke-virtual {v5, v1, v6, p1, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 169
    .line 170
    .line 171
    move-result-object p5

    .line 172
    invoke-virtual {p5, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-direct {p0, v1}, Landroid/widget/DatePickerCalendarDelegate;->applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {p5}, Landroid/content/res/TypedArray;->recycle()V

    .line 181
    .line 182
    .line 183
    :cond_0
    if-nez v1, :cond_1

    .line 184
    .line 185
    const/16 p5, 0x12

    .line 186
    .line 187
    invoke-virtual {p3, p5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    :cond_1
    if-eqz v1, :cond_2

    .line 192
    .line 193
    iget-object p5, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 194
    .line 195
    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 196
    .line 197
    .line 198
    iget-object p5, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    .line 199
    .line 200
    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 201
    .line 202
    .line 203
    :cond_2
    invoke-virtual {p3, p1}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    .line 204
    .line 205
    .line 206
    move-result p5

    .line 207
    if-eqz p5, :cond_3

    .line 208
    .line 209
    invoke-virtual {p3, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 210
    .line 211
    .line 212
    move-result-object p5

    .line 213
    invoke-virtual {p4, p5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 214
    .line 215
    .line 216
    :cond_3
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 217
    .line 218
    .line 219
    iget-object p3, p0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    .line 220
    .line 221
    const p4, 0x10201ab

    .line 222
    .line 223
    .line 224
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object p3

    .line 228
    check-cast p3, Landroid/widget/ViewAnimator;

    .line 229
    .line 230
    iput-object p3, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    .line 231
    .line 232
    const p4, 0x1020212

    .line 233
    .line 234
    .line 235
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object p3

    .line 239
    check-cast p3, Landroid/widget/DayPickerView;

    .line 240
    .line 241
    iput-object p3, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    .line 242
    .line 243
    iget p4, p0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    .line 244
    .line 245
    invoke-virtual {p3, p4}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    .line 246
    .line 247
    .line 248
    iget-object p3, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    .line 249
    .line 250
    invoke-static {v3}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 251
    .line 252
    .line 253
    move-result-wide p4

    .line 254
    invoke-virtual {p3, p4, p5}, Landroid/widget/DayPickerView;->setMinDate(J)V

    .line 255
    .line 256
    .line 257
    iget-object p3, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    .line 258
    .line 259
    invoke-static {v2}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 260
    .line 261
    .line 262
    move-result-wide p4

    .line 263
    invoke-virtual {p3, p4, p5}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    .line 264
    .line 265
    .line 266
    iget-object p3, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    .line 267
    .line 268
    iget-object p4, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 269
    .line 270
    invoke-static {p4}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 271
    .line 272
    .line 273
    move-result-wide p4

    .line 274
    invoke-virtual {p3, p4, p5}, Landroid/widget/DayPickerView;->setDate(J)V

    .line 275
    .line 276
    .line 277
    iget-object p3, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    .line 278
    .line 279
    invoke-virtual {p3, p2}, Landroid/widget/DayPickerView;->setOnDaySelectedListener(Landroid/widget/DayPickerView$OnDaySelectedListener;)V

    .line 280
    .line 281
    .line 282
    iget-object p2, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    .line 283
    .line 284
    const p3, 0x1020216

    .line 285
    .line 286
    .line 287
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 288
    .line 289
    .line 290
    move-result-object p2

    .line 291
    check-cast p2, Landroid/widget/YearPickerView;

    .line 292
    .line 293
    iput-object p2, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    .line 294
    .line 295
    invoke-virtual {p2, v3, v2}, Landroid/widget/YearPickerView;->setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V

    .line 296
    .line 297
    .line 298
    iget-object p2, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    .line 299
    .line 300
    iget-object p3, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 301
    .line 302
    invoke-static {p3}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 303
    .line 304
    .line 305
    move-result p3

    .line 306
    invoke-virtual {p2, p3}, Landroid/widget/YearPickerView;->setYear(I)V

    .line 307
    .line 308
    .line 309
    iget-object p2, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    .line 310
    .line 311
    invoke-virtual {p2, v0}, Landroid/widget/YearPickerView;->setOnYearSelectedListener(Landroid/widget/YearPickerView$OnYearSelectedListener;)V

    .line 312
    .line 313
    .line 314
    const p2, 0x1040598

    .line 315
    .line 316
    .line 317
    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p2

    .line 321
    iput-object p2, p0, Landroid/widget/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    .line 322
    .line 323
    const p2, 0x104059e

    .line 324
    .line 325
    .line 326
    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p2

    .line 330
    iput-object p2, p0, Landroid/widget/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    .line 331
    .line 332
    iget-object p2, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 333
    .line 334
    invoke-virtual {p0, p2}, Landroid/widget/DatePickerCalendarDelegate;->onLocaleChanged(Ljava/util/Locale;)V

    .line 335
    .line 336
    .line 337
    invoke-direct {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    .line 338
    .line 339
    .line 340
    return-void
.end method

.method public static synthetic a(Landroid/widget/DatePickerCalendarDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/DatePickerCalendarDelegate;->lambda$setCurrentView$1()V

    return-void
.end method

.method public static synthetic access$000(Landroid/widget/DatePickerCalendarDelegate;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    return-void
.end method

.method public static synthetic access$100(Landroid/widget/DatePickerCalendarDelegate;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    return-void
.end method

.method public static synthetic access$200(Landroid/widget/DatePickerCalendarDelegate;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    return-object p0
.end method

.method private applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 7

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    const v0, 0x10102fe

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/res/ColorStateList;->hasState(I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    const v1, 0x10100a1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/content/res/ColorStateList;->hasState(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const/16 v1, 0xa

    .line 24
    .line 25
    invoke-static {v1}, Landroid/util/StateSet;->get(I)[I

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/16 v3, 0x8

    .line 34
    .line 35
    invoke-static {v3}, Landroid/util/StateSet;->get(I)[I

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {p1, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iget-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    sget-object v3, Landroid/widget/DatePickerCalendarDelegate;->ATTRS_DISABLED_ALPHA:[I

    .line 51
    .line 52
    invoke-virtual {p1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const v3, 0x3e99999a    # 0.3f

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-direct {p0, v1, p1}, Landroid/widget/DatePickerCalendarDelegate;->multiplyAlphaComponent(IF)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    :goto_0
    if-eqz v1, :cond_3

    .line 68
    .line 69
    if-nez p1, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const/4 v3, 0x2

    .line 73
    new-array v4, v3, [[I

    .line 74
    .line 75
    const/4 v5, 0x1

    .line 76
    new-array v6, v5, [I

    .line 77
    .line 78
    aput v0, v6, v2

    .line 79
    .line 80
    aput-object v6, v4, v2

    .line 81
    .line 82
    new-array v0, v2, [I

    .line 83
    .line 84
    aput-object v0, v4, v5

    .line 85
    .line 86
    new-array v0, v3, [I

    .line 87
    .line 88
    aput v1, v0, v2

    .line 89
    .line 90
    aput p1, v0, v5

    .line 91
    .line 92
    new-instance p1, Landroid/content/res/ColorStateList;

    .line 93
    .line 94
    invoke-direct {p1, v4, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 95
    .line 96
    .line 97
    return-object p1

    .line 98
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 99
    :cond_4
    :goto_2
    return-object p1
.end method

.method public static synthetic b(Landroid/widget/DatePickerCalendarDelegate;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static getDaysInMonth(II)I
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    const-string p1, "Invalid Month"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0

    .line 12
    :pswitch_0
    const/16 p0, 0x1e

    .line 13
    .line 14
    return p0

    .line 15
    :pswitch_1
    rem-int/lit8 p1, p1, 0x4

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const/16 p0, 0x1d

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/16 p0, 0x1c

    .line 23
    .line 24
    :goto_0
    return p0

    .line 25
    :pswitch_2
    const/16 p0, 0x1f

    .line 26
    .line 27
    return p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/DatePickerCalendarDelegate;->tryVibrate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_0
    const/4 p1, 0x1

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_1
    const/4 p1, 0x0

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x1020214
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$setCurrentView$1()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private multiplyAlphaComponent(IF)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr v0, p1

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    return p1
.end method

.method private onCurrentDateChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearFormat:Landroid/icu/text/DateFormat;

    .line 7
    .line 8
    iget-object v1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/widget/b;->i(Landroid/icu/util/Calendar;)Ljava/util/Date;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Landroid/widget/b;->h(Landroid/icu/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Landroid/icu/text/DateFormat;

    .line 24
    .line 25
    iget-object v1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 26
    .line 27
    invoke-static {v1}, Landroid/widget/b;->i(Landroid/icu/util/Calendar;)Ljava/util/Date;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Landroid/widget/b;->h(Landroid/icu/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->getFormattedCurrentDate()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method private onDateChanged(ZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    iget-object p2, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 14
    .line 15
    if-eqz p2, :cond_2

    .line 16
    .line 17
    :cond_0
    iget-object p2, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 18
    .line 19
    invoke-static {p2}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    iget-object v1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 24
    .line 25
    invoke-static {v1}, Landroid/widget/b;->x(Landroid/icu/util/Calendar;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget-object v2, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    iget-object v3, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 34
    .line 35
    invoke-interface {v2, v3, v0, p2, v1}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v2, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    iget-object v3, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 43
    .line 44
    invoke-interface {v2, v3, v0, p2, v1}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object p2, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    .line 48
    .line 49
    iget-object v1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 50
    .line 51
    invoke-static {v1}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    invoke-virtual {p2, v1, v2}, Landroid/widget/DayPickerView;->setDate(J)V

    .line 56
    .line 57
    .line 58
    iget-object p2, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    .line 59
    .line 60
    invoke-virtual {p2, v0}, Landroid/widget/YearPickerView;->setYear(I)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    .line 64
    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    invoke-direct {p0}, Landroid/widget/DatePickerCalendarDelegate;->tryVibrate()V

    .line 69
    .line 70
    .line 71
    :cond_3
    return-void
.end method

.method private setCurrentView(I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    if-eq p1, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 9
    .line 10
    invoke-static {v2}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Landroid/widget/YearPickerView;->setYear(I)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    .line 20
    .line 21
    new-instance v3, Landroid/widget/f;

    .line 22
    .line 23
    invoke-direct {v3, p0, v0}, Landroid/widget/f;-><init>(Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    iget v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 30
    .line 31
    if-eq v2, p1, :cond_1

    .line 32
    .line 33
    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Landroid/view/View;->setActivated(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 46
    .line 47
    .line 48
    iput p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 49
    .line 50
    :cond_1
    iget-object p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    .line 51
    .line 52
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mSelectYear:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    .line 59
    .line 60
    iget-object v3, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 61
    .line 62
    invoke-static {v3}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v3

    .line 66
    invoke-virtual {v2, v3, v4}, Landroid/widget/DayPickerView;->setDate(J)V

    .line 67
    .line 68
    .line 69
    iget v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 70
    .line 71
    if-eq v2, p1, :cond_3

    .line 72
    .line 73
    iget-object v2, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    .line 74
    .line 75
    invoke-virtual {v2, v1}, Landroid/view/View;->setActivated(Z)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 86
    .line 87
    .line 88
    iput p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 89
    .line 90
    :cond_3
    iget-object p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mAnimator:Landroid/widget/ViewAnimator;

    .line 91
    .line 92
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mSelectDay:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    return-void
.end method

.method private setDate(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/widget/b;->w(Landroid/icu/util/Calendar;I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 7
    .line 8
    invoke-static {p1, p2}, Landroid/widget/d;->j(Landroid/icu/util/Calendar;I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 12
    .line 13
    invoke-static {p1, p3}, Landroid/widget/d;->q(Landroid/icu/util/Calendar;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->resetAutofilledValue()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private tryVibrate()V
    .locals 2

    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported by calendar-mode DatePicker"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-static {v0}, Landroid/widget/b;->x(Landroid/icu/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/widget/b;->B(Landroid/icu/util/Calendar;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public getMaxDate()Landroid/icu/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method public getMinDate()Landroid/icu/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    return-object v0
.end method

.method public getMonth()I
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-static {v0}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getYear()I
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-static {v0}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerCalendarDelegate;->setDate(III)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1, p1}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 6
    .line 7
    .line 8
    iput-object p4, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 9
    .line 10
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onLocaleChanged(Ljava/util/Locale;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/widget/b;->c(Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMonthDayFormat:Landroid/icu/text/DateFormat;

    .line 11
    .line 12
    invoke-static {}, Landroid/widget/b;->d()Landroid/icu/text/DisplayContext;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Landroid/widget/b;->k(Landroid/icu/text/DateFormat;Landroid/icu/text/DisplayContext;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Landroid/widget/b;->r(Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearFormat:Landroid/icu/text/DateFormat;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 1
    instance-of v0, p1, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    .line 6
    .line 7
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedYear()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedMonth()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedDay()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-static {v0, v1, v2, v3}, Landroid/widget/b;->n(Landroid/icu/util/Calendar;III)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getMinDate()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-static {v0, v1, v2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getMaxDate()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    invoke-static {v0, v1, v2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0}, Landroid/widget/DatePickerCalendarDelegate;->onCurrentDateChanged(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getCurrentView()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-direct {p0, v0}, Landroid/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getListPosition()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/4 v2, -0x1

    .line 58
    if-eq v1, v2, :cond_1

    .line 59
    .line 60
    if-nez v0, :cond_0

    .line 61
    .line 62
    iget-object p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Landroid/widget/DayPickerView;->setPosition(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/4 v2, 0x1

    .line 69
    if-ne v0, v2, :cond_1

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getListPositionOffset()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    .line 76
    .line 77
    invoke-virtual {v0, v1, p1}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 13

    .line 1
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 4
    .line 5
    .line 6
    move-result v3

    .line 7
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/widget/b;->x(Landroid/icu/util/Calendar;)I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    iget v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getMostVisiblePosition()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    :goto_0
    move v11, v0

    .line 31
    move v12, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const/4 v2, 0x1

    .line 34
    if-ne v0, v2, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/widget/YearPickerView;->getFirstPositionOffset()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v11, v1

    .line 50
    move v12, v11

    .line 51
    :goto_1
    new-instance v0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    .line 52
    .line 53
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 54
    .line 55
    invoke-static {v1}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v6

    .line 59
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 60
    .line 61
    invoke-static {v1}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v8

    .line 65
    iget v10, p0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentView:I

    .line 66
    .line 67
    move-object v1, v0

    .line 68
    move-object v2, p1

    .line 69
    invoke-direct/range {v1 .. v12}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJIII)V

    .line 70
    .line 71
    .line 72
    return-object v0
.end method

.method public setCalendarViewShown(Z)V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mHeaderMonthDay:Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mFirstDayOfWeek:I

    .line 2
    .line 3
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setMaxDate(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 13
    .line 14
    invoke-static {v1}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 21
    .line 22
    invoke-static {v0}, Landroid/text/format/b;->c(Landroid/icu/util/Calendar;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 27
    .line 28
    invoke-static {v1}, Landroid/text/format/b;->c(Landroid/icu/util/Calendar;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ne v0, v1, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 36
    .line 37
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 38
    .line 39
    invoke-static {v0, v1}, Landroid/text/format/b;->x(Landroid/icu/util/Calendar;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 46
    .line 47
    invoke-static {v0, p1, p2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-direct {p0, v0, v1}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 56
    .line 57
    invoke-static {v0, p1, p2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    .line 61
    .line 62
    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    .line 66
    .line 67
    iget-object p2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 68
    .line 69
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 70
    .line 71
    invoke-virtual {p1, p2, v0}, Landroid/widget/YearPickerView;->setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public setMinDate(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 13
    .line 14
    invoke-static {v1}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 21
    .line 22
    invoke-static {v0}, Landroid/text/format/b;->c(Landroid/icu/util/Calendar;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 27
    .line 28
    invoke-static {v1}, Landroid/text/format/b;->c(Landroid/icu/util/Calendar;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ne v0, v1, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 36
    .line 37
    iget-object v1, p0, Landroid/widget/DatePickerCalendarDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 38
    .line 39
    invoke-static {v0, v1}, Landroid/widget/b;->p(Landroid/icu/util/Calendar;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 46
    .line 47
    invoke-static {v0, p1, p2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-direct {p0, v0, v1}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 56
    .line 57
    invoke-static {v0, p1, p2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mDayPickerView:Landroid/widget/DayPickerView;

    .line 61
    .line 62
    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMinDate(J)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Landroid/widget/DatePickerCalendarDelegate;->mYearPickerView:Landroid/widget/YearPickerView;

    .line 66
    .line 67
    iget-object p2, p0, Landroid/widget/DatePickerCalendarDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 68
    .line 69
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 70
    .line 71
    invoke-virtual {p1, p2, v0}, Landroid/widget/YearPickerView;->setRange(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 0

    return-void
.end method

.method public updateDate(III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerCalendarDelegate;->setDate(III)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    const/4 p2, 0x1

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
