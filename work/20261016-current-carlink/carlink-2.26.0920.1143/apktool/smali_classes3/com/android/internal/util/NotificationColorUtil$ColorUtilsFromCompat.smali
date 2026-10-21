.class Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/NotificationColorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorUtilsFromCompat"
.end annotation


# static fields
.field private static final MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa

.field private static final MIN_ALPHA_SEARCH_PRECISION:I = 0x1

.field private static final TEMP_ARRAY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[D>;"
        }
    .end annotation
.end field

.field private static final XYZ_EPSILON:D = 0.008856

.field private static final XYZ_KAPPA:D = 903.3

.field private static final XYZ_WHITE_REFERENCE_X:D = 95.047

.field private static final XYZ_WHITE_REFERENCE_Y:D = 100.0

.field private static final XYZ_WHITE_REFERENCE_Z:D = 108.883


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSLToColor([F)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p0, v0

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    aget v2, p0, v2

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    aget p0, p0, v3

    .line 9
    .line 10
    const/high16 v3, 0x40000000    # 2.0f

    .line 11
    .line 12
    mul-float v4, p0, v3

    .line 13
    .line 14
    const/high16 v5, 0x3f800000    # 1.0f

    .line 15
    .line 16
    sub-float/2addr v4, v5

    .line 17
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    sub-float v4, v5, v4

    .line 22
    .line 23
    mul-float/2addr v4, v2

    .line 24
    const/high16 v2, 0x3f000000    # 0.5f

    .line 25
    .line 26
    mul-float/2addr v2, v4

    .line 27
    sub-float/2addr p0, v2

    .line 28
    const/high16 v2, 0x42700000    # 60.0f

    .line 29
    .line 30
    div-float v2, v1, v2

    .line 31
    .line 32
    rem-float/2addr v2, v3

    .line 33
    sub-float/2addr v2, v5

    .line 34
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    sub-float/2addr v5, v2

    .line 39
    mul-float/2addr v5, v4

    .line 40
    float-to-int v1, v1

    .line 41
    div-int/lit8 v1, v1, 0x3c

    .line 42
    .line 43
    const/high16 v2, 0x437f0000    # 255.0f

    .line 44
    .line 45
    packed-switch v1, :pswitch_data_0

    .line 46
    .line 47
    .line 48
    move p0, v0

    .line 49
    move v1, p0

    .line 50
    move v3, v1

    .line 51
    goto :goto_0

    .line 52
    :pswitch_0
    invoke-static {v4, p0, v2}, Landroid/renderscript/a;->a(FFF)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    mul-float v3, p0, v2

    .line 57
    .line 58
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    invoke-static {v5, p0, v2}, Landroid/renderscript/a;->a(FFF)I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    goto :goto_0

    .line 67
    :pswitch_1
    invoke-static {v5, p0, v2}, Landroid/renderscript/a;->a(FFF)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    mul-float v3, p0, v2

    .line 72
    .line 73
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-static {v4, p0, v2}, Landroid/renderscript/a;->a(FFF)I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    goto :goto_0

    .line 82
    :pswitch_2
    mul-float v1, p0, v2

    .line 83
    .line 84
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-static {v5, p0, v2}, Landroid/renderscript/a;->a(FFF)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-static {v4, p0, v2}, Landroid/renderscript/a;->a(FFF)I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    goto :goto_0

    .line 97
    :pswitch_3
    mul-float v1, p0, v2

    .line 98
    .line 99
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-static {v4, p0, v2}, Landroid/renderscript/a;->a(FFF)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-static {v5, p0, v2}, Landroid/renderscript/a;->a(FFF)I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    goto :goto_0

    .line 112
    :pswitch_4
    invoke-static {v5, p0, v2}, Landroid/renderscript/a;->a(FFF)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-static {v4, p0, v2}, Landroid/renderscript/a;->a(FFF)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    mul-float/2addr p0, v2

    .line 121
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    goto :goto_0

    .line 126
    :pswitch_5
    invoke-static {v4, p0, v2}, Landroid/renderscript/a;->a(FFF)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    invoke-static {v5, p0, v2}, Landroid/renderscript/a;->a(FFF)I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    mul-float/2addr p0, v2

    .line 135
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    :goto_0
    const/16 v2, 0xff

    .line 140
    .line 141
    invoke-static {v1, v0, v2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(III)I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    invoke-static {v3, v0, v2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(III)I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    invoke-static {p0, v0, v2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(III)I

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    invoke-static {v1, v3, p0}, Landroid/graphics/Color;->rgb(III)I

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    return p0

    .line 158
    nop

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static LABToColor(DDD)I
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    .line 2
    .line 3
    .line 4
    move-result-object v7

    .line 5
    move-wide v0, p0

    .line 6
    move-wide v2, p2

    .line 7
    move-wide v4, p4

    .line 8
    move-object v6, v7

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToXYZ(DDD[D)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    aget-wide v0, v7, p0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    aget-wide v2, v7, p0

    .line 17
    .line 18
    const/4 p0, 0x2

    .line 19
    aget-wide v4, v7, p0

    .line 20
    .line 21
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->XYZToColor(DDD)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public static LABToXYZ(DDD[D)V
    .locals 19

    .line 1
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    .line 2
    .line 3
    add-double v2, p0, v0

    .line 4
    .line 5
    const-wide/high16 v4, 0x405d000000000000L    # 116.0

    .line 6
    .line 7
    div-double/2addr v2, v4

    .line 8
    const-wide v6, 0x407f400000000000L    # 500.0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    div-double v6, p2, v6

    .line 14
    .line 15
    add-double/2addr v6, v2

    .line 16
    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    .line 17
    .line 18
    div-double v8, p4, v8

    .line 19
    .line 20
    sub-double v8, v2, v8

    .line 21
    .line 22
    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    .line 23
    .line 24
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 25
    .line 26
    .line 27
    move-result-wide v12

    .line 28
    const-wide v14, 0x3f82231832fcac8eL    # 0.008856

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    cmpl-double v16, v12, v14

    .line 34
    .line 35
    const-wide v17, 0x408c3a6666666666L    # 903.3

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    if-lez v16, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    mul-double/2addr v6, v4

    .line 44
    sub-double/2addr v6, v0

    .line 45
    div-double v12, v6, v17

    .line 46
    .line 47
    :goto_0
    const-wide v6, 0x401fff9da4c11507L    # 7.9996247999999985

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    cmpl-double v6, p0, v6

    .line 53
    .line 54
    if-lez v6, :cond_1

    .line 55
    .line 56
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    div-double v2, p0, v17

    .line 62
    .line 63
    :goto_1
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 64
    .line 65
    .line 66
    move-result-wide v6

    .line 67
    cmpl-double v10, v6, v14

    .line 68
    .line 69
    if-lez v10, :cond_2

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    mul-double/2addr v8, v4

    .line 73
    sub-double/2addr v8, v0

    .line 74
    div-double v6, v8, v17

    .line 75
    .line 76
    :goto_2
    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    mul-double/2addr v12, v0

    .line 82
    const/4 v0, 0x0

    .line 83
    aput-wide v12, p6, v0

    .line 84
    .line 85
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 86
    .line 87
    mul-double/2addr v2, v0

    .line 88
    const/4 v0, 0x1

    .line 89
    aput-wide v2, p6, v0

    .line 90
    .line 91
    const-wide v0, 0x405b3883126e978dL    # 108.883

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    mul-double/2addr v6, v0

    .line 97
    const/4 v0, 0x2

    .line 98
    aput-wide v6, p6, v0

    .line 99
    .line 100
    return-void
.end method

.method public static RGBToHSL(III[F)V
    .locals 7

    .line 1
    int-to-float p0, p0

    .line 2
    const/high16 v0, 0x437f0000    # 255.0f

    .line 3
    .line 4
    div-float/2addr p0, v0

    .line 5
    int-to-float p1, p1

    .line 6
    div-float/2addr p1, v0

    .line 7
    int-to-float p2, p2

    .line 8
    div-float/2addr p2, v0

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    sub-float v2, v0, v1

    .line 26
    .line 27
    add-float v3, v0, v1

    .line 28
    .line 29
    const/high16 v4, 0x40000000    # 2.0f

    .line 30
    .line 31
    div-float/2addr v3, v4

    .line 32
    cmpl-float v1, v0, v1

    .line 33
    .line 34
    const/high16 v5, 0x3f800000    # 1.0f

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    move p1, v6

    .line 40
    move v2, p1

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    cmpl-float v1, v0, p0

    .line 43
    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    sub-float/2addr p1, p2

    .line 47
    div-float/2addr p1, v2

    .line 48
    const/high16 p0, 0x40c00000    # 6.0f

    .line 49
    .line 50
    rem-float/2addr p1, p0

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    cmpl-float v0, v0, p1

    .line 53
    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    sub-float/2addr p2, p0

    .line 57
    div-float/2addr p2, v2

    .line 58
    add-float p1, p2, v4

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    sub-float/2addr p0, p1

    .line 62
    div-float/2addr p0, v2

    .line 63
    const/high16 p1, 0x40800000    # 4.0f

    .line 64
    .line 65
    add-float/2addr p1, p0

    .line 66
    :goto_0
    mul-float/2addr v4, v3

    .line 67
    sub-float/2addr v4, v5

    .line 68
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    sub-float p0, v5, p0

    .line 73
    .line 74
    div-float/2addr v2, p0

    .line 75
    :goto_1
    const/high16 p0, 0x42700000    # 60.0f

    .line 76
    .line 77
    mul-float/2addr p1, p0

    .line 78
    const/high16 p0, 0x43b40000    # 360.0f

    .line 79
    .line 80
    rem-float/2addr p1, p0

    .line 81
    cmpg-float p2, p1, v6

    .line 82
    .line 83
    if-gez p2, :cond_3

    .line 84
    .line 85
    add-float/2addr p1, p0

    .line 86
    :cond_3
    const/4 p2, 0x0

    .line 87
    invoke-static {p1, v6, p0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(FFF)F

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    aput p0, p3, p2

    .line 92
    .line 93
    const/4 p0, 0x1

    .line 94
    invoke-static {v2, v6, v5}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(FFF)F

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    aput p1, p3, p0

    .line 99
    .line 100
    const/4 p0, 0x2

    .line 101
    invoke-static {v3, v6, v5}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(FFF)F

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    aput p1, p3, p0

    .line 106
    .line 107
    return-void
.end method

.method public static RGBToLAB(III[D)V
    .locals 7

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->RGBToXYZ(III[D)V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    aget-wide v0, p3, p0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    aget-wide v2, p3, p0

    .line 9
    .line 10
    const/4 p0, 0x2

    .line 11
    aget-wide v4, p3, p0

    .line 12
    .line 13
    move-object v6, p3

    .line 14
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->XYZToLAB(DDD[D)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static RGBToXYZ(III[D)V
    .locals 16

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x3

    .line 5
    if-ne v1, v2, :cond_3

    .line 6
    .line 7
    move/from16 v1, p0

    .line 8
    .line 9
    int-to-double v1, v1

    .line 10
    const-wide v3, 0x406fe00000000000L    # 255.0

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    div-double/2addr v1, v3

    .line 16
    const-wide v5, 0x3fa4b5dcc63f1412L    # 0.04045

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    cmpg-double v7, v1, v5

    .line 22
    .line 23
    const-wide v8, 0x4029d70a3d70a3d7L    # 12.92

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    const-wide v10, 0x4003333333333333L    # 2.4

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    const-wide v12, 0x3ff0e147ae147ae1L    # 1.055

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    const-wide v14, 0x3fac28f5c28f5c29L    # 0.055

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    if-gez v7, :cond_0

    .line 44
    .line 45
    div-double/2addr v1, v8

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    add-double/2addr v1, v14

    .line 48
    div-double/2addr v1, v12

    .line 49
    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    :goto_0
    move/from16 v7, p1

    .line 54
    .line 55
    int-to-double v10, v7

    .line 56
    div-double/2addr v10, v3

    .line 57
    cmpg-double v7, v10, v5

    .line 58
    .line 59
    if-gez v7, :cond_1

    .line 60
    .line 61
    div-double/2addr v10, v8

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    add-double/2addr v10, v14

    .line 64
    div-double/2addr v10, v12

    .line 65
    const-wide v12, 0x4003333333333333L    # 2.4

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 71
    .line 72
    .line 73
    move-result-wide v10

    .line 74
    :goto_1
    move/from16 v7, p2

    .line 75
    .line 76
    int-to-double v12, v7

    .line 77
    div-double/2addr v12, v3

    .line 78
    cmpg-double v3, v12, v5

    .line 79
    .line 80
    if-gez v3, :cond_2

    .line 81
    .line 82
    div-double/2addr v12, v8

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    add-double/2addr v12, v14

    .line 85
    const-wide v3, 0x3ff0e147ae147ae1L    # 1.055

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    div-double/2addr v12, v3

    .line 91
    const-wide v3, 0x4003333333333333L    # 2.4

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 97
    .line 98
    .line 99
    move-result-wide v12

    .line 100
    :goto_2
    const-wide v3, 0x3fda64c2f837b4a2L    # 0.4124

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    mul-double/2addr v3, v1

    .line 106
    const-wide v5, 0x3fd6e2eb1c432ca5L    # 0.3576

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    mul-double/2addr v5, v10

    .line 112
    add-double/2addr v5, v3

    .line 113
    const-wide v3, 0x3fc71a9fbe76c8b4L    # 0.1805

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    mul-double/2addr v3, v12

    .line 119
    add-double/2addr v3, v5

    .line 120
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    .line 121
    .line 122
    mul-double/2addr v3, v5

    .line 123
    const/4 v7, 0x0

    .line 124
    aput-wide v3, v0, v7

    .line 125
    .line 126
    const-wide v3, 0x3fcb367a0f9096bcL    # 0.2126

    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    mul-double/2addr v3, v1

    .line 132
    const-wide v7, 0x3fe6e2eb1c432ca5L    # 0.7152

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    mul-double/2addr v7, v10

    .line 138
    add-double/2addr v7, v3

    .line 139
    const-wide v3, 0x3fb27bb2fec56d5dL    # 0.0722

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    mul-double/2addr v3, v12

    .line 145
    add-double/2addr v3, v7

    .line 146
    mul-double/2addr v3, v5

    .line 147
    const/4 v7, 0x1

    .line 148
    aput-wide v3, v0, v7

    .line 149
    .line 150
    const-wide v3, 0x3f93c36113404ea5L    # 0.0193

    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    mul-double/2addr v1, v3

    .line 156
    const-wide v3, 0x3fbe83e425aee632L    # 0.1192

    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    mul-double/2addr v10, v3

    .line 162
    add-double/2addr v10, v1

    .line 163
    const-wide v1, 0x3fee6a7ef9db22d1L    # 0.9505

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    mul-double/2addr v12, v1

    .line 169
    add-double/2addr v12, v10

    .line 170
    mul-double/2addr v12, v5

    .line 171
    const/4 v1, 0x2

    .line 172
    aput-wide v12, v0, v1

    .line 173
    .line 174
    return-void

    .line 175
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 176
    .line 177
    const-string v1, "outXyz must have a length of 3."

    .line 178
    .line 179
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw v0
.end method

.method public static XYZToColor(DDD)I
    .locals 17

    .line 1
    const-wide v0, 0x4009ecbfb15b573fL    # 3.2406

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    mul-double v0, v0, p0

    .line 7
    .line 8
    const-wide v2, -0x400767a0f9096bbaL    # -1.5372

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    mul-double v2, v2, p2

    .line 14
    .line 15
    add-double/2addr v2, v0

    .line 16
    const-wide v0, -0x402016f0068db8bbL    # -0.4986

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    mul-double v0, v0, p4

    .line 22
    .line 23
    add-double/2addr v0, v2

    .line 24
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 25
    .line 26
    div-double/2addr v0, v2

    .line 27
    const-wide v4, -0x4010fec56d5cfaadL    # -0.9689

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    mul-double v4, v4, p0

    .line 33
    .line 34
    const-wide v6, 0x3ffe0346dc5d6388L    # 1.8758

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    mul-double v6, v6, p2

    .line 40
    .line 41
    add-double/2addr v6, v4

    .line 42
    const-wide v4, 0x3fa53f7ced916873L    # 0.0415

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    mul-double v4, v4, p4

    .line 48
    .line 49
    add-double/2addr v4, v6

    .line 50
    div-double/2addr v4, v2

    .line 51
    const-wide v6, 0x3fac84b5dcc63f14L    # 0.0557

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    mul-double v6, v6, p0

    .line 57
    .line 58
    const-wide v8, -0x4035e353f7ced917L    # -0.204

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    mul-double v8, v8, p2

    .line 64
    .line 65
    add-double/2addr v8, v6

    .line 66
    const-wide v6, 0x3ff0e978d4fdf3b6L    # 1.057

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    mul-double v6, v6, p4

    .line 72
    .line 73
    add-double/2addr v6, v8

    .line 74
    div-double/2addr v6, v2

    .line 75
    const-wide v2, 0x3f69a5c37387b719L    # 0.0031308

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    cmpl-double v8, v0, v2

    .line 81
    .line 82
    const-wide v9, 0x3fac28f5c28f5c29L    # 0.055

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    const-wide v11, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    const-wide v13, 0x3ff0e147ae147ae1L    # 1.055

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    const-wide v15, 0x4029d70a3d70a3d7L    # 12.92

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    if-lez v8, :cond_0

    .line 103
    .line 104
    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    mul-double/2addr v0, v13

    .line 109
    sub-double/2addr v0, v9

    .line 110
    goto :goto_0

    .line 111
    :cond_0
    mul-double/2addr v0, v15

    .line 112
    :goto_0
    cmpl-double v8, v4, v2

    .line 113
    .line 114
    if-lez v8, :cond_1

    .line 115
    .line 116
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 117
    .line 118
    .line 119
    move-result-wide v4

    .line 120
    mul-double/2addr v4, v13

    .line 121
    sub-double/2addr v4, v9

    .line 122
    goto :goto_1

    .line 123
    :cond_1
    mul-double/2addr v4, v15

    .line 124
    :goto_1
    cmpl-double v2, v6, v2

    .line 125
    .line 126
    if-lez v2, :cond_2

    .line 127
    .line 128
    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 129
    .line 130
    .line 131
    move-result-wide v2

    .line 132
    mul-double/2addr v2, v13

    .line 133
    sub-double/2addr v2, v9

    .line 134
    goto :goto_2

    .line 135
    :cond_2
    mul-double v2, v6, v15

    .line 136
    .line 137
    :goto_2
    const-wide v6, 0x406fe00000000000L    # 255.0

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    mul-double/2addr v0, v6

    .line 143
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 144
    .line 145
    .line 146
    move-result-wide v0

    .line 147
    long-to-int v0, v0

    .line 148
    const/4 v1, 0x0

    .line 149
    const/16 v8, 0xff

    .line 150
    .line 151
    invoke-static {v0, v1, v8}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(III)I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    mul-double/2addr v4, v6

    .line 156
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 157
    .line 158
    .line 159
    move-result-wide v4

    .line 160
    long-to-int v4, v4

    .line 161
    invoke-static {v4, v1, v8}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(III)I

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    mul-double/2addr v2, v6

    .line 166
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 167
    .line 168
    .line 169
    move-result-wide v2

    .line 170
    long-to-int v2, v2

    .line 171
    invoke-static {v2, v1, v8}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(III)I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    invoke-static {v0, v4, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    return v0
.end method

.method public static XYZToLAB(DDD[D)V
    .locals 4

    .line 1
    array-length v0, p6

    .line 2
    const/4 v1, 0x3

    .line 3
    if-ne v0, v1, :cond_0

    .line 4
    .line 5
    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    div-double/2addr p0, v0

    .line 11
    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->pivotXyzComponent(D)D

    .line 12
    .line 13
    .line 14
    move-result-wide p0

    .line 15
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 16
    .line 17
    div-double/2addr p2, v0

    .line 18
    invoke-static {p2, p3}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->pivotXyzComponent(D)D

    .line 19
    .line 20
    .line 21
    move-result-wide p2

    .line 22
    const-wide v0, 0x405b3883126e978dL    # 108.883

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    div-double/2addr p4, v0

    .line 28
    invoke-static {p4, p5}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->pivotXyzComponent(D)D

    .line 29
    .line 30
    .line 31
    move-result-wide p4

    .line 32
    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    .line 33
    .line 34
    mul-double/2addr v0, p2

    .line 35
    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    .line 36
    .line 37
    sub-double/2addr v0, v2

    .line 38
    const-wide/16 v2, 0x0

    .line 39
    .line 40
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    const/4 v2, 0x0

    .line 45
    aput-wide v0, p6, v2

    .line 46
    .line 47
    const-wide v0, 0x407f400000000000L    # 500.0

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    sub-double/2addr p0, p2

    .line 53
    mul-double/2addr p0, v0

    .line 54
    const/4 v0, 0x1

    .line 55
    aput-wide p0, p6, v0

    .line 56
    .line 57
    const-wide/high16 p0, 0x4069000000000000L    # 200.0

    .line 58
    .line 59
    sub-double/2addr p2, p4

    .line 60
    mul-double/2addr p2, p0

    .line 61
    const/4 p0, 0x2

    .line 62
    aput-wide p2, p6, p0

    .line 63
    .line 64
    return-void

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    const-string p1, "outLab must have a length of 3."

    .line 68
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0
.end method

.method public static calculateContrast(II)D
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xff

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "background can not be translucent: #"

    .line 12
    .line 13
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v2, "NotificationColorUtil"

    .line 28
    .line 29
    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-ge v0, v1, :cond_1

    .line 37
    .line 38
    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->compositeColors(II)I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    :cond_1
    invoke-static {p0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    const-wide v2, 0x3fa999999999999aL    # 0.05

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    add-double/2addr v0, v2

    .line 52
    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    .line 53
    .line 54
    .line 55
    move-result-wide p0

    .line 56
    add-double/2addr p0, v2

    .line 57
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    .line 62
    .line 63
    .line 64
    move-result-wide p0

    .line 65
    div-double/2addr v2, p0

    .line 66
    return-wide v2
.end method

.method public static calculateLuminance(I)D
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToXYZ(I[D)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    aget-wide v1, v0, p0

    .line 10
    .line 11
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 12
    .line 13
    div-double/2addr v1, v3

    .line 14
    return-wide v1
.end method

.method public static colorToHSL(I[F)V
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->RGBToHSL(III[F)V

    return-void
.end method

.method public static colorToLAB(I[D)V
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->RGBToLAB(III[D)V

    return-void
.end method

.method public static colorToXYZ(I[D)V
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->RGBToXYZ(III[D)V

    return-void
.end method

.method private static compositeAlpha(II)I
    .locals 0

    rsub-int p1, p1, 0xff

    rsub-int p0, p0, 0xff

    mul-int/2addr p0, p1

    div-int/lit16 p0, p0, 0xff

    rsub-int p0, p0, 0xff

    return p0
.end method

.method public static compositeColors(II)I
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->compositeAlpha(II)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-static {v3, v1, v4, v0, v2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->compositeComponent(IIIII)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-static {v4, v1, v5, v0, v2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->compositeComponent(IIIII)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-static {p0, v1, p1, v0, v2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->compositeComponent(IIIII)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    invoke-static {v2, v3, v4, p0}, Landroid/graphics/Color;->argb(IIII)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0
.end method

.method private static compositeComponent(IIIII)I
    .locals 0

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    mul-int/lit16 p0, p0, 0xff

    mul-int/2addr p0, p1

    mul-int/2addr p2, p3

    rsub-int p1, p1, 0xff

    mul-int/2addr p1, p2

    add-int/2addr p1, p0

    mul-int/lit16 p4, p4, 0xff

    div-int/2addr p1, p4

    return p1
.end method

.method private static constrain(FFF)F
    .locals 1

    .line 1
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method private static constrain(III)I
    .locals 0

    .line 2
    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static getTempDouble3Array()[D
    .locals 2

    .line 1
    sget-object v0, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, [D

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    new-array v1, v1, [D

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-object v1
.end method

.method private static pivotXyzComponent(D)D
    .locals 2

    const-wide v0, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide v0, 0x408c3a6666666666L    # 903.3

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double/2addr p0, v0

    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    div-double/2addr p0, v0

    :goto_0
    return-wide p0
.end method
