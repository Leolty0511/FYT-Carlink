.class public Landroid/opengl/GLU;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sScratch:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [F

    .line 1
    sput-object v0, Landroid/opengl/GLU;->sScratch:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
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
    const-string p0, "out of memory"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "stack underflow"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "stack overflow"

    return-object p0

    :pswitch_3
    const-string p0, "invalid operation"

    return-object p0

    :pswitch_4
    const-string p0, "invalid value"

    return-object p0

    :pswitch_5
    const-string p0, "invalid enum"

    return-object p0

    :cond_0
    const-string p0, "no error"

    return-object p0

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

.method public static gluLookAt(Lb0/a;FFFFFFFFF)V
    .locals 13

    .line 1
    sget-object v12, Landroid/opengl/GLU;->sScratch:[F

    .line 2
    monitor-enter v12

    const/4 v2, 0x0

    move-object v1, v12

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    .line 3
    :try_start_0
    invoke-static/range {v1 .. v11}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    const/4 v0, 0x0

    move-object v1, p0

    .line 4
    invoke-interface {p0, v12, v0}, Lb0/a;->glMultMatrixf([FI)V

    .line 5
    monitor-exit v12

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static gluOrtho2D(Lb0/a;FFFF)V
    .locals 7

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-interface/range {v0 .. v6}, Lb0/a;->glOrthof(FFFFFF)V

    return-void
.end method

.method public static gluPerspective(Lb0/a;FFFF)V
    .locals 7

    float-to-double v0, p1

    const-wide v2, 0x3f81df46a2529d39L    # 0.008726646259971648

    mul-double/2addr v0, v2

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p1, v0

    mul-float v4, p3, p1

    neg-float v3, v4

    mul-float v1, v3, p2

    mul-float v2, v4, p2

    move-object v0, p0

    move v5, p3

    move v6, p4

    .line 2
    invoke-interface/range {v0 .. v6}, Lb0/a;->glFrustumf(FFFFFF)V

    return-void
.end method

.method public static gluProject(FFF[FI[FI[II[FI)I
    .locals 8

    .line 1
    sget-object v7, Landroid/opengl/GLU;->sScratch:[F

    .line 2
    monitor-enter v7

    const/4 v2, 0x0

    move-object v1, v7

    move-object v3, p5

    move v4, p6

    move-object v5, p3

    move v6, p4

    .line 3
    :try_start_0
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/16 v0, 0x10

    .line 4
    aput p0, v7, v0

    const/16 v0, 0x11

    .line 5
    aput p1, v7, v0

    const/16 v0, 0x12

    .line 6
    aput p2, v7, v0

    const/16 v0, 0x13

    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    aput v1, v7, v0

    const/16 v0, 0x14

    const/4 v2, 0x0

    const/16 v3, 0x10

    move-object p0, v7

    move p1, v0

    move-object p2, v7

    move p3, v2

    move-object p4, v7

    move p5, v3

    .line 8
    invoke-static/range {p0 .. p5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/16 v0, 0x17

    .line 9
    aget v0, v7, v0

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 10
    monitor-exit v7

    return v0

    :cond_0
    div-float v0, v1, v0

    .line 11
    aget v2, p7, p8

    int-to-float v2, v2

    add-int/lit8 v3, p8, 0x2

    aget v3, p7, v3

    int-to-float v3, v3

    const/16 v4, 0x14

    aget v4, v7, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v1

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p9, p10

    add-int/lit8 v2, p10, 0x1

    add-int/lit8 v3, p8, 0x1

    .line 12
    aget v3, p7, v3

    int-to-float v3, v3

    add-int/lit8 v5, p8, 0x3

    aget v5, p7, v5

    int-to-float v5, v5

    const/16 v6, 0x15

    aget v6, v7, v6

    mul-float/2addr v6, v0

    add-float/2addr v6, v1

    mul-float/2addr v5, v6

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    aput v3, p9, v2

    add-int/lit8 v2, p10, 0x2

    const/16 v3, 0x16

    .line 13
    aget v3, v7, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v1

    mul-float/2addr v3, v4

    aput v3, p9, v2

    .line 14
    monitor-exit v7

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static gluUnProject(FFF[FI[FI[II[FI)I
    .locals 8

    .line 1
    sget-object v7, Landroid/opengl/GLU;->sScratch:[F

    .line 2
    monitor-enter v7

    const/4 v2, 0x0

    move-object v1, v7

    move-object v3, p5

    move v4, p6

    move-object v5, p3

    move v6, p4

    .line 3
    :try_start_0
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 4
    invoke-static {v7, v0, v7, v1}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    monitor-exit v7

    return v1

    :cond_0
    add-int/lit8 v0, p8, 0x0

    .line 6
    aget v0, p7, v0

    int-to-float v0, v0

    sub-float v0, p0, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    add-int/lit8 v3, p8, 0x2

    aget v3, p7, v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v0, v3

    aput v0, v7, v1

    add-int/lit8 v0, p8, 0x1

    .line 7
    aget v0, p7, v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    mul-float/2addr v0, v2

    const/4 v1, 0x3

    add-int/lit8 v4, p8, 0x3

    aget v4, p7, v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    sub-float/2addr v0, v3

    const/4 v4, 0x1

    aput v0, v7, v4

    mul-float v0, p2, v2

    sub-float/2addr v0, v3

    const/4 v2, 0x2

    .line 8
    aput v0, v7, v2

    .line 9
    aput v3, v7, v1

    const/16 v0, 0x10

    const/4 v1, 0x0

    move-object/from16 p0, p9

    move/from16 p1, p10

    move-object p2, v7

    move p3, v0

    move-object p4, v7

    move p5, v1

    .line 10
    invoke-static/range {p0 .. p5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 11
    monitor-exit v7

    return v4

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
