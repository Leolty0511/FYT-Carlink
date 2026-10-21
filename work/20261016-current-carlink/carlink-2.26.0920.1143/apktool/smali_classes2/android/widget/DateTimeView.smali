.class public Landroid/widget/DateTimeView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DateTimeView$ReceiverInfo;
    }
.end annotation


# static fields
.field private static final SHOW_MONTH_DAY_YEAR:I = 0x1

.field private static final SHOW_TIME:I

.field private static final sReceiverInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/widget/DateTimeView$ReceiverInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mLastDisplay:I

.field mLastFormat:Ljava/text/DateFormat;

.field private mNowText:Ljava/lang/String;

.field private mShowRelativeTime:Z

.field mTime:Ljava/util/Date;

.field mTimeMillis:J

.field private mUpdateTimeMillis:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/DateTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    .line 4
    sget-object v0, Lcom/android/internal/R$styleable;->DateTimeView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 8
    invoke-virtual {p0, v2}, Landroid/widget/DateTimeView;->setShowRelativeTime(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic access$100(Landroid/widget/DateTimeView;)J
    .locals 2

    iget-wide v0, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    return-wide v0
.end method

.method private computeNextMidnight(Ljava/util/TimeZone;)J
    .locals 2

    .line 1
    invoke-static {}, Landroid/text/format/b;->j()Landroid/icu/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Llibcore/icu/DateUtilsBridge;->icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {v0, p1}, Landroid/widget/d;->k(Landroid/icu/util/Calendar;Landroid/icu/util/TimeZone;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroid/widget/b;->y(Landroid/icu/util/Calendar;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroid/widget/d;->s(Landroid/icu/util/Calendar;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Landroid/widget/d;->v(Landroid/icu/util/Calendar;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroid/widget/d;->y(Landroid/icu/util/Calendar;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Landroid/widget/d;->B(Landroid/icu/util/Calendar;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Landroid/text/format/b;->e(Landroid/icu/util/Calendar;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    return-wide v0
.end method

.method private static dayDistance(Ljava/util/TimeZone;JJ)I
    .locals 2

    .line 1
    invoke-virtual {p0, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/lit16 v0, v0, 0x3e8

    .line 6
    .line 7
    int-to-long v0, v0

    .line 8
    invoke-static {p3, p4, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    invoke-virtual {p0, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    div-int/lit16 p0, p0, 0x3e8

    .line 17
    .line 18
    int-to-long v0, p0

    .line 19
    invoke-static {p1, p2, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    sub-int/2addr p3, p0

    .line 24
    return p3
.end method

.method private getTimeFormat()Ljava/text/DateFormat;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static setReceiverHandler(Landroid/os/Handler;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v2}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView$1;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v1, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->setHandler(Landroid/os/Handler;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private updateNowText()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const v1, 0x10403e8

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method private updateRelativeTime()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-wide v3, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    .line 8
    .line 9
    sub-long v3, v1, v3

    .line 10
    .line 11
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    iget-wide v5, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    .line 16
    .line 17
    cmp-long v5, v1, v5

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x1

    .line 21
    if-ltz v5, :cond_0

    .line 22
    .line 23
    move v5, v7

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v5, v6

    .line 26
    :goto_0
    const-wide/32 v8, 0xea60

    .line 27
    .line 28
    .line 29
    cmp-long v10, v3, v8

    .line 30
    .line 31
    const-wide/16 v11, 0x1

    .line 32
    .line 33
    if-gez v10, :cond_1

    .line 34
    .line 35
    iget-object v1, v0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    iget-wide v1, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    .line 41
    .line 42
    add-long/2addr v1, v8

    .line 43
    add-long/2addr v1, v11

    .line 44
    iput-wide v1, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    const-wide/32 v13, 0x36ee80

    .line 48
    .line 49
    .line 50
    cmp-long v10, v3, v13

    .line 51
    .line 52
    const-wide/16 v15, -0x1

    .line 53
    .line 54
    if-gez v10, :cond_3

    .line 55
    .line 56
    div-long/2addr v3, v8

    .line 57
    long-to-int v1, v3

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-eqz v5, :cond_2

    .line 67
    .line 68
    const v3, 0x115000c

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const v3, 0x115000d

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    new-array v3, v7, [Ljava/lang/Object;

    .line 80
    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    aput-object v4, v3, v6

    .line 86
    .line 87
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    goto/16 :goto_6

    .line 92
    .line 93
    :cond_3
    const-wide/32 v8, 0x5265c00

    .line 94
    .line 95
    .line 96
    cmp-long v10, v3, v8

    .line 97
    .line 98
    if-gez v10, :cond_5

    .line 99
    .line 100
    div-long/2addr v3, v13

    .line 101
    long-to-int v1, v3

    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-eqz v5, :cond_4

    .line 111
    .line 112
    const v3, 0x1150008

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_4
    const v3, 0x1150009

    .line 117
    .line 118
    .line 119
    :goto_2
    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    new-array v3, v7, [Ljava/lang/Object;

    .line 124
    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    aput-object v4, v3, v6

    .line 130
    .line 131
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    :goto_3
    move-wide v8, v13

    .line 136
    goto :goto_6

    .line 137
    :cond_5
    const-wide v13, 0x7528ad000L

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    cmp-long v10, v3, v13

    .line 143
    .line 144
    if-gez v10, :cond_8

    .line 145
    .line 146
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    iget-wide v13, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    .line 151
    .line 152
    invoke-static {v3, v13, v14, v1, v2}, Landroid/widget/DateTimeView;->dayDistance(Ljava/util/TimeZone;JJ)I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    if-eqz v5, :cond_6

    .line 173
    .line 174
    const v4, 0x1150004

    .line 175
    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_6
    const v4, 0x1150005

    .line 179
    .line 180
    .line 181
    :goto_4
    invoke-virtual {v2, v4, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    new-array v4, v7, [Ljava/lang/Object;

    .line 186
    .line 187
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    aput-object v10, v4, v6

    .line 192
    .line 193
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    if-nez v5, :cond_7

    .line 198
    .line 199
    if-eq v1, v7, :cond_a

    .line 200
    .line 201
    :cond_7
    invoke-direct {v0, v3}, Landroid/widget/DateTimeView;->computeNextMidnight(Ljava/util/TimeZone;)J

    .line 202
    .line 203
    .line 204
    move-result-wide v3

    .line 205
    iput-wide v3, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 206
    .line 207
    move-wide v8, v15

    .line 208
    goto :goto_6

    .line 209
    :cond_8
    div-long/2addr v3, v13

    .line 210
    long-to-int v1, v3

    .line 211
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    if-eqz v5, :cond_9

    .line 220
    .line 221
    const v3, 0x1150010

    .line 222
    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_9
    const v3, 0x1150011

    .line 226
    .line 227
    .line 228
    :goto_5
    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    new-array v3, v7, [Ljava/lang/Object;

    .line 233
    .line 234
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    aput-object v4, v3, v6

    .line 239
    .line 240
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    goto :goto_3

    .line 245
    :cond_a
    :goto_6
    cmp-long v3, v8, v15

    .line 246
    .line 247
    if-eqz v3, :cond_c

    .line 248
    .line 249
    if-eqz v5, :cond_b

    .line 250
    .line 251
    iget-wide v3, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    .line 252
    .line 253
    add-int/2addr v1, v7

    .line 254
    int-to-long v5, v1

    .line 255
    mul-long/2addr v8, v5

    .line 256
    add-long/2addr v8, v3

    .line 257
    add-long/2addr v8, v11

    .line 258
    iput-wide v8, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 259
    .line 260
    goto :goto_7

    .line 261
    :cond_b
    iget-wide v3, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    .line 262
    .line 263
    int-to-long v5, v1

    .line 264
    mul-long/2addr v8, v5

    .line 265
    sub-long/2addr v3, v8

    .line 266
    add-long/2addr v3, v11

    .line 267
    iput-wide v3, v0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 268
    .line 269
    :cond_c
    :goto_7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    .line 271
    .line 272
    return-void
.end method


# virtual methods
.method public clearFormatAndUpdate()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, v2}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView$1;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {v1, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->addView(Landroid/widget/DateTimeView;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/widget/DateTimeView;->sReceiverInfo:Ljava/lang/ThreadLocal;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->removeView(Landroid/widget/DateTimeView;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    .line 5
    .line 6
    if-eqz v0, :cond_9

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-wide v2, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    .line 13
    .line 14
    sub-long v2, v0, v2

    .line 15
    .line 16
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    iget-wide v4, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    .line 21
    .line 22
    cmp-long v4, v0, v4

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x1

    .line 26
    if-ltz v4, :cond_0

    .line 27
    .line 28
    move v4, v6

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v4, v5

    .line 31
    :goto_0
    const-wide/32 v7, 0xea60

    .line 32
    .line 33
    .line 34
    cmp-long v9, v2, v7

    .line 35
    .line 36
    if-gez v9, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Landroid/widget/DateTimeView;->mNowText:Ljava/lang/String;

    .line 39
    .line 40
    goto/16 :goto_5

    .line 41
    .line 42
    :cond_1
    const-wide/32 v9, 0x36ee80

    .line 43
    .line 44
    .line 45
    cmp-long v11, v2, v9

    .line 46
    .line 47
    if-gez v11, :cond_3

    .line 48
    .line 49
    div-long/2addr v2, v7

    .line 50
    long-to-int v0, v2

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    const v2, 0x115000a

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const v2, 0x115000b

    .line 66
    .line 67
    .line 68
    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-array v2, v6, [Ljava/lang/Object;

    .line 73
    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    aput-object v0, v2, v5

    .line 79
    .line 80
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    goto/16 :goto_5

    .line 85
    .line 86
    :cond_3
    const-wide/32 v7, 0x5265c00

    .line 87
    .line 88
    .line 89
    cmp-long v7, v2, v7

    .line 90
    .line 91
    if-gez v7, :cond_5

    .line 92
    .line 93
    div-long/2addr v2, v9

    .line 94
    long-to-int v0, v2

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eqz v4, :cond_4

    .line 104
    .line 105
    const v2, 0x1150006

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    const v2, 0x1150007

    .line 110
    .line 111
    .line 112
    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    new-array v2, v6, [Ljava/lang/Object;

    .line 117
    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    aput-object v0, v2, v5

    .line 123
    .line 124
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    goto :goto_5

    .line 129
    :cond_5
    const-wide v7, 0x7528ad000L

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    cmp-long v9, v2, v7

    .line 135
    .line 136
    if-gez v9, :cond_7

    .line 137
    .line 138
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    iget-wide v7, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    .line 143
    .line 144
    invoke-static {v2, v7, v8, v0, v1}, Landroid/widget/DateTimeView;->dayDistance(Ljava/util/TimeZone;JJ)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    if-eqz v4, :cond_6

    .line 165
    .line 166
    const v2, 0x1150002

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_6
    const v2, 0x1150003

    .line 171
    .line 172
    .line 173
    :goto_3
    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    new-array v2, v6, [Ljava/lang/Object;

    .line 178
    .line 179
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    aput-object v0, v2, v5

    .line 184
    .line 185
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    goto :goto_5

    .line 190
    :cond_7
    div-long/2addr v2, v7

    .line 191
    long-to-int v0, v2

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    if-eqz v4, :cond_8

    .line 201
    .line 202
    const v2, 0x115000e

    .line 203
    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_8
    const v2, 0x115000f

    .line 207
    .line 208
    .line 209
    :goto_4
    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    new-array v2, v6, [Ljava/lang/Object;

    .line 214
    .line 215
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    aput-object v0, v2, v5

    .line 220
    .line 221
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    :goto_5
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 226
    .line 227
    .line 228
    :cond_9
    return-void
.end method

.method public setShowRelativeTime(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateNowText()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setTime(J)V
    .locals 8
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    new-instance v0, Landroid/text/format/Time;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {v0, p1}, Landroid/text/format/Time;->toMillis(Z)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    iput-wide p1, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    .line 15
    .line 16
    new-instance p1, Ljava/util/Date;

    .line 17
    .line 18
    iget p2, v0, Landroid/text/format/Time;->year:I

    .line 19
    .line 20
    add-int/lit16 v2, p2, -0x76c

    .line 21
    .line 22
    iget v3, v0, Landroid/text/format/Time;->month:I

    .line 23
    .line 24
    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    .line 25
    .line 26
    iget v5, v0, Landroid/text/format/Time;->hour:I

    .line 27
    .line 28
    iget v6, v0, Landroid/text/format/Time;->minute:I

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    move-object v1, p1

    .line 32
    invoke-direct/range {v1 .. v7}, Ljava/util/Date;-><init>(IIIIII)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v1, v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public update()V
    .locals 14

    .line 1
    iget-object v0, p0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    .line 2
    .line 3
    if-eqz v0, :cond_c

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_0
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mShowRelativeTime:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateRelativeTime()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance v0, Landroid/text/format/Time;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iput v1, v0, Landroid/text/format/Time;->second:I

    .line 35
    .line 36
    iget v2, v0, Landroid/text/format/Time;->hour:I

    .line 37
    .line 38
    add-int/lit8 v2, v2, -0xc

    .line 39
    .line 40
    iput v2, v0, Landroid/text/format/Time;->hour:I

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    iget v4, v0, Landroid/text/format/Time;->hour:I

    .line 47
    .line 48
    add-int/lit8 v4, v4, 0xc

    .line 49
    .line 50
    iput v4, v0, Landroid/text/format/Time;->hour:I

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 57
    .line 58
    iput v1, v0, Landroid/text/format/Time;->minute:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    .line 61
    .line 62
    .line 63
    move-result-wide v6

    .line 64
    iget v8, v0, Landroid/text/format/Time;->monthDay:I

    .line 65
    .line 66
    const/4 v9, 0x1

    .line 67
    add-int/2addr v8, v9

    .line 68
    iput v8, v0, Landroid/text/format/Time;->monthDay:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    .line 71
    .line 72
    .line 73
    move-result-wide v10

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v12

    .line 78
    invoke-virtual {v0, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 79
    .line 80
    .line 81
    iput v1, v0, Landroid/text/format/Time;->second:I

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 84
    .line 85
    .line 86
    move-result-wide v12

    .line 87
    cmp-long v0, v12, v6

    .line 88
    .line 89
    if-ltz v0, :cond_2

    .line 90
    .line 91
    cmp-long v0, v12, v10

    .line 92
    .line 93
    if-ltz v0, :cond_4

    .line 94
    .line 95
    :cond_2
    cmp-long v0, v12, v2

    .line 96
    .line 97
    if-ltz v0, :cond_3

    .line 98
    .line 99
    cmp-long v0, v12, v4

    .line 100
    .line 101
    if-gez v0, :cond_3

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    move v1, v9

    .line 105
    :cond_4
    :goto_0
    iget v0, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    .line 106
    .line 107
    if-ne v1, v0, :cond_5

    .line 108
    .line 109
    iget-object v0, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 110
    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_5
    if-eqz v1, :cond_7

    .line 115
    .line 116
    if-ne v1, v9, :cond_6

    .line 117
    .line 118
    const/4 v0, 0x3

    .line 119
    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    goto :goto_1

    .line 124
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    .line 125
    .line 126
    const-string/jumbo v2, "unknown display value: "

    .line 127
    .line 128
    .line 129
    invoke-static {v2, v1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v0

    .line 137
    :cond_7
    invoke-direct {p0}, Landroid/widget/DateTimeView;->getTimeFormat()Ljava/text/DateFormat;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :goto_1
    iput-object v0, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 142
    .line 143
    :goto_2
    iget-object v8, p0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    .line 144
    .line 145
    invoke-virtual {v0, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    if-nez v1, :cond_9

    .line 153
    .line 154
    cmp-long v0, v4, v10

    .line 155
    .line 156
    if-lez v0, :cond_8

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_8
    move-wide v4, v10

    .line 160
    :goto_3
    iput-wide v4, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_9
    iget-wide v0, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    .line 164
    .line 165
    cmp-long v0, v0, v12

    .line 166
    .line 167
    if-gez v0, :cond_a

    .line 168
    .line 169
    const-wide/16 v0, 0x0

    .line 170
    .line 171
    iput-wide v0, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_a
    cmp-long v0, v2, v6

    .line 175
    .line 176
    if-gez v0, :cond_b

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_b
    move-wide v2, v6

    .line 180
    :goto_4
    iput-wide v2, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 181
    .line 182
    :cond_c
    :goto_5
    return-void
.end method
