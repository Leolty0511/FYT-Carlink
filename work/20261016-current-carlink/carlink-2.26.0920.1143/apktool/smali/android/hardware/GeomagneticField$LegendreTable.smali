.class Landroid/hardware/GeomagneticField$LegendreTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/GeomagneticField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LegendreTable"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final mP:[[F

.field public final mPDeriv:[[F


# direct methods
.method public constructor <init>(IF)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    float-to-double v0, p2

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    double-to-float p2, v2

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    double-to-float v0, v0

    .line 15
    add-int/lit8 v1, p1, 0x1

    .line 16
    .line 17
    new-array v2, v1, [[F

    .line 18
    .line 19
    iput-object v2, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    .line 20
    .line 21
    new-array v1, v1, [[F

    .line 22
    .line 23
    iput-object v1, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    new-array v4, v3, [F

    .line 27
    .line 28
    const/high16 v5, 0x3f800000    # 1.0f

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    aput v5, v4, v6

    .line 32
    .line 33
    aput-object v4, v2, v6

    .line 34
    .line 35
    new-array v2, v3, [F

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    aput v4, v2, v6

    .line 39
    .line 40
    aput-object v2, v1, v6

    .line 41
    .line 42
    move v1, v3

    .line 43
    :goto_0
    if-gt v1, p1, :cond_4

    .line 44
    .line 45
    iget-object v2, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    .line 46
    .line 47
    add-int/lit8 v4, v1, 0x1

    .line 48
    .line 49
    new-array v5, v4, [F

    .line 50
    .line 51
    aput-object v5, v2, v1

    .line 52
    .line 53
    iget-object v2, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    .line 54
    .line 55
    new-array v5, v4, [F

    .line 56
    .line 57
    aput-object v5, v2, v1

    .line 58
    .line 59
    move v2, v6

    .line 60
    :goto_1
    if-gt v2, v1, :cond_3

    .line 61
    .line 62
    if-ne v1, v2, :cond_0

    .line 63
    .line 64
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    .line 65
    .line 66
    aget-object v7, v5, v1

    .line 67
    .line 68
    add-int/lit8 v8, v1, -0x1

    .line 69
    .line 70
    aget-object v5, v5, v8

    .line 71
    .line 72
    add-int/lit8 v9, v2, -0x1

    .line 73
    .line 74
    aget v10, v5, v9

    .line 75
    .line 76
    mul-float/2addr v10, v0

    .line 77
    aput v10, v7, v2

    .line 78
    .line 79
    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    .line 80
    .line 81
    aget-object v10, v7, v1

    .line 82
    .line 83
    aget v5, v5, v9

    .line 84
    .line 85
    mul-float/2addr v5, p2

    .line 86
    aget-object v7, v7, v8

    .line 87
    .line 88
    aget v7, v7, v9

    .line 89
    .line 90
    mul-float/2addr v7, v0

    .line 91
    add-float/2addr v7, v5

    .line 92
    aput v7, v10, v2

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_0
    if-eq v1, v3, :cond_2

    .line 96
    .line 97
    add-int/lit8 v5, v1, -0x1

    .line 98
    .line 99
    if-ne v2, v5, :cond_1

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_1
    mul-int v7, v5, v5

    .line 103
    .line 104
    mul-int v8, v2, v2

    .line 105
    .line 106
    sub-int/2addr v7, v8

    .line 107
    int-to-float v7, v7

    .line 108
    mul-int/lit8 v8, v1, 0x2

    .line 109
    .line 110
    add-int/lit8 v9, v8, -0x1

    .line 111
    .line 112
    add-int/lit8 v8, v8, -0x3

    .line 113
    .line 114
    mul-int/2addr v8, v9

    .line 115
    int-to-float v8, v8

    .line 116
    div-float/2addr v7, v8

    .line 117
    iget-object v8, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    .line 118
    .line 119
    aget-object v9, v8, v1

    .line 120
    .line 121
    aget-object v10, v8, v5

    .line 122
    .line 123
    aget v11, v10, v2

    .line 124
    .line 125
    mul-float/2addr v11, p2

    .line 126
    add-int/lit8 v12, v1, -0x2

    .line 127
    .line 128
    aget-object v8, v8, v12

    .line 129
    .line 130
    aget v8, v8, v2

    .line 131
    .line 132
    mul-float/2addr v8, v7

    .line 133
    sub-float/2addr v11, v8

    .line 134
    aput v11, v9, v2

    .line 135
    .line 136
    iget-object v8, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    .line 137
    .line 138
    aget-object v9, v8, v1

    .line 139
    .line 140
    neg-float v11, v0

    .line 141
    aget v10, v10, v2

    .line 142
    .line 143
    mul-float/2addr v11, v10

    .line 144
    aget-object v5, v8, v5

    .line 145
    .line 146
    aget v5, v5, v2

    .line 147
    .line 148
    mul-float/2addr v5, p2

    .line 149
    add-float/2addr v5, v11

    .line 150
    aget-object v8, v8, v12

    .line 151
    .line 152
    aget v8, v8, v2

    .line 153
    .line 154
    mul-float/2addr v7, v8

    .line 155
    sub-float/2addr v5, v7

    .line 156
    aput v5, v9, v2

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_2
    :goto_2
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    .line 160
    .line 161
    aget-object v7, v5, v1

    .line 162
    .line 163
    add-int/lit8 v8, v1, -0x1

    .line 164
    .line 165
    aget-object v5, v5, v8

    .line 166
    .line 167
    aget v9, v5, v2

    .line 168
    .line 169
    mul-float/2addr v9, p2

    .line 170
    aput v9, v7, v2

    .line 171
    .line 172
    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    .line 173
    .line 174
    aget-object v9, v7, v1

    .line 175
    .line 176
    neg-float v10, v0

    .line 177
    aget v5, v5, v2

    .line 178
    .line 179
    mul-float/2addr v10, v5

    .line 180
    aget-object v5, v7, v8

    .line 181
    .line 182
    aget v5, v5, v2

    .line 183
    .line 184
    mul-float/2addr v5, p2

    .line 185
    add-float/2addr v5, v10

    .line 186
    aput v5, v9, v2

    .line 187
    .line 188
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 189
    .line 190
    goto/16 :goto_1

    .line 191
    .line 192
    :cond_3
    move v1, v4

    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_4
    return-void
.end method
