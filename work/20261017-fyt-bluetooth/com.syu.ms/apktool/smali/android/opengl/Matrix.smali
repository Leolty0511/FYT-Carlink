.class public Landroid/opengl/Matrix;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sTemp:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [F

    .line 1
    sput-object v0, Landroid/opengl/Matrix;->sTemp:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static frustumM([FIFFFFFF)V
    .locals 7

    cmpl-float v0, p2, p3

    if-eqz v0, :cond_4

    cmpl-float v0, p5, p4

    if-eqz v0, :cond_3

    cmpl-float v0, p6, p7

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    cmpg-float v1, p6, v0

    if-lez v1, :cond_1

    cmpg-float v1, p7, v0

    if-lez v1, :cond_0

    sub-float v1, p3, p2

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    sub-float v3, p5, p4

    div-float v3, v2, v3

    sub-float v4, p6, p7

    div-float/2addr v2, v4

    mul-float v4, p6, v1

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    mul-float v6, p6, v3

    mul-float/2addr v6, v5

    add-float/2addr p3, p2

    mul-float/2addr p3, v1

    add-float/2addr p5, p4

    mul-float/2addr p5, v3

    add-float p2, p7, p6

    mul-float/2addr p2, v2

    mul-float/2addr p7, p6

    mul-float/2addr p7, v2

    mul-float/2addr p7, v5

    add-int/lit8 p4, p1, 0x0

    .line 1
    aput v4, p0, p4

    add-int/lit8 p4, p1, 0x5

    .line 2
    aput v6, p0, p4

    add-int/lit8 p4, p1, 0x8

    .line 3
    aput p3, p0, p4

    add-int/lit8 p3, p1, 0x9

    .line 4
    aput p5, p0, p3

    add-int/lit8 p3, p1, 0xa

    .line 5
    aput p2, p0, p3

    add-int/lit8 p2, p1, 0xe

    .line 6
    aput p7, p0, p2

    add-int/lit8 p2, p1, 0xb

    const/high16 p3, -0x40800000    # -1.0f

    .line 7
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x1

    .line 8
    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x2

    .line 9
    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x3

    .line 10
    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x4

    .line 11
    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x6

    .line 12
    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x7

    .line 13
    aput v0, p0, p2

    add-int/lit8 p2, p1, 0xc

    .line 14
    aput v0, p0, p2

    add-int/lit8 p2, p1, 0xd

    .line 15
    aput v0, p0, p2

    add-int/lit8 p1, p1, 0xf

    .line 16
    aput v0, p0, p1

    return-void

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "far <= 0.0f"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "near <= 0.0f"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "near == far"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "top == bottom"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "left == right"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static invertM([FI[FI)Z
    .locals 37

    add-int/lit8 v0, p3, 0x0

    .line 1
    aget v0, p2, v0

    add-int/lit8 v1, p3, 0x1

    .line 2
    aget v1, p2, v1

    add-int/lit8 v2, p3, 0x2

    .line 3
    aget v2, p2, v2

    add-int/lit8 v3, p3, 0x3

    .line 4
    aget v3, p2, v3

    add-int/lit8 v4, p3, 0x4

    .line 5
    aget v4, p2, v4

    add-int/lit8 v5, p3, 0x5

    .line 6
    aget v5, p2, v5

    add-int/lit8 v6, p3, 0x6

    .line 7
    aget v6, p2, v6

    add-int/lit8 v7, p3, 0x7

    .line 8
    aget v7, p2, v7

    add-int/lit8 v8, p3, 0x8

    .line 9
    aget v8, p2, v8

    add-int/lit8 v9, p3, 0x9

    .line 10
    aget v9, p2, v9

    add-int/lit8 v10, p3, 0xa

    .line 11
    aget v10, p2, v10

    add-int/lit8 v11, p3, 0xb

    .line 12
    aget v11, p2, v11

    add-int/lit8 v12, p3, 0xc

    .line 13
    aget v12, p2, v12

    add-int/lit8 v13, p3, 0xd

    .line 14
    aget v13, p2, v13

    add-int/lit8 v14, p3, 0xe

    .line 15
    aget v14, p2, v14

    add-int/lit8 v15, p3, 0xf

    .line 16
    aget v15, p2, v15

    mul-float v16, v10, v15

    mul-float v17, v14, v11

    mul-float v18, v6, v15

    mul-float v19, v14, v7

    mul-float v20, v6, v11

    mul-float v21, v10, v7

    mul-float v22, v2, v15

    mul-float v23, v14, v3

    mul-float v24, v2, v11

    mul-float v25, v10, v3

    mul-float v26, v2, v7

    mul-float v27, v6, v3

    mul-float v28, v16, v5

    mul-float v29, v19, v9

    add-float v28, v28, v29

    mul-float v29, v20, v13

    add-float v28, v28, v29

    mul-float v29, v17, v5

    mul-float v30, v18, v9

    add-float v29, v29, v30

    mul-float v30, v21, v13

    add-float v29, v29, v30

    sub-float v28, v28, v29

    mul-float v29, v17, v1

    mul-float v30, v22, v9

    add-float v29, v29, v30

    mul-float v30, v25, v13

    add-float v29, v29, v30

    mul-float v30, v16, v1

    mul-float v31, v23, v9

    add-float v30, v30, v31

    mul-float v31, v24, v13

    add-float v30, v30, v31

    sub-float v29, v29, v30

    mul-float v30, v18, v1

    mul-float v31, v23, v5

    add-float v30, v30, v31

    mul-float v31, v26, v13

    add-float v30, v30, v31

    mul-float v31, v19, v1

    mul-float v32, v22, v5

    add-float v31, v31, v32

    mul-float v32, v27, v13

    add-float v31, v31, v32

    sub-float v30, v30, v31

    mul-float v31, v21, v1

    mul-float v32, v24, v5

    add-float v31, v31, v32

    mul-float v32, v27, v9

    add-float v31, v31, v32

    mul-float v32, v20, v1

    mul-float v33, v25, v5

    add-float v32, v32, v33

    mul-float v33, v26, v9

    add-float v32, v32, v33

    sub-float v31, v31, v32

    mul-float v32, v17, v4

    mul-float v33, v18, v8

    add-float v32, v32, v33

    mul-float v33, v21, v12

    add-float v32, v32, v33

    mul-float v33, v16, v4

    mul-float v34, v19, v8

    add-float v33, v33, v34

    mul-float v34, v20, v12

    add-float v33, v33, v34

    sub-float v32, v32, v33

    mul-float v16, v16, v0

    mul-float v33, v23, v8

    add-float v16, v16, v33

    mul-float v33, v24, v12

    add-float v16, v16, v33

    mul-float v17, v17, v0

    mul-float v33, v22, v8

    add-float v17, v17, v33

    mul-float v33, v25, v12

    add-float v17, v17, v33

    sub-float v16, v16, v17

    mul-float v19, v19, v0

    mul-float v22, v22, v4

    add-float v19, v19, v22

    mul-float v17, v27, v12

    add-float v19, v19, v17

    mul-float v18, v18, v0

    mul-float v23, v23, v4

    add-float v18, v18, v23

    mul-float v17, v26, v12

    add-float v18, v18, v17

    sub-float v19, v19, v18

    mul-float v20, v20, v0

    mul-float v25, v25, v4

    add-float v20, v20, v25

    mul-float v26, v26, v8

    add-float v20, v20, v26

    mul-float v21, v21, v0

    mul-float v24, v24, v4

    add-float v21, v21, v24

    mul-float v27, v27, v8

    add-float v21, v21, v27

    sub-float v20, v20, v21

    mul-float v17, v8, v13

    mul-float v18, v12, v9

    mul-float v21, v4, v13

    mul-float v22, v12, v5

    mul-float v23, v4, v9

    mul-float v24, v8, v5

    mul-float/2addr v13, v0

    mul-float v25, v12, v1

    mul-float/2addr v9, v0

    mul-float v26, v8, v1

    mul-float/2addr v5, v0

    mul-float/2addr v1, v4

    mul-float v27, v17, v7

    mul-float v33, v22, v11

    add-float v27, v27, v33

    mul-float v33, v23, v15

    add-float v27, v27, v33

    mul-float v33, v18, v7

    mul-float v34, v21, v11

    add-float v33, v33, v34

    mul-float v34, v24, v15

    add-float v33, v33, v34

    sub-float v27, v27, v33

    mul-float v33, v18, v3

    mul-float v34, v13, v11

    add-float v33, v33, v34

    mul-float v34, v26, v15

    add-float v33, v33, v34

    mul-float v34, v17, v3

    mul-float v35, v25, v11

    add-float v34, v34, v35

    mul-float v35, v9, v15

    add-float v34, v34, v35

    sub-float v33, v33, v34

    mul-float v34, v21, v3

    mul-float v35, v25, v7

    add-float v34, v34, v35

    mul-float v35, v5, v15

    add-float v34, v34, v35

    mul-float v35, v22, v3

    mul-float v36, v13, v7

    add-float v35, v35, v36

    mul-float/2addr v15, v1

    add-float v35, v35, v15

    sub-float v34, v34, v35

    mul-float v15, v24, v3

    mul-float v35, v9, v7

    add-float v15, v15, v35

    mul-float v35, v1, v11

    add-float v15, v15, v35

    mul-float v3, v3, v23

    mul-float v7, v7, v26

    add-float/2addr v3, v7

    mul-float/2addr v11, v5

    add-float/2addr v3, v11

    sub-float/2addr v15, v3

    mul-float v3, v21, v10

    mul-float v7, v24, v14

    add-float/2addr v3, v7

    mul-float v7, v18, v6

    add-float/2addr v3, v7

    mul-float v7, v23, v14

    mul-float v11, v17, v6

    add-float/2addr v7, v11

    mul-float v11, v22, v10

    add-float/2addr v7, v11

    sub-float/2addr v3, v7

    mul-float v7, v9, v14

    mul-float v17, v17, v2

    add-float v7, v7, v17

    mul-float v11, v25, v10

    add-float/2addr v7, v11

    mul-float v11, v13, v10

    mul-float v17, v26, v14

    add-float v11, v11, v17

    mul-float v18, v18, v2

    add-float v11, v11, v18

    sub-float/2addr v7, v11

    mul-float/2addr v13, v6

    mul-float v11, v1, v14

    add-float/2addr v13, v11

    mul-float v22, v22, v2

    add-float v13, v13, v22

    mul-float/2addr v14, v5

    mul-float v21, v21, v2

    add-float v14, v14, v21

    mul-float v25, v25, v6

    add-float v14, v14, v25

    sub-float/2addr v13, v14

    mul-float/2addr v5, v10

    mul-float v23, v23, v2

    add-float v5, v5, v23

    mul-float v26, v26, v6

    add-float v5, v5, v26

    mul-float/2addr v9, v6

    mul-float/2addr v1, v10

    add-float/2addr v9, v1

    mul-float v24, v24, v2

    add-float v9, v9, v24

    sub-float/2addr v5, v9

    mul-float v0, v0, v28

    mul-float v4, v4, v29

    add-float/2addr v0, v4

    mul-float v8, v8, v30

    add-float/2addr v0, v8

    mul-float v12, v12, v31

    add-float/2addr v0, v12

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    mul-float v28, v28, v1

    .line 17
    aput v28, p0, p1

    add-int/lit8 v0, p1, 0x1

    mul-float v29, v29, v1

    .line 18
    aput v29, p0, v0

    add-int/lit8 v0, p1, 0x2

    mul-float v30, v30, v1

    .line 19
    aput v30, p0, v0

    add-int/lit8 v0, p1, 0x3

    mul-float v31, v31, v1

    .line 20
    aput v31, p0, v0

    add-int/lit8 v0, p1, 0x4

    mul-float v32, v32, v1

    .line 21
    aput v32, p0, v0

    add-int/lit8 v0, p1, 0x5

    mul-float v16, v16, v1

    .line 22
    aput v16, p0, v0

    add-int/lit8 v0, p1, 0x6

    mul-float v19, v19, v1

    .line 23
    aput v19, p0, v0

    add-int/lit8 v0, p1, 0x7

    mul-float v20, v20, v1

    .line 24
    aput v20, p0, v0

    add-int/lit8 v0, p1, 0x8

    mul-float v27, v27, v1

    .line 25
    aput v27, p0, v0

    add-int/lit8 v0, p1, 0x9

    mul-float v33, v33, v1

    .line 26
    aput v33, p0, v0

    add-int/lit8 v0, p1, 0xa

    mul-float v34, v34, v1

    .line 27
    aput v34, p0, v0

    add-int/lit8 v0, p1, 0xb

    mul-float/2addr v15, v1

    .line 28
    aput v15, p0, v0

    add-int/lit8 v0, p1, 0xc

    mul-float/2addr v3, v1

    .line 29
    aput v3, p0, v0

    add-int/lit8 v0, p1, 0xd

    mul-float/2addr v7, v1

    .line 30
    aput v7, p0, v0

    add-int/lit8 v0, p1, 0xe

    mul-float/2addr v13, v1

    .line 31
    aput v13, p0, v0

    add-int/lit8 v0, p1, 0xf

    mul-float/2addr v5, v1

    .line 32
    aput v5, p0, v0

    const/4 v0, 0x1

    return v0
.end method

.method public static length(FFF)F
    .locals 0

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    mul-float/2addr p2, p2

    add-float/2addr p0, p2

    float-to-double p0, p0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static native multiplyMM([FI[FI[FI)V
.end method

.method public static native multiplyMV([FI[FI[FI)V
.end method

.method public static orthoM([FIFFFFFF)V
    .locals 7

    cmpl-float v0, p2, p3

    if-eqz v0, :cond_2

    cmpl-float v0, p4, p5

    if-eqz v0, :cond_1

    cmpl-float v0, p6, p7

    if-eqz v0, :cond_0

    sub-float v0, p3, p2

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    sub-float v2, p5, p4

    div-float v2, v1, v2

    sub-float v3, p7, p6

    div-float v3, v1, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v0, v4

    mul-float/2addr v4, v2

    const/high16 v6, -0x40000000    # -2.0f

    mul-float/2addr v6, v3

    add-float/2addr p3, p2

    neg-float p2, p3

    mul-float/2addr p2, v0

    add-float/2addr p5, p4

    neg-float p3, p5

    mul-float/2addr p3, v2

    add-float/2addr p7, p6

    neg-float p4, p7

    mul-float/2addr p4, v3

    add-int/lit8 p5, p1, 0x0

    .line 1
    aput v5, p0, p5

    add-int/lit8 p5, p1, 0x5

    .line 2
    aput v4, p0, p5

    add-int/lit8 p5, p1, 0xa

    .line 3
    aput v6, p0, p5

    add-int/lit8 p5, p1, 0xc

    .line 4
    aput p2, p0, p5

    add-int/lit8 p2, p1, 0xd

    .line 5
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0xe

    .line 6
    aput p4, p0, p2

    add-int/lit8 p2, p1, 0xf

    .line 7
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x1

    const/4 p3, 0x0

    .line 8
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x2

    .line 9
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x3

    .line 10
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x4

    .line 11
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x6

    .line 12
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x7

    .line 13
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x8

    .line 14
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x9

    .line 15
    aput p3, p0, p2

    add-int/lit8 p1, p1, 0xb

    .line 16
    aput p3, p0, p1

    return-void

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "near == far"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bottom == top"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "left == right"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static perspectiveM([FIFFFF)V
    .locals 4

    float-to-double v0, p2

    const-wide v2, 0x3f81df46a2529d39L    # 0.008726646259971648

    mul-double/2addr v0, v2

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p2, v0, p2

    sub-float v1, p4, p5

    div-float/2addr v0, v1

    add-int/lit8 v1, p1, 0x0

    div-float p3, p2, p3

    .line 2
    aput p3, p0, v1

    add-int/lit8 p3, p1, 0x1

    const/4 v1, 0x0

    .line 3
    aput v1, p0, p3

    add-int/lit8 p3, p1, 0x2

    .line 4
    aput v1, p0, p3

    add-int/lit8 p3, p1, 0x3

    .line 5
    aput v1, p0, p3

    add-int/lit8 p3, p1, 0x4

    .line 6
    aput v1, p0, p3

    add-int/lit8 p3, p1, 0x5

    .line 7
    aput p2, p0, p3

    add-int/lit8 p2, p1, 0x6

    .line 8
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x7

    .line 9
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x8

    .line 10
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x9

    .line 11
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0xa

    add-float p3, p5, p4

    mul-float/2addr p3, v0

    .line 12
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0xb

    const/high16 p3, -0x40800000    # -1.0f

    .line 13
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0xc

    .line 14
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0xd

    .line 15
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0xe

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p5, p3

    mul-float/2addr p5, p4

    mul-float/2addr p5, v0

    .line 16
    aput p5, p0, p2

    add-int/lit8 p1, p1, 0xf

    .line 17
    aput v1, p0, p1

    return-void
.end method

.method public static rotateM([FIFFFF)V
    .locals 7

    .line 5
    sget-object v6, Landroid/opengl/Matrix;->sTemp:[F

    monitor-enter v6

    const/4 v1, 0x0

    move-object v0, v6

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 6
    :try_start_0
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    const/16 v1, 0x10

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p0

    move v3, p1

    move-object v4, v6

    .line 7
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/16 p2, 0x10

    .line 8
    invoke-static {v6, p2, p0, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    monitor-exit v6

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static rotateM([FI[FIFFFF)V
    .locals 7

    .line 1
    sget-object v6, Landroid/opengl/Matrix;->sTemp:[F

    monitor-enter v6

    const/4 v1, 0x0

    move-object v0, v6

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    .line 2
    :try_start_0
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v6

    .line 3
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 4
    monitor-exit v6

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static scaleM([FIFFF)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    .line 5
    aget v2, p0, v1

    mul-float/2addr v2, p2

    aput v2, p0, v1

    add-int/lit8 v2, v1, 0x4

    .line 6
    aget v3, p0, v2

    mul-float/2addr v3, p3

    aput v3, p0, v2

    add-int/lit8 v1, v1, 0x8

    .line 7
    aget v2, p0, v1

    mul-float/2addr v2, p4

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static scaleM([FI[FIFFF)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    add-int v2, p3, v0

    .line 1
    aget v3, p2, v2

    mul-float/2addr v3, p4

    aput v3, p0, v1

    add-int/lit8 v3, v1, 0x4

    add-int/lit8 v4, v2, 0x4

    .line 2
    aget v4, p2, v4

    mul-float/2addr v4, p5

    aput v4, p0, v3

    add-int/lit8 v3, v1, 0x8

    add-int/lit8 v4, v2, 0x8

    .line 3
    aget v4, p2, v4

    mul-float/2addr v4, p6

    aput v4, p0, v3

    add-int/lit8 v1, v1, 0xc

    add-int/lit8 v2, v2, 0xc

    .line 4
    aget v2, p2, v2

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setIdentityM([FI)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    add-int v2, p1, v1

    const/4 v3, 0x0

    .line 1
    aput v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v2, :cond_1

    add-int v1, p1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2
    aput v3, p0, v1

    add-int/lit8 v0, v0, 0x5

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static setLookAtM([FIFFFFFFFFF)V
    .locals 5

    sub-float/2addr p5, p2

    sub-float/2addr p6, p3

    sub-float/2addr p7, p4

    .line 1
    invoke-static {p5, p6, p7}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    mul-float/2addr p5, v0

    mul-float/2addr p6, v0

    mul-float/2addr p7, v0

    mul-float v0, p6, p10

    mul-float v2, p7, p9

    sub-float/2addr v0, v2

    mul-float v2, p7, p8

    mul-float/2addr p10, p5

    sub-float/2addr v2, p10

    mul-float/2addr p9, p5

    mul-float/2addr p8, p6

    sub-float/2addr p9, p8

    .line 2
    invoke-static {v0, v2, p9}, Landroid/opengl/Matrix;->length(FFF)F

    move-result p8

    div-float p8, v1, p8

    mul-float/2addr v0, p8

    mul-float/2addr v2, p8

    mul-float/2addr p9, p8

    mul-float p8, v2, p7

    mul-float p10, p9, p6

    sub-float/2addr p8, p10

    mul-float p10, p9, p5

    mul-float v3, v0, p7

    sub-float/2addr p10, v3

    mul-float v3, v0, p6

    mul-float v4, v2, p5

    sub-float/2addr v3, v4

    add-int/lit8 v4, p1, 0x0

    .line 3
    aput v0, p0, v4

    add-int/lit8 v0, p1, 0x1

    .line 4
    aput p8, p0, v0

    add-int/lit8 p8, p1, 0x2

    neg-float p5, p5

    .line 5
    aput p5, p0, p8

    add-int/lit8 p5, p1, 0x3

    const/4 p8, 0x0

    .line 6
    aput p8, p0, p5

    add-int/lit8 p5, p1, 0x4

    .line 7
    aput v2, p0, p5

    add-int/lit8 p5, p1, 0x5

    .line 8
    aput p10, p0, p5

    add-int/lit8 p5, p1, 0x6

    neg-float p6, p6

    .line 9
    aput p6, p0, p5

    add-int/lit8 p5, p1, 0x7

    .line 10
    aput p8, p0, p5

    add-int/lit8 p5, p1, 0x8

    .line 11
    aput p9, p0, p5

    add-int/lit8 p5, p1, 0x9

    .line 12
    aput v3, p0, p5

    add-int/lit8 p5, p1, 0xa

    neg-float p6, p7

    .line 13
    aput p6, p0, p5

    add-int/lit8 p5, p1, 0xb

    .line 14
    aput p8, p0, p5

    add-int/lit8 p5, p1, 0xc

    .line 15
    aput p8, p0, p5

    add-int/lit8 p5, p1, 0xd

    .line 16
    aput p8, p0, p5

    add-int/lit8 p5, p1, 0xe

    .line 17
    aput p8, p0, p5

    add-int/lit8 p5, p1, 0xf

    .line 18
    aput v1, p0, p5

    neg-float p2, p2

    neg-float p3, p3

    neg-float p4, p4

    .line 19
    invoke-static {p0, p1, p2, p3, p4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public static setRotateEulerM([FIFFF)V
    .locals 8

    const v0, 0x3c8efa35

    mul-float/2addr p2, v0

    mul-float/2addr p3, v0

    mul-float/2addr p4, v0

    float-to-double v0, p2

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p2, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v1, p3

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float p3, v3

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v2, p4

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float p4, v4

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v3, p2, v1

    mul-float v4, v0, v1

    add-int/lit8 v5, p1, 0x0

    mul-float v6, p3, p4

    .line 7
    aput v6, p0, v5

    add-int/lit8 v5, p1, 0x1

    neg-float v6, p3

    mul-float/2addr v6, v2

    .line 8
    aput v6, p0, v5

    add-int/lit8 v5, p1, 0x2

    .line 9
    aput v1, p0, v5

    add-int/lit8 v1, p1, 0x3

    const/4 v5, 0x0

    .line 10
    aput v5, p0, v1

    add-int/lit8 v1, p1, 0x4

    mul-float v6, v3, p4

    mul-float v7, p2, v2

    add-float/2addr v6, v7

    .line 11
    aput v6, p0, v1

    add-int/lit8 v1, p1, 0x5

    neg-float v3, v3

    mul-float/2addr v3, v2

    mul-float v6, p2, p4

    add-float/2addr v3, v6

    .line 12
    aput v3, p0, v1

    add-int/lit8 v1, p1, 0x6

    neg-float v3, v0

    mul-float/2addr v3, p3

    .line 13
    aput v3, p0, v1

    add-int/lit8 v1, p1, 0x7

    .line 14
    aput v5, p0, v1

    add-int/lit8 v1, p1, 0x8

    neg-float v3, v4

    mul-float/2addr v3, p4

    mul-float v6, v0, v2

    add-float/2addr v3, v6

    .line 15
    aput v3, p0, v1

    add-int/lit8 v1, p1, 0x9

    mul-float/2addr v4, v2

    mul-float/2addr v0, p4

    add-float/2addr v4, v0

    .line 16
    aput v4, p0, v1

    add-int/lit8 p4, p1, 0xa

    mul-float/2addr p2, p3

    .line 17
    aput p2, p0, p4

    add-int/lit8 p2, p1, 0xb

    .line 18
    aput v5, p0, p2

    add-int/lit8 p2, p1, 0xc

    .line 19
    aput v5, p0, p2

    add-int/lit8 p2, p1, 0xd

    .line 20
    aput v5, p0, p2

    add-int/lit8 p2, p1, 0xe

    .line 21
    aput v5, p0, p2

    add-int/lit8 p1, p1, 0xf

    const/high16 p2, 0x3f800000    # 1.0f

    .line 22
    aput p2, p0, p1

    return-void
.end method

.method public static setRotateM([FIFFFF)V
    .locals 8

    add-int/lit8 v0, p1, 0x3

    const/4 v1, 0x0

    .line 1
    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x7

    .line 2
    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xb

    .line 3
    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xc

    .line 4
    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xd

    .line 5
    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xe

    .line 6
    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xf

    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    aput v2, p0, v0

    const v0, 0x3c8efa35

    mul-float/2addr p2, v0

    float-to-double v3, p2

    .line 8
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float p2, v5

    .line 9
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v0, v3

    cmpl-float v3, v2, p3

    if-nez v3, :cond_0

    cmpl-float v3, v1, p4

    if-nez v3, :cond_0

    cmpl-float v3, v1, p5

    if-nez v3, :cond_0

    add-int/lit8 p3, p1, 0x5

    .line 10
    aput v0, p0, p3

    add-int/lit8 p3, p1, 0xa

    aput v0, p0, p3

    add-int/lit8 p3, p1, 0x6

    .line 11
    aput p2, p0, p3

    add-int/lit8 p3, p1, 0x9

    neg-float p2, p2

    aput p2, p0, p3

    add-int/lit8 p2, p1, 0x1

    .line 12
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x2

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x4

    .line 13
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x8

    aput v1, p0, p2

    add-int/lit8 p1, p1, 0x0

    .line 14
    aput v2, p0, p1

    goto/16 :goto_0

    :cond_0
    cmpl-float v3, v1, p3

    if-nez v3, :cond_1

    cmpl-float v4, v2, p4

    if-nez v4, :cond_1

    cmpl-float v4, v1, p5

    if-nez v4, :cond_1

    add-int/lit8 p3, p1, 0x0

    .line 15
    aput v0, p0, p3

    add-int/lit8 p3, p1, 0xa

    aput v0, p0, p3

    add-int/lit8 p3, p1, 0x8

    .line 16
    aput p2, p0, p3

    add-int/lit8 p3, p1, 0x2

    neg-float p2, p2

    aput p2, p0, p3

    add-int/lit8 p2, p1, 0x1

    .line 17
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x4

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x6

    .line 18
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x9

    aput v1, p0, p2

    add-int/lit8 p1, p1, 0x5

    .line 19
    aput v2, p0, p1

    goto/16 :goto_0

    :cond_1
    if-nez v3, :cond_2

    cmpl-float v3, v1, p4

    if-nez v3, :cond_2

    cmpl-float v3, v2, p5

    if-nez v3, :cond_2

    add-int/lit8 p3, p1, 0x0

    .line 20
    aput v0, p0, p3

    add-int/lit8 p3, p1, 0x5

    aput v0, p0, p3

    add-int/lit8 p3, p1, 0x1

    .line 21
    aput p2, p0, p3

    add-int/lit8 p3, p1, 0x4

    neg-float p2, p2

    aput p2, p0, p3

    add-int/lit8 p2, p1, 0x2

    .line 22
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x6

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x8

    .line 23
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x9

    aput v1, p0, p2

    add-int/lit8 p1, p1, 0xa

    .line 24
    aput v2, p0, p1

    goto :goto_0

    .line 25
    :cond_2
    invoke-static {p3, p4, p5}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v1

    cmpl-float v3, v2, v1

    if-eqz v3, :cond_3

    div-float v1, v2, v1

    mul-float/2addr p3, v1

    mul-float/2addr p4, v1

    mul-float/2addr p5, v1

    :cond_3
    sub-float/2addr v2, v0

    mul-float v1, p3, p4

    mul-float v3, p4, p5

    mul-float v4, p5, p3

    mul-float v5, p3, p2

    mul-float v6, p4, p2

    mul-float/2addr p2, p5

    add-int/lit8 v7, p1, 0x0

    mul-float/2addr p3, p3

    mul-float/2addr p3, v2

    add-float/2addr p3, v0

    .line 26
    aput p3, p0, v7

    add-int/lit8 p3, p1, 0x4

    mul-float/2addr v1, v2

    sub-float v7, v1, p2

    .line 27
    aput v7, p0, p3

    add-int/lit8 p3, p1, 0x8

    mul-float/2addr v4, v2

    add-float v7, v4, v6

    .line 28
    aput v7, p0, p3

    add-int/lit8 p3, p1, 0x1

    add-float/2addr v1, p2

    .line 29
    aput v1, p0, p3

    add-int/lit8 p2, p1, 0x5

    mul-float/2addr p4, p4

    mul-float/2addr p4, v2

    add-float/2addr p4, v0

    .line 30
    aput p4, p0, p2

    add-int/lit8 p2, p1, 0x9

    mul-float/2addr v3, v2

    sub-float p3, v3, v5

    .line 31
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x2

    sub-float/2addr v4, v6

    .line 32
    aput v4, p0, p2

    add-int/lit8 p2, p1, 0x6

    add-float/2addr v3, v5

    .line 33
    aput v3, p0, p2

    add-int/lit8 p1, p1, 0xa

    mul-float/2addr p5, p5

    mul-float/2addr p5, v2

    add-float/2addr p5, v0

    .line 34
    aput p5, p0, p1

    :goto_0
    return-void
.end method

.method public static translateM([FIFFF)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    add-int/lit8 v2, v1, 0xc

    .line 3
    aget v3, p0, v2

    aget v4, p0, v1

    mul-float/2addr v4, p2

    add-int/lit8 v5, v1, 0x4

    aget v5, p0, v5

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    add-int/lit8 v1, v1, 0x8

    aget v1, p0, v1

    mul-float/2addr v1, p4

    add-float/2addr v4, v1

    add-float/2addr v3, v4

    aput v3, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static translateM([FI[FIFFF)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    add-int v2, p1, v1

    add-int v3, p3, v1

    .line 1
    aget v3, p2, v3

    aput v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    add-int v1, p1, v0

    add-int v3, p3, v0

    add-int/2addr v1, v2

    .line 2
    aget v4, p2, v3

    mul-float/2addr v4, p4

    add-int/lit8 v5, v3, 0x4

    aget v5, p2, v5

    mul-float/2addr v5, p5

    add-float/2addr v4, v5

    add-int/lit8 v5, v3, 0x8

    aget v5, p2, v5

    mul-float/2addr v5, p6

    add-float/2addr v4, v5

    add-int/2addr v3, v2

    aget v3, p2, v3

    add-float/2addr v4, v3

    aput v4, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static transposeM([FI[FI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    add-int v2, v0, p1

    .line 1
    aget v3, p2, v1

    aput v3, p0, v2

    add-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p1

    add-int/lit8 v3, v1, 0x1

    .line 2
    aget v3, p2, v3

    aput v3, p0, v2

    add-int/lit8 v2, v0, 0x8

    add-int/2addr v2, p1

    add-int/lit8 v3, v1, 0x2

    .line 3
    aget v3, p2, v3

    aput v3, p0, v2

    add-int/lit8 v2, v0, 0xc

    add-int/2addr v2, p1

    add-int/lit8 v1, v1, 0x3

    .line 4
    aget v1, p2, v1

    aput v1, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
