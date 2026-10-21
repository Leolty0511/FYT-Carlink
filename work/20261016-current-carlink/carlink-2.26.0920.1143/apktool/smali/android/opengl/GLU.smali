.class public Landroid/opengl/GLU;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sScratch:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    sput-object v0, Landroid/opengl/GLU;->sScratch:[F

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gluErrorString(I)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "out of memory"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "stack underflow"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "stack overflow"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "invalid operation"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "invalid value"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "invalid enum"

    return-object p0

    :cond_0
    const-string/jumbo p0, "no error"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static gluLookAt(Lr/a;FFFFFFFFF)V
    .locals 13

    .line 1
    sget-object v12, Landroid/opengl/GLU;->sScratch:[F

    .line 2
    .line 3
    monitor-enter v12

    .line 4
    const/4 v2, 0x0

    .line 5
    move-object v1, v12

    .line 6
    move v3, p1

    .line 7
    move v4, p2

    .line 8
    move/from16 v5, p3

    .line 9
    .line 10
    move/from16 v6, p4

    .line 11
    .line 12
    move/from16 v7, p5

    .line 13
    .line 14
    move/from16 v8, p6

    .line 15
    .line 16
    move/from16 v9, p7

    .line 17
    .line 18
    move/from16 v10, p8

    .line 19
    .line 20
    move/from16 v11, p9

    .line 21
    .line 22
    :try_start_0
    invoke-static/range {v1 .. v11}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    move-object v1, p0

    .line 27
    invoke-interface {p0, v12, v0}, Lr/a;->glMultMatrixf([FI)V

    .line 28
    .line 29
    .line 30
    monitor-exit v12

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v0
.end method

.method public static gluOrtho2D(Lr/a;FFFF)V
    .locals 7

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Lr/a;->glOrthof(FFFFFF)V

    return-void
.end method

.method public static gluPerspective(Lr/a;FFFF)V
    .locals 7

    .line 1
    float-to-double v0, p1

    .line 2
    const-wide v2, 0x3f81df46a2529d39L    # 0.008726646259971648

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    mul-double/2addr v0, v2

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    double-to-float p1, v0

    .line 13
    mul-float v4, p3, p1

    .line 14
    .line 15
    neg-float v3, v4

    .line 16
    mul-float v1, v3, p2

    .line 17
    .line 18
    mul-float v2, v4, p2

    .line 19
    .line 20
    move-object v0, p0

    .line 21
    move v5, p3

    .line 22
    move v6, p4

    .line 23
    invoke-interface/range {v0 .. v6}, Lr/a;->glFrustumf(FFFFFF)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static gluProject(FFF[FI[FI[II[FI)I
    .locals 8

    .line 1
    sget-object v7, Landroid/opengl/GLU;->sScratch:[F

    .line 2
    .line 3
    monitor-enter v7

    .line 4
    const/4 v2, 0x0

    .line 5
    move-object v1, v7

    .line 6
    move-object v3, p5

    .line 7
    move v4, p6

    .line 8
    move-object v5, p3

    .line 9
    move v6, p4

    .line 10
    :try_start_0
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 11
    .line 12
    .line 13
    const/16 v0, 0x10

    .line 14
    .line 15
    aput p0, v7, v0

    .line 16
    .line 17
    const/16 v0, 0x11

    .line 18
    .line 19
    aput p1, v7, v0

    .line 20
    .line 21
    const/16 v0, 0x12

    .line 22
    .line 23
    aput p2, v7, v0

    .line 24
    .line 25
    const/16 v0, 0x13

    .line 26
    .line 27
    const/high16 v1, 0x3f800000    # 1.0f

    .line 28
    .line 29
    aput v1, v7, v0

    .line 30
    .line 31
    const/16 v0, 0x14

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    const/16 v3, 0x10

    .line 35
    .line 36
    move-object p0, v7

    .line 37
    move p1, v0

    .line 38
    move-object p2, v7

    .line 39
    move p3, v2

    .line 40
    move-object p4, v7

    .line 41
    move p5, v3

    .line 42
    invoke-static/range {p0 .. p5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 43
    .line 44
    .line 45
    const/16 v0, 0x17

    .line 46
    .line 47
    aget v0, v7, v0

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    cmpl-float v2, v0, v2

    .line 51
    .line 52
    if-nez v2, :cond_0

    .line 53
    .line 54
    monitor-exit v7

    .line 55
    const/4 v0, 0x0

    .line 56
    return v0

    .line 57
    :cond_0
    div-float v0, v1, v0

    .line 58
    .line 59
    aget v2, p7, p8

    .line 60
    .line 61
    int-to-float v2, v2

    .line 62
    add-int/lit8 v3, p8, 0x2

    .line 63
    .line 64
    aget v3, p7, v3

    .line 65
    .line 66
    int-to-float v3, v3

    .line 67
    const/16 v4, 0x14

    .line 68
    .line 69
    aget v4, v7, v4

    .line 70
    .line 71
    mul-float/2addr v4, v0

    .line 72
    add-float/2addr v4, v1

    .line 73
    mul-float/2addr v4, v3

    .line 74
    const/high16 v3, 0x3f000000    # 0.5f

    .line 75
    .line 76
    mul-float/2addr v4, v3

    .line 77
    add-float/2addr v4, v2

    .line 78
    aput v4, p9, p10

    .line 79
    .line 80
    add-int/lit8 v2, p10, 0x1

    .line 81
    .line 82
    add-int/lit8 v4, p8, 0x1

    .line 83
    .line 84
    aget v4, p7, v4

    .line 85
    .line 86
    int-to-float v4, v4

    .line 87
    add-int/lit8 v5, p8, 0x3

    .line 88
    .line 89
    aget v5, p7, v5

    .line 90
    .line 91
    int-to-float v5, v5

    .line 92
    const/16 v6, 0x15

    .line 93
    .line 94
    aget v6, v7, v6

    .line 95
    .line 96
    mul-float/2addr v6, v0

    .line 97
    add-float/2addr v6, v1

    .line 98
    mul-float/2addr v6, v5

    .line 99
    mul-float/2addr v6, v3

    .line 100
    add-float/2addr v6, v4

    .line 101
    aput v6, p9, v2

    .line 102
    .line 103
    add-int/lit8 v2, p10, 0x2

    .line 104
    .line 105
    const/16 v4, 0x16

    .line 106
    .line 107
    aget v4, v7, v4

    .line 108
    .line 109
    mul-float/2addr v4, v0

    .line 110
    add-float/2addr v4, v1

    .line 111
    mul-float/2addr v4, v3

    .line 112
    aput v4, p9, v2

    .line 113
    .line 114
    monitor-exit v7

    .line 115
    const/4 v0, 0x1

    .line 116
    return v0

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    throw v0
.end method

.method public static gluUnProject(FFF[FI[FI[II[FI)I
    .locals 8

    .line 1
    sget-object v7, Landroid/opengl/GLU;->sScratch:[F

    .line 2
    .line 3
    monitor-enter v7

    .line 4
    const/4 v2, 0x0

    .line 5
    move-object v1, v7

    .line 6
    move-object v3, p5

    .line 7
    move v4, p6

    .line 8
    move-object v5, p3

    .line 9
    move v6, p4

    .line 10
    :try_start_0
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 11
    .line 12
    .line 13
    const/16 v0, 0x10

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v7, v0, v7, v1}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    monitor-exit v7

    .line 23
    return v1

    .line 24
    :cond_0
    add-int/lit8 v0, p8, 0x0

    .line 25
    .line 26
    aget v0, p7, v0

    .line 27
    .line 28
    int-to-float v0, v0

    .line 29
    sub-float v0, p0, v0

    .line 30
    .line 31
    const/high16 v2, 0x40000000    # 2.0f

    .line 32
    .line 33
    mul-float/2addr v0, v2

    .line 34
    add-int/lit8 v3, p8, 0x2

    .line 35
    .line 36
    aget v3, p7, v3

    .line 37
    .line 38
    int-to-float v3, v3

    .line 39
    div-float/2addr v0, v3

    .line 40
    const/high16 v3, 0x3f800000    # 1.0f

    .line 41
    .line 42
    sub-float/2addr v0, v3

    .line 43
    aput v0, v7, v1

    .line 44
    .line 45
    add-int/lit8 v0, p8, 0x1

    .line 46
    .line 47
    aget v0, p7, v0

    .line 48
    .line 49
    int-to-float v0, v0

    .line 50
    sub-float v0, p1, v0

    .line 51
    .line 52
    mul-float/2addr v0, v2

    .line 53
    const/4 v1, 0x3

    .line 54
    add-int/lit8 v4, p8, 0x3

    .line 55
    .line 56
    aget v4, p7, v4

    .line 57
    .line 58
    int-to-float v4, v4

    .line 59
    div-float/2addr v0, v4

    .line 60
    sub-float/2addr v0, v3

    .line 61
    const/4 v4, 0x1

    .line 62
    aput v0, v7, v4

    .line 63
    .line 64
    mul-float v0, p2, v2

    .line 65
    .line 66
    sub-float/2addr v0, v3

    .line 67
    const/4 v2, 0x2

    .line 68
    aput v0, v7, v2

    .line 69
    .line 70
    aput v3, v7, v1

    .line 71
    .line 72
    const/16 v0, 0x10

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    move-object/from16 p0, p9

    .line 76
    .line 77
    move/from16 p1, p10

    .line 78
    .line 79
    move-object p2, v7

    .line 80
    move p3, v0

    .line 81
    move-object p4, v7

    .line 82
    move p5, v1

    .line 83
    invoke-static/range {p0 .. p5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 84
    .line 85
    .line 86
    monitor-exit v7

    .line 87
    return v4

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    throw v0
.end method
