.class Landroid/widget/DatePickerSpinnerDelegate;
.super Landroid/widget/DatePicker$AbstractDatePickerDelegate;
.source "SourceFile"


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c


# instance fields
.field private final mCalendarView:Landroid/widget/CalendarView;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private final mDaySpinner:Landroid/widget/NumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mIsEnabled:Z

.field private mMaxDate:Landroid/icu/util/Calendar;

.field private mMinDate:Landroid/icu/util/Calendar;

.field private final mMonthSpinner:Landroid/widget/NumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Landroid/icu/util/Calendar;

.field private final mYearSpinner:Landroid/widget/NumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 5
    .line 6
    const-string v1, "MM/dd/yyyy"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    .line 15
    .line 16
    iput-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 17
    .line 18
    iput-object p2, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/DatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lcom/android/internal/R$styleable;->DatePicker:[I

    .line 28
    .line 29
    invoke-virtual {p2, p3, p1, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 p3, 0x6

    .line 34
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    const/4 p4, 0x7

    .line 39
    invoke-virtual {p1, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 40
    .line 41
    .line 42
    move-result p4

    .line 43
    const/16 p5, 0x76c

    .line 44
    .line 45
    invoke-virtual {p1, v0, p5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 46
    .line 47
    .line 48
    move-result p5

    .line 49
    const/16 v1, 0x834

    .line 50
    .line 51
    const/4 v2, 0x2

    .line 52
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const/4 v2, 0x4

    .line 57
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const/4 v3, 0x5

    .line 62
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    const/16 v4, 0x14

    .line 67
    .line 68
    const v5, 0x109004c

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    .line 77
    .line 78
    const-string p1, "layout_inflater"

    .line 79
    .line 80
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Landroid/view/LayoutInflater;

    .line 85
    .line 86
    iget-object p2, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 87
    .line 88
    invoke-virtual {p1, v4, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const/4 p2, 0x0

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 94
    .line 95
    .line 96
    new-instance p1, Landroid/widget/DatePickerSpinnerDelegate$1;

    .line 97
    .line 98
    invoke-direct {p1, p0}, Landroid/widget/DatePickerSpinnerDelegate$1;-><init>(Landroid/widget/DatePickerSpinnerDelegate;)V

    .line 99
    .line 100
    .line 101
    iget-object v4, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 102
    .line 103
    const v5, 0x1020365

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Landroid/widget/LinearLayout;

    .line 111
    .line 112
    iput-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    .line 113
    .line 114
    iget-object v4, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 115
    .line 116
    const v5, 0x10201e6

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    check-cast v4, Landroid/widget/CalendarView;

    .line 124
    .line 125
    iput-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    .line 126
    .line 127
    new-instance v5, Landroid/widget/DatePickerSpinnerDelegate$2;

    .line 128
    .line 129
    invoke-direct {v5, p0}, Landroid/widget/DatePickerSpinnerDelegate$2;-><init>(Landroid/widget/DatePickerSpinnerDelegate;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v5}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    .line 133
    .line 134
    .line 135
    iget-object v4, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 136
    .line 137
    const v5, 0x1020218

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    check-cast v4, Landroid/widget/NumberPicker;

    .line 145
    .line 146
    iput-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    .line 147
    .line 148
    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 153
    .line 154
    .line 155
    const-wide/16 v5, 0x64

    .line 156
    .line 157
    invoke-virtual {v4, v5, v6}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, p1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 161
    .line 162
    .line 163
    const v7, 0x1020336

    .line 164
    .line 165
    .line 166
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    check-cast v4, Landroid/widget/EditText;

    .line 171
    .line 172
    iput-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 173
    .line 174
    iget-object v4, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 175
    .line 176
    const v8, 0x1020307

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    check-cast v4, Landroid/widget/NumberPicker;

    .line 184
    .line 185
    iput-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 186
    .line 187
    invoke-virtual {v4, p2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 188
    .line 189
    .line 190
    iget p2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    .line 191
    .line 192
    sub-int/2addr p2, v0

    .line 193
    invoke-virtual {v4, p2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 194
    .line 195
    .line 196
    iget-object p2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v4, p2}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const-wide/16 v8, 0xc8

    .line 202
    .line 203
    invoke-virtual {v4, v8, v9}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4, p1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    check-cast p2, Landroid/widget/EditText;

    .line 214
    .line 215
    iput-object p2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 216
    .line 217
    iget-object p2, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 218
    .line 219
    const v4, 0x10204a7

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    check-cast p2, Landroid/widget/NumberPicker;

    .line 227
    .line 228
    iput-object p2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    .line 229
    .line 230
    invoke-virtual {p2, v5, v6}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p2, p1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    check-cast p1, Landroid/widget/EditText;

    .line 241
    .line 242
    iput-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 243
    .line 244
    if-nez p3, :cond_0

    .line 245
    .line 246
    if-nez p4, :cond_0

    .line 247
    .line 248
    invoke-virtual {p0, v0}, Landroid/widget/DatePickerSpinnerDelegate;->setSpinnersShown(Z)V

    .line 249
    .line 250
    .line 251
    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p0, p3}, Landroid/widget/DatePickerSpinnerDelegate;->setSpinnersShown(Z)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0, p4}, Landroid/widget/DatePickerSpinnerDelegate;->setCalendarViewShown(Z)V

    .line 256
    .line 257
    .line 258
    :goto_0
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 259
    .line 260
    invoke-static {p1}, Landroid/widget/b;->v(Landroid/icu/util/Calendar;)V

    .line 261
    .line 262
    .line 263
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    if-nez p1, :cond_1

    .line 268
    .line 269
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 270
    .line 271
    invoke-direct {p0, v2, p1}, Landroid/widget/DatePickerSpinnerDelegate;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    if-nez p1, :cond_2

    .line 276
    .line 277
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 278
    .line 279
    invoke-static {p1, p5}, Landroid/widget/d;->t(Landroid/icu/util/Calendar;I)V

    .line 280
    .line 281
    .line 282
    goto :goto_1

    .line 283
    :cond_1
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 284
    .line 285
    invoke-static {p1, p5}, Landroid/widget/d;->t(Landroid/icu/util/Calendar;I)V

    .line 286
    .line 287
    .line 288
    :cond_2
    :goto_1
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 289
    .line 290
    invoke-static {p1}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 291
    .line 292
    .line 293
    move-result-wide p1

    .line 294
    invoke-virtual {p0, p1, p2}, Landroid/widget/DatePickerSpinnerDelegate;->setMinDate(J)V

    .line 295
    .line 296
    .line 297
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 298
    .line 299
    invoke-static {p1}, Landroid/widget/b;->v(Landroid/icu/util/Calendar;)V

    .line 300
    .line 301
    .line 302
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 303
    .line 304
    .line 305
    move-result p1

    .line 306
    if-nez p1, :cond_3

    .line 307
    .line 308
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 309
    .line 310
    invoke-direct {p0, v3, p1}, Landroid/widget/DatePickerSpinnerDelegate;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    .line 311
    .line 312
    .line 313
    move-result p1

    .line 314
    if-nez p1, :cond_4

    .line 315
    .line 316
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 317
    .line 318
    invoke-static {p1, v1}, Landroid/widget/d;->w(Landroid/icu/util/Calendar;I)V

    .line 319
    .line 320
    .line 321
    goto :goto_2

    .line 322
    :cond_3
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 323
    .line 324
    invoke-static {p1, v1}, Landroid/widget/d;->w(Landroid/icu/util/Calendar;I)V

    .line 325
    .line 326
    .line 327
    :cond_4
    :goto_2
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 328
    .line 329
    invoke-static {p1}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 330
    .line 331
    .line 332
    move-result-wide p1

    .line 333
    invoke-virtual {p0, p1, p2}, Landroid/widget/DatePickerSpinnerDelegate;->setMaxDate(J)V

    .line 334
    .line 335
    .line 336
    iget-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 337
    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 339
    .line 340
    .line 341
    move-result-wide p2

    .line 342
    invoke-static {p1, p2, p3}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 343
    .line 344
    .line 345
    iget-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 346
    .line 347
    invoke-static {p1}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 348
    .line 349
    .line 350
    move-result p1

    .line 351
    iget-object p2, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 352
    .line 353
    invoke-static {p2}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    .line 354
    .line 355
    .line 356
    move-result p2

    .line 357
    iget-object p3, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 358
    .line 359
    invoke-static {p3}, Landroid/widget/b;->x(Landroid/icu/util/Calendar;)I

    .line 360
    .line 361
    .line 362
    move-result p3

    .line 363
    const/4 p4, 0x0

    .line 364
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/DatePickerSpinnerDelegate;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 365
    .line 366
    .line 367
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->reorderSpinners()V

    .line 368
    .line 369
    .line 370
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->setContentDescriptions()V

    .line 371
    .line 372
    .line 373
    iget-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 374
    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    .line 376
    .line 377
    .line 378
    move-result p1

    .line 379
    if-nez p1, :cond_5

    .line 380
    .line 381
    iget-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 382
    .line 383
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 384
    .line 385
    .line 386
    :cond_5
    return-void
.end method

.method public static synthetic access$000(Landroid/widget/DatePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateInputState()V

    return-void
.end method

.method public static synthetic access$100(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/icu/util/Calendar;
    .locals 0

    iget-object p0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 0

    iget-object p0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 0

    iget-object p0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/widget/DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 0

    iget-object p0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/widget/DatePickerSpinnerDelegate;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerSpinnerDelegate;->setDate(III)V

    return-void
.end method

.method public static synthetic access$600(Landroid/widget/DatePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    return-void
.end method

.method public static synthetic access$700(Landroid/widget/DatePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    return-void
.end method

.method public static synthetic access$800(Landroid/widget/DatePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->notifyDateChanged()V

    return-void
.end method

.method private getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {p2}, Landroid/text/format/b;->k(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-static {p1}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-static {p2}, Landroid/text/format/b;->k(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1, v0, v1}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method

.method private isNewDate(III)Z
    .locals 1

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
    if-ne v0, p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 10
    .line 11
    invoke-static {p1}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-ne p1, p2, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 18
    .line 19
    invoke-static {p1}, Landroid/widget/b;->x(Landroid/icu/util/Calendar;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eq p1, p3, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 29
    :goto_1
    return p1
.end method

.method private notifyDateChanged()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getYear()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getMonth()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getDayOfMonth()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mAutoFillChangeListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getYear()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getMonth()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getDayOfMonth()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method private parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p2, p1}, Landroid/text/format/b;->t(Landroid/icu/util/Calendar;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method private reorderSpinners()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string/jumbo v1, "yyyyMMMdd"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    array-length v1, v0

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-ge v2, v1, :cond_3

    .line 24
    .line 25
    aget-char v3, v0, v2

    .line 26
    .line 27
    const/16 v4, 0x4d

    .line 28
    .line 29
    if-eq v3, v4, :cond_2

    .line 30
    .line 31
    const/16 v4, 0x64

    .line 32
    .line 33
    if-eq v3, v4, :cond_1

    .line 34
    .line 35
    const/16 v4, 0x79

    .line 36
    .line 37
    if-ne v3, v4, :cond_0

    .line 38
    .line 39
    iget-object v3, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    .line 40
    .line 41
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    .line 47
    .line 48
    invoke-direct {p0, v3, v1, v2}, Landroid/widget/DatePickerSpinnerDelegate;->setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v1

    .line 62
    :cond_1
    iget-object v3, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    .line 63
    .line 64
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    iget-object v3, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    .line 70
    .line 71
    invoke-direct {p0, v3, v1, v2}, Landroid/widget/DatePickerSpinnerDelegate;->setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    iget-object v3, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    .line 76
    .line 77
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    iget-object v3, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 83
    .line 84
    invoke-direct {p0, v3, v1, v2}, Landroid/widget/DatePickerSpinnerDelegate;->setImeOptions(Landroid/widget/NumberPicker;II)V

    .line 85
    .line 86
    .line 87
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    return-void
.end method

.method private setContentDescriptions()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    .line 2
    .line 3
    const v1, 0x1040186

    .line 4
    .line 5
    .line 6
    const v2, 0x10202a2

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    .line 13
    .line 14
    const v1, 0x1040182

    .line 15
    .line 16
    .line 17
    const v3, 0x102021d

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 24
    .line 25
    const v1, 0x1040187

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 32
    .line 33
    const v1, 0x1040183

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    .line 40
    .line 41
    const v1, 0x1040188

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    .line 48
    .line 49
    const v1, 0x1040184

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DatePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private setDate(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Landroid/widget/b;->n(Landroid/icu/util/Calendar;III)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->resetAutofilledValue()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 10
    .line 11
    iget-object p2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 12
    .line 13
    invoke-static {p1, p2}, Landroid/widget/b;->p(Landroid/icu/util/Calendar;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 20
    .line 21
    iget-object p2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 22
    .line 23
    invoke-static {p2}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 24
    .line 25
    .line 26
    move-result-wide p2

    .line 27
    invoke-static {p1, p2, p3}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 32
    .line 33
    iget-object p2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 34
    .line 35
    invoke-static {p1, p2}, Landroid/text/format/b;->x(Landroid/icu/util/Calendar;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 42
    .line 43
    iget-object p2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 44
    .line 45
    invoke-static {p2}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 46
    .line 47
    .line 48
    move-result-wide p2

    .line 49
    invoke-static {p1, p2, p3}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method private setImeOptions(Landroid/widget/NumberPicker;II)V
    .locals 0

    .line 1
    add-int/lit8 p2, p2, -0x1

    .line 2
    .line 3
    if-ge p3, p2, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x5

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p2, 0x6

    .line 8
    :goto_0
    const p3, 0x1020336

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private updateCalendarView()V
    .locals 4

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    iget-object v1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-static {v1}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/CalendarView;->setDate(JZZ)V

    return-void
.end method

.method private updateInputState()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Landroid/widget/DatePicker;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_0
    return-void
.end method

.method private updateSpinners()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/widget/d;->m(Landroid/icu/util/Calendar;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    .line 15
    .line 16
    iget-object v4, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 17
    .line 18
    invoke-static {v4}, Landroid/widget/b;->x(Landroid/icu/util/Calendar;)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-virtual {v0, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    .line 26
    .line 27
    iget-object v4, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 28
    .line 29
    invoke-static {v4}, Landroid/widget/d;->a(Landroid/icu/util/Calendar;)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-virtual {v0, v4}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 47
    .line 48
    iget-object v1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 49
    .line 50
    invoke-static {v1}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 58
    .line 59
    iget-object v1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 60
    .line 61
    invoke-static {v1}, Landroid/widget/d;->o(Landroid/icu/util/Calendar;)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 75
    .line 76
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 77
    .line 78
    invoke-static {v0, v4}, Landroid/widget/d;->m(Landroid/icu/util/Calendar;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    .line 85
    .line 86
    iget-object v4, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 87
    .line 88
    invoke-static {v4}, Landroid/widget/d;->r(Landroid/icu/util/Calendar;)I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    invoke-virtual {v0, v4}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    .line 96
    .line 97
    iget-object v4, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 98
    .line 99
    invoke-static {v4}, Landroid/widget/b;->x(Landroid/icu/util/Calendar;)I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    invoke-virtual {v0, v4}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 117
    .line 118
    iget-object v1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 119
    .line 120
    invoke-static {v1}, Landroid/widget/d;->u(Landroid/icu/util/Calendar;)I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 128
    .line 129
    iget-object v1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 130
    .line 131
    invoke-static {v1}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    .line 145
    .line 146
    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    .line 150
    .line 151
    iget-object v4, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 152
    .line 153
    invoke-static {v4}, Landroid/widget/d;->a(Landroid/icu/util/Calendar;)I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    invoke-virtual {v0, v4}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    .line 161
    .line 162
    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 171
    .line 172
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 176
    .line 177
    const/16 v1, 0xb

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 183
    .line 184
    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 185
    .line 186
    .line 187
    :goto_0
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    .line 188
    .line 189
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 190
    .line 191
    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMinValue()I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    iget-object v4, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 196
    .line 197
    invoke-virtual {v4}, Landroid/widget/NumberPicker;->getMaxValue()I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    add-int/2addr v4, v3

    .line 202
    invoke-static {v0, v1, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, [Ljava/lang/String;

    .line 207
    .line 208
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 209
    .line 210
    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    .line 214
    .line 215
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 216
    .line 217
    invoke-static {v1}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 222
    .line 223
    .line 224
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    .line 225
    .line 226
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 227
    .line 228
    invoke-static {v1}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 233
    .line 234
    .line 235
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    .line 236
    .line 237
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 238
    .line 239
    .line 240
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    .line 241
    .line 242
    iget-object v1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 243
    .line 244
    invoke-static {v1}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 249
    .line 250
    .line 251
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 252
    .line 253
    iget-object v1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 254
    .line 255
    invoke-static {v1}, Landroid/widget/b;->u(Landroid/icu/util/Calendar;)I

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 260
    .line 261
    .line 262
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    .line 263
    .line 264
    iget-object v1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 265
    .line 266
    invoke-static {v1}, Landroid/widget/b;->x(Landroid/icu/util/Calendar;)I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 271
    .line 272
    .line 273
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->usingNumericMonths()Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-eqz v0, :cond_2

    .line 278
    .line 279
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 280
    .line 281
    const/4 v1, 0x2

    .line 282
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 283
    .line 284
    .line 285
    :cond_2
    return-void
.end method

.method private usingNumericMonths()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()Landroid/icu/util/Calendar;
    .locals 3

    .line 1
    invoke-static {}, Landroid/text/format/b;->j()Landroid/icu/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/widget/CalendarView;->getMaxDate()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-static {v0, v1, v2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public getMinDate()Landroid/icu/util/Calendar;
    .locals 3

    .line 1
    invoke-static {}, Landroid/text/format/b;->j()Landroid/icu/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/widget/CalendarView;->getMinDate()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-static {v0, v1, v2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 12
    .line 13
    .line 14
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

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerSpinnerDelegate;->setDate(III)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 8
    .line 9
    .line 10
    iput-object p4, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 11
    .line 12
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Landroid/widget/DatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedYear()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedMonth()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->getSelectedDay()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-direct {p0, v0, v1, p1}, Landroid/widget/DatePickerSpinnerDelegate;->setDate(III)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 10

    .line 1
    new-instance v9, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getYear()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getMonth()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getDayOfMonth()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getMinDate()Landroid/icu/util/Calendar;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    invoke-virtual {p0}, Landroid/widget/DatePickerSpinnerDelegate;->getMaxDate()Landroid/icu/util/Calendar;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v7

    .line 31
    move-object v0, v9

    .line 32
    move-object v1, p1

    .line 33
    invoke-direct/range {v0 .. v8}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJ)V

    .line 34
    .line 35
    .line 36
    return-object v9
.end method

.method public setCalendarViewShown(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 5
    .line 6
    invoke-direct {p0, v0, p1}, Landroid/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 11
    .line 12
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 13
    .line 14
    invoke-direct {p0, v0, p1}, Landroid/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 19
    .line 20
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 21
    .line 22
    invoke-direct {p0, v0, p1}, Landroid/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 27
    .line 28
    iget-object v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 29
    .line 30
    invoke-direct {p0, v0, p1}, Landroid/widget/DatePickerSpinnerDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 35
    .line 36
    iget-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 37
    .line 38
    invoke-static {p1}, Landroid/widget/d;->o(Landroid/icu/util/Calendar;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/4 v0, 0x1

    .line 43
    add-int/2addr p1, v0

    .line 44
    iput p1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    .line 45
    .line 46
    new-instance p1, Ljava/text/DateFormatSymbols;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    .line 56
    .line 57
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->usingNumericMonths()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    iget p1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    .line 64
    .line 65
    new-array p1, p1, [Ljava/lang/String;

    .line 66
    .line 67
    iput-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    .line 68
    .line 69
    const/4 p1, 0x0

    .line 70
    move v1, p1

    .line 71
    :goto_0
    iget v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mNumberOfMonths:I

    .line 72
    .line 73
    if-ge v1, v2, :cond_0

    .line 74
    .line 75
    iget-object v2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    .line 76
    .line 77
    new-array v3, v0, [Ljava/lang/Object;

    .line 78
    .line 79
    add-int/lit8 v4, v1, 0x1

    .line 80
    .line 81
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    aput-object v5, v3, p1

    .line 86
    .line 87
    const-string v5, "%d"

    .line 88
    .line 89
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    aput-object v3, v2, v1

    .line 94
    .line 95
    move v1, v4

    .line 96
    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 19
    .line 20
    .line 21
    iput-boolean p1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mIsEnabled:Z

    .line 22
    .line 23
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setFirstDayOfWeek(I)V

    return-void
.end method

.method public setMaxDate(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

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
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 21
    .line 22
    invoke-static {v0}, Landroid/text/format/b;->c(Landroid/icu/util/Calendar;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

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
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 36
    .line 37
    invoke-static {v0, p1, p2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    .line 41
    .line 42
    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMaxDate(J)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 46
    .line 47
    iget-object p2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 48
    .line 49
    invoke-static {p1, p2}, Landroid/text/format/b;->x(Landroid/icu/util/Calendar;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iget-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 56
    .line 57
    iget-object p2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 58
    .line 59
    invoke-static {p2}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    invoke-static {p1, v0, v1}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public setMinDate(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/widget/b;->a(Landroid/icu/util/Calendar;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

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
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 21
    .line 22
    invoke-static {v0}, Landroid/text/format/b;->c(Landroid/icu/util/Calendar;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

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
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 36
    .line 37
    invoke-static {v0, p1, p2}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mCalendarView:Landroid/widget/CalendarView;

    .line 41
    .line 42
    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMinDate(J)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 46
    .line 47
    iget-object p2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 48
    .line 49
    invoke-static {p1, p2}, Landroid/widget/b;->p(Landroid/icu/util/Calendar;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iget-object p1, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 56
    .line 57
    iget-object p2, p0, Landroid/widget/DatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 58
    .line 59
    invoke-static {p2}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    invoke-static {p1, v0, v1}, Landroid/widget/b;->o(Landroid/icu/util/Calendar;J)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateDate(III)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerSpinnerDelegate;->isNewDate(III)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DatePickerSpinnerDelegate;->setDate(III)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateSpinners()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->updateCalendarView()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Landroid/widget/DatePickerSpinnerDelegate;->notifyDateChanged()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
