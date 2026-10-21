.class Landroid/text/format/Formatter$RoundedBytesResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/format/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoundedBytesResult"
.end annotation


# instance fields
.field public final fractionDigits:I

.field public final roundedBytes:J

.field public final units:Landroid/icu/util/MeasureUnit;

.field public final value:F


# direct methods
.method private constructor <init>(FLandroid/icu/util/MeasureUnit;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/text/format/Formatter$RoundedBytesResult;->value:F

    .line 5
    .line 6
    iput-object p2, p0, Landroid/text/format/Formatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    .line 7
    .line 8
    iput p3, p0, Landroid/text/format/Formatter$RoundedBytesResult;->fractionDigits:I

    .line 9
    .line 10
    iput-wide p4, p0, Landroid/text/format/Formatter$RoundedBytesResult;->roundedBytes:J

    .line 11
    .line 12
    return-void
.end method

.method public static roundBytes(JI)Landroid/text/format/Formatter$RoundedBytesResult;
    .locals 17

    .line 1
    move-wide/from16 v0, p0

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x1

    .line 9
    if-gez v4, :cond_0

    .line 10
    .line 11
    move v4, v6

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v4, v5

    .line 14
    :goto_0
    if-eqz v4, :cond_1

    .line 15
    .line 16
    neg-long v0, v0

    .line 17
    :cond_1
    long-to-float v0, v0

    .line 18
    invoke-static {}, Landroid/text/format/a;->k()Landroid/icu/util/MeasureUnit;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/high16 v7, 0x44610000    # 900.0f

    .line 23
    .line 24
    cmpl-float v8, v0, v7

    .line 25
    .line 26
    const-wide/16 v9, 0x1

    .line 27
    .line 28
    const/high16 v11, 0x447a0000    # 1000.0f

    .line 29
    .line 30
    const-wide/16 v12, 0x3e8

    .line 31
    .line 32
    if-lez v8, :cond_2

    .line 33
    .line 34
    invoke-static {}, Landroid/text/format/a;->u()Landroid/icu/util/MeasureUnit;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    div-float/2addr v0, v11

    .line 39
    move-wide v14, v12

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move-wide v14, v9

    .line 42
    :goto_1
    cmpl-float v8, v0, v7

    .line 43
    .line 44
    if-lez v8, :cond_3

    .line 45
    .line 46
    invoke-static {}, Landroid/text/format/a;->z()Landroid/icu/util/MeasureUnit;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    mul-long/2addr v14, v12

    .line 51
    div-float/2addr v0, v11

    .line 52
    :cond_3
    cmpl-float v8, v0, v7

    .line 53
    .line 54
    if-lez v8, :cond_4

    .line 55
    .line 56
    invoke-static {}, Landroid/text/format/a;->C()Landroid/icu/util/MeasureUnit;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    mul-long/2addr v14, v12

    .line 61
    div-float/2addr v0, v11

    .line 62
    :cond_4
    cmpl-float v8, v0, v7

    .line 63
    .line 64
    if-lez v8, :cond_5

    .line 65
    .line 66
    invoke-static {}, Landroid/text/format/b;->l()Landroid/icu/util/MeasureUnit;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    mul-long/2addr v14, v12

    .line 71
    div-float/2addr v0, v11

    .line 72
    :cond_5
    cmpl-float v7, v0, v7

    .line 73
    .line 74
    if-lez v7, :cond_6

    .line 75
    .line 76
    invoke-static {}, Landroid/text/format/Formatter;->access$000()Landroid/icu/util/MeasureUnit;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    mul-long/2addr v14, v12

    .line 81
    div-float/2addr v0, v11

    .line 82
    :cond_6
    move-object v13, v1

    .line 83
    cmp-long v1, v14, v9

    .line 84
    .line 85
    const/4 v7, 0x2

    .line 86
    if-eqz v1, :cond_b

    .line 87
    .line 88
    const/high16 v1, 0x42c80000    # 100.0f

    .line 89
    .line 90
    cmpl-float v1, v0, v1

    .line 91
    .line 92
    if-ltz v1, :cond_7

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 96
    .line 97
    cmpg-float v1, v0, v1

    .line 98
    .line 99
    const/16 v8, 0x64

    .line 100
    .line 101
    if-gez v1, :cond_9

    .line 102
    .line 103
    :cond_8
    move v5, v7

    .line 104
    move v6, v8

    .line 105
    goto :goto_2

    .line 106
    :cond_9
    const/high16 v1, 0x41200000    # 10.0f

    .line 107
    .line 108
    cmpg-float v1, v0, v1

    .line 109
    .line 110
    if-gez v1, :cond_a

    .line 111
    .line 112
    and-int/lit8 v1, p2, 0x1

    .line 113
    .line 114
    if-eqz v1, :cond_8

    .line 115
    .line 116
    const/16 v1, 0xa

    .line 117
    .line 118
    move v5, v6

    .line 119
    move v6, v1

    .line 120
    goto :goto_2

    .line 121
    :cond_a
    and-int/lit8 v1, p2, 0x1

    .line 122
    .line 123
    if-eqz v1, :cond_8

    .line 124
    .line 125
    :cond_b
    :goto_2
    if-eqz v4, :cond_c

    .line 126
    .line 127
    neg-float v0, v0

    .line 128
    :cond_c
    move v12, v0

    .line 129
    and-int/lit8 v0, p2, 0x2

    .line 130
    .line 131
    if-nez v0, :cond_d

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_d
    int-to-float v0, v6

    .line 135
    mul-float/2addr v0, v12

    .line 136
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    int-to-long v0, v0

    .line 141
    mul-long/2addr v0, v14

    .line 142
    int-to-long v2, v6

    .line 143
    div-long v2, v0, v2

    .line 144
    .line 145
    :goto_3
    move-wide v15, v2

    .line 146
    new-instance v0, Landroid/text/format/Formatter$RoundedBytesResult;

    .line 147
    .line 148
    move-object v11, v0

    .line 149
    move v14, v5

    .line 150
    invoke-direct/range {v11 .. v16}, Landroid/text/format/Formatter$RoundedBytesResult;-><init>(FLandroid/icu/util/MeasureUnit;IJ)V

    .line 151
    .line 152
    .line 153
    return-object v0
.end method
