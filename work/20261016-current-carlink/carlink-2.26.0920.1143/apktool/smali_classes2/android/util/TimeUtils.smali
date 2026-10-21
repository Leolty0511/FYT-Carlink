.class public Landroid/util/TimeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DBG:Z = false

.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field public static final NANOS_PER_MS:J = 0xf4240L

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "TimeUtils"

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;

.field private static sLastUniqueCountry:Ljava/lang/String;

.field private static final sLastUniqueLockObj:Ljava/lang/Object;

.field private static sLastUniqueZoneOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLoggingFormat:Ljava/text/SimpleDateFormat;

.field private static sTmpFormatStr:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/util/TimeUtils;->sLastUniqueLockObj:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 9
    .line 10
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroid/util/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    .line 24
    .line 25
    const/16 v0, 0x1d

    .line 26
    .line 27
    new-array v1, v0, [C

    .line 28
    .line 29
    sput-object v1, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 30
    .line 31
    new-array v0, v0, [C

    .line 32
    .line 33
    sput-object v0, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .locals 3

    const/16 v0, 0x3e7

    const/4 v1, 0x0

    if-le p0, v0, :cond_1

    :goto_0
    if-eqz p0, :cond_0

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 p0, p0, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, p1

    return v1

    :cond_1
    const/16 v0, 0x63

    const/4 v2, 0x3

    if-gt p0, v0, :cond_7

    if-eqz p2, :cond_2

    if-lt p3, v2, :cond_2

    goto :goto_3

    :cond_2
    const/16 v0, 0x9

    const/4 v2, 0x2

    if-gt p0, v0, :cond_6

    if-eqz p2, :cond_3

    if-lt p3, v2, :cond_3

    goto :goto_2

    :cond_3
    if-nez p2, :cond_5

    if-lez p0, :cond_4

    goto :goto_1

    :cond_4
    return v1

    :cond_5
    :goto_1
    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_6
    :goto_2
    add-int/2addr p1, v2

    return p1

    :cond_7
    :goto_3
    add-int/2addr p1, v2

    return p1
.end method

.method private static extractZoneIds(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/util/TimeZone;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Landroid/text/format/b;->n(Ljava/lang/Object;)Landroid/icu/util/TimeZone;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Landroid/text/format/b;->p(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string p0, "--"

    .line 10
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_0
    sub-long/2addr p0, p2

    const/4 p2, 0x0

    .line 11
    invoke-static {p0, p1, p4, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-static {p0, p1, p2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .locals 2

    .line 5
    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result p0

    .line 7
    new-instance p1, Ljava/lang/String;

    sget-object p3, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v1, 0x0

    invoke-direct {p1, p3, v1, p0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .locals 2

    .line 1
    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {p0, p1, v1}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result p0

    .line 3
    sget-object p1, Landroid/util/TimeUtils;->sFormatStr:[C

    invoke-virtual {p2, p1, v1, p0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static formatDurationLocked(JI)I
    .locals 17

    .line 1
    move-wide/from16 v0, p0

    .line 2
    .line 3
    move/from16 v2, p2

    .line 4
    .line 5
    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 6
    .line 7
    array-length v3, v3

    .line 8
    if-ge v3, v2, :cond_0

    .line 9
    .line 10
    new-array v3, v2, [C

    .line 11
    .line 12
    sput-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 13
    .line 14
    :cond_0
    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmp-long v4, v0, v4

    .line 19
    .line 20
    const/16 v5, 0x20

    .line 21
    .line 22
    const/4 v10, 0x1

    .line 23
    const/4 v11, 0x0

    .line 24
    if-nez v4, :cond_2

    .line 25
    .line 26
    add-int/lit8 v0, v2, -0x1

    .line 27
    .line 28
    :goto_0
    if-ge v11, v0, :cond_1

    .line 29
    .line 30
    add-int/lit8 v1, v11, 0x1

    .line 31
    .line 32
    aput-char v5, v3, v11

    .line 33
    .line 34
    move v11, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/16 v0, 0x30

    .line 37
    .line 38
    aput-char v0, v3, v11

    .line 39
    .line 40
    add-int/2addr v11, v10

    .line 41
    return v11

    .line 42
    :cond_2
    if-lez v4, :cond_3

    .line 43
    .line 44
    const/16 v4, 0x2b

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    neg-long v0, v0

    .line 48
    const/16 v4, 0x2d

    .line 49
    .line 50
    :goto_1
    const-wide/16 v6, 0x3e8

    .line 51
    .line 52
    rem-long v8, v0, v6

    .line 53
    .line 54
    long-to-int v12, v8

    .line 55
    div-long/2addr v0, v6

    .line 56
    long-to-double v0, v0

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 58
    .line 59
    .line 60
    move-result-wide v0

    .line 61
    double-to-int v0, v0

    .line 62
    const v1, 0x15180

    .line 63
    .line 64
    .line 65
    if-lt v0, v1, :cond_4

    .line 66
    .line 67
    div-int v6, v0, v1

    .line 68
    .line 69
    mul-int/2addr v1, v6

    .line 70
    sub-int/2addr v0, v1

    .line 71
    goto :goto_2

    .line 72
    :cond_4
    move v6, v11

    .line 73
    :goto_2
    const/16 v1, 0xe10

    .line 74
    .line 75
    if-lt v0, v1, :cond_5

    .line 76
    .line 77
    div-int/lit16 v1, v0, 0xe10

    .line 78
    .line 79
    mul-int/lit16 v7, v1, 0xe10

    .line 80
    .line 81
    sub-int/2addr v0, v7

    .line 82
    goto :goto_3

    .line 83
    :cond_5
    move v1, v11

    .line 84
    :goto_3
    const/16 v7, 0x3c

    .line 85
    .line 86
    if-lt v0, v7, :cond_6

    .line 87
    .line 88
    div-int/lit8 v7, v0, 0x3c

    .line 89
    .line 90
    mul-int/lit8 v8, v7, 0x3c

    .line 91
    .line 92
    sub-int/2addr v0, v8

    .line 93
    move v13, v0

    .line 94
    move v0, v7

    .line 95
    goto :goto_4

    .line 96
    :cond_6
    move v13, v0

    .line 97
    move v0, v11

    .line 98
    :goto_4
    const/4 v14, 0x3

    .line 99
    const/4 v15, 0x2

    .line 100
    if-eqz v2, :cond_b

    .line 101
    .line 102
    invoke-static {v6, v10, v11, v11}, Landroid/util/TimeUtils;->accumField(IIZI)I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-lez v7, :cond_7

    .line 107
    .line 108
    move v8, v10

    .line 109
    goto :goto_5

    .line 110
    :cond_7
    move v8, v11

    .line 111
    :goto_5
    invoke-static {v1, v10, v8, v15}, Landroid/util/TimeUtils;->accumField(IIZI)I

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    add-int/2addr v7, v8

    .line 116
    if-lez v7, :cond_8

    .line 117
    .line 118
    move v8, v10

    .line 119
    goto :goto_6

    .line 120
    :cond_8
    move v8, v11

    .line 121
    :goto_6
    invoke-static {v0, v10, v8, v15}, Landroid/util/TimeUtils;->accumField(IIZI)I

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    add-int/2addr v7, v8

    .line 126
    if-lez v7, :cond_9

    .line 127
    .line 128
    move v8, v10

    .line 129
    goto :goto_7

    .line 130
    :cond_9
    move v8, v11

    .line 131
    :goto_7
    invoke-static {v13, v10, v8, v15}, Landroid/util/TimeUtils;->accumField(IIZI)I

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    add-int/2addr v7, v8

    .line 136
    if-lez v7, :cond_a

    .line 137
    .line 138
    move v8, v14

    .line 139
    goto :goto_8

    .line 140
    :cond_a
    move v8, v11

    .line 141
    :goto_8
    invoke-static {v12, v15, v10, v8}, Landroid/util/TimeUtils;->accumField(IIZI)I

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    add-int/2addr v8, v10

    .line 146
    add-int/2addr v8, v7

    .line 147
    move v7, v11

    .line 148
    :goto_9
    if-ge v8, v2, :cond_c

    .line 149
    .line 150
    aput-char v5, v3, v7

    .line 151
    .line 152
    add-int/lit8 v7, v7, 0x1

    .line 153
    .line 154
    add-int/lit8 v8, v8, 0x1

    .line 155
    .line 156
    goto :goto_9

    .line 157
    :cond_b
    move v7, v11

    .line 158
    :cond_c
    aput-char v4, v3, v7

    .line 159
    .line 160
    add-int/lit8 v9, v7, 0x1

    .line 161
    .line 162
    if-eqz v2, :cond_d

    .line 163
    .line 164
    move v2, v10

    .line 165
    goto :goto_a

    .line 166
    :cond_d
    move v2, v11

    .line 167
    :goto_a
    const/16 v7, 0x64

    .line 168
    .line 169
    const/4 v8, 0x0

    .line 170
    const/16 v16, 0x0

    .line 171
    .line 172
    move-object v4, v3

    .line 173
    move v5, v6

    .line 174
    move v6, v7

    .line 175
    move v7, v9

    .line 176
    move v11, v9

    .line 177
    move/from16 v9, v16

    .line 178
    .line 179
    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    const/16 v6, 0x68

    .line 184
    .line 185
    if-eq v7, v11, :cond_e

    .line 186
    .line 187
    move v8, v10

    .line 188
    goto :goto_b

    .line 189
    :cond_e
    const/4 v8, 0x0

    .line 190
    :goto_b
    if-eqz v2, :cond_f

    .line 191
    .line 192
    move v9, v15

    .line 193
    goto :goto_c

    .line 194
    :cond_f
    const/4 v9, 0x0

    .line 195
    :goto_c
    move-object v4, v3

    .line 196
    move v5, v1

    .line 197
    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    const/16 v6, 0x6d

    .line 202
    .line 203
    if-eq v7, v11, :cond_10

    .line 204
    .line 205
    move v8, v10

    .line 206
    goto :goto_d

    .line 207
    :cond_10
    const/4 v8, 0x0

    .line 208
    :goto_d
    if-eqz v2, :cond_11

    .line 209
    .line 210
    move v9, v15

    .line 211
    goto :goto_e

    .line 212
    :cond_11
    const/4 v9, 0x0

    .line 213
    :goto_e
    move-object v4, v3

    .line 214
    move v5, v0

    .line 215
    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    .line 216
    .line 217
    .line 218
    move-result v7

    .line 219
    const/16 v6, 0x73

    .line 220
    .line 221
    if-eq v7, v11, :cond_12

    .line 222
    .line 223
    move v8, v10

    .line 224
    goto :goto_f

    .line 225
    :cond_12
    const/4 v8, 0x0

    .line 226
    :goto_f
    if-eqz v2, :cond_13

    .line 227
    .line 228
    move v9, v15

    .line 229
    goto :goto_10

    .line 230
    :cond_13
    const/4 v9, 0x0

    .line 231
    :goto_10
    move-object v4, v3

    .line 232
    move v5, v13

    .line 233
    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    const/16 v6, 0x6d

    .line 238
    .line 239
    const/4 v8, 0x1

    .line 240
    if-eqz v2, :cond_14

    .line 241
    .line 242
    if-eq v7, v11, :cond_14

    .line 243
    .line 244
    move v9, v14

    .line 245
    goto :goto_11

    .line 246
    :cond_14
    const/4 v9, 0x0

    .line 247
    :goto_11
    move-object v4, v3

    .line 248
    move v5, v12

    .line 249
    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    const/16 v1, 0x73

    .line 254
    .line 255
    aput-char v1, v3, v0

    .line 256
    .line 257
    add-int/2addr v0, v10

    .line 258
    return v0
.end method

.method public static formatForLogging(J)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "unknown"

    .line 8
    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    sget-object v0, Landroid/util/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    new-instance v1, Ljava/util/Date;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static formatUptime(J)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long v0, p0, v0

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    if-lez v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, " (in "

    .line 22
    .line 23
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, " ms)"

    .line 30
    .line 31
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_0
    if-gez v2, :cond_1

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p0, " ("

    .line 50
    .line 51
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    neg-long p0, v0

    .line 55
    const-string v0, " ms ago)"

    .line 56
    .line 57
    invoke-static {v2, p0, p1, v0}, Landroid/app/m;->k(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p0, " (now)"

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0
.end method

.method private static getIcuTimeZone(IZJLjava/lang/String;)Landroid/icu/util/TimeZone;
    .locals 7

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-static {}, Landroid/text/format/b;->m()Landroid/icu/util/TimeZone;

    .line 6
    .line 7
    .line 8
    move-result-object v6

    .line 9
    invoke-static {}, Llibcore/util/TimeZoneFinder;->getInstance()Llibcore/util/TimeZoneFinder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    move-object v1, p4

    .line 14
    move v2, p0

    .line 15
    move v3, p1

    .line 16
    move-wide v4, p2

    .line 17
    invoke-virtual/range {v0 .. v6}, Llibcore/util/TimeZoneFinder;->lookupTimeZoneByCountryAndOffset(Ljava/lang/String;IZJLandroid/icu/util/TimeZone;)Landroid/icu/util/TimeZone;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method private static getIcuTimeZones(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/icu/util/TimeZone;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {}, Llibcore/util/TimeZoneFinder;->getInstance()Llibcore/util/TimeZoneFinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Llibcore/util/TimeZoneFinder;->lookupTimeZonesByCountry(Ljava/lang/String;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :cond_1
    return-object p0
.end method

.method public static getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroid/util/TimeUtils;->getIcuTimeZone(IZJLjava/lang/String;)Landroid/icu/util/TimeZone;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Landroid/text/format/b;->p(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return-object p0
.end method

.method public static getTimeZoneDatabaseVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/util/ZoneInfoDB$TzData;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeZoneIdsWithUniqueOffsets(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/util/TimeUtils;->sLastUniqueLockObj:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    :try_start_0
    sget-object v1, Landroid/util/TimeUtils;->sLastUniqueCountry:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sget-object p0, Landroid/util/TimeUtils;->sLastUniqueZoneOffsets:Ljava/util/List;

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-object p0

    .line 18
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    invoke-static {p0}, Landroid/util/TimeUtils;->getIcuTimeZones(Ljava/lang/String;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v2}, Landroid/text/format/b;->n(Ljava/lang/Object;)Landroid/icu/util/TimeZone;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v3, 0x0

    .line 47
    move v4, v3

    .line 48
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-ge v4, v5, :cond_3

    .line 53
    .line 54
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-static {v5}, Landroid/text/format/b;->n(Ljava/lang/Object;)Landroid/icu/util/TimeZone;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-static {v5}, Landroid/text/format/b;->d(Landroid/icu/util/TimeZone;)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    invoke-static {v2}, Landroid/text/format/b;->d(Landroid/icu/util/TimeZone;)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-ne v5, v6, :cond_2

    .line 71
    .line 72
    const/4 v3, 0x1

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    :goto_2
    if-nez v3, :cond_1

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    sget-object v2, Landroid/util/TimeUtils;->sLastUniqueLockObj:Ljava/lang/Object;

    .line 84
    .line 85
    monitor-enter v2

    .line 86
    :try_start_1
    invoke-static {v1}, Landroid/util/TimeUtils;->extractZoneIds(Ljava/util/List;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    sput-object v0, Landroid/util/TimeUtils;->sLastUniqueZoneOffsets:Ljava/util/List;

    .line 91
    .line 92
    sput-object p0, Landroid/util/TimeUtils;->sLastUniqueCountry:Ljava/lang/String;

    .line 93
    .line 94
    monitor-exit v2

    .line 95
    return-object v0

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    throw p0

    .line 99
    :catchall_1
    move-exception p0

    .line 100
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    throw p0
.end method

.method public static logTimeOfDay(J)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    cmp-long v1, p0, v1

    .line 8
    .line 9
    if-ltz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x6

    .line 15
    new-array p0, p0, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    aput-object v0, p0, p1

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    aput-object v0, p0, p1

    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    aput-object v0, p0, p1

    .line 25
    .line 26
    const/4 p1, 0x3

    .line 27
    aput-object v0, p0, p1

    .line 28
    .line 29
    const/4 p1, 0x4

    .line 30
    aput-object v0, p0, p1

    .line 31
    .line 32
    const/4 p1, 0x5

    .line 33
    aput-object v0, p0, p1

    .line 34
    .line 35
    const-string p1, "%tm-%td %tH:%tM:%tS.%tL"

    .line 36
    .line 37
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method private static printFieldLocked([CICIZI)I
    .locals 2

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    if-lez p1, :cond_a

    .line 4
    .line 5
    :cond_0
    const/16 v0, 0x3e7

    .line 6
    .line 7
    if-le p1, v0, :cond_2

    .line 8
    .line 9
    const/4 p4, 0x0

    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    sget-object p5, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    .line 13
    .line 14
    array-length v0, p5

    .line 15
    if-ge p4, v0, :cond_1

    .line 16
    .line 17
    rem-int/lit8 v0, p1, 0xa

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x30

    .line 20
    .line 21
    int-to-char v0, v0

    .line 22
    aput-char v0, p5, p4

    .line 23
    .line 24
    add-int/lit8 p4, p4, 0x1

    .line 25
    .line 26
    div-int/lit8 p1, p1, 0xa

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    add-int/lit8 p4, p4, -0x1

    .line 30
    .line 31
    if-ltz p4, :cond_9

    .line 32
    .line 33
    sget-object p1, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    .line 34
    .line 35
    aget-char p1, p1, p4

    .line 36
    .line 37
    aput-char p1, p0, p3

    .line 38
    .line 39
    add-int/lit8 p3, p3, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    if-eqz p4, :cond_3

    .line 43
    .line 44
    const/4 v0, 0x3

    .line 45
    if-ge p5, v0, :cond_4

    .line 46
    .line 47
    :cond_3
    const/16 v0, 0x63

    .line 48
    .line 49
    if-le p1, v0, :cond_5

    .line 50
    .line 51
    :cond_4
    div-int/lit8 v0, p1, 0x64

    .line 52
    .line 53
    add-int/lit8 v1, v0, 0x30

    .line 54
    .line 55
    int-to-char v1, v1

    .line 56
    aput-char v1, p0, p3

    .line 57
    .line 58
    add-int/lit8 v1, p3, 0x1

    .line 59
    .line 60
    mul-int/lit8 v0, v0, 0x64

    .line 61
    .line 62
    sub-int/2addr p1, v0

    .line 63
    goto :goto_2

    .line 64
    :cond_5
    move v1, p3

    .line 65
    :goto_2
    if-eqz p4, :cond_6

    .line 66
    .line 67
    const/4 p4, 0x2

    .line 68
    if-ge p5, p4, :cond_7

    .line 69
    .line 70
    :cond_6
    const/16 p4, 0x9

    .line 71
    .line 72
    if-gt p1, p4, :cond_7

    .line 73
    .line 74
    if-eq p3, v1, :cond_8

    .line 75
    .line 76
    :cond_7
    div-int/lit8 p3, p1, 0xa

    .line 77
    .line 78
    add-int/lit8 p4, p3, 0x30

    .line 79
    .line 80
    int-to-char p4, p4

    .line 81
    aput-char p4, p0, v1

    .line 82
    .line 83
    add-int/lit8 v1, v1, 0x1

    .line 84
    .line 85
    mul-int/lit8 p3, p3, 0xa

    .line 86
    .line 87
    sub-int/2addr p1, p3

    .line 88
    :cond_8
    add-int/lit8 p1, p1, 0x30

    .line 89
    .line 90
    int-to-char p1, p1

    .line 91
    aput-char p1, p0, v1

    .line 92
    .line 93
    add-int/lit8 p3, v1, 0x1

    .line 94
    .line 95
    :cond_9
    aput-char p2, p0, p3

    .line 96
    .line 97
    add-int/lit8 p3, p3, 0x1

    .line 98
    .line 99
    :cond_a
    return p3
.end method
