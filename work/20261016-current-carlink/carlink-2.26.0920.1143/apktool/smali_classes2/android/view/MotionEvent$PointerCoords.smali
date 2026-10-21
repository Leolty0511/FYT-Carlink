.class public final Landroid/view/MotionEvent$PointerCoords;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation


# static fields
.field private static final INITIAL_PACKED_AXIS_VALUES:I = 0x8


# instance fields
.field private mPackedAxisBits:J

.field private mPackedAxisValues:[F

.field public orientation:F

.field public pressure:F

.field public size:F

.field public toolMajor:F

.field public toolMinor:F

.field public touchMajor:F

.field public touchMinor:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerCoords;->copyFrom(Landroid/view/MotionEvent$PointerCoords;)V

    return-void
.end method

.method public static createArray(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 3

    .line 1
    new-array v0, p0, [Landroid/view/MotionEvent$PointerCoords;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, p0, :cond_0

    .line 5
    .line 6
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    .line 7
    .line 8
    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 9
    .line 10
    .line 11
    aput-object v2, v0, v1

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 7
    .line 8
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 9
    .line 10
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 11
    .line 12
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 13
    .line 14
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 15
    .line 16
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 17
    .line 18
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 19
    .line 20
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 21
    .line 22
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 23
    .line 24
    return-void
.end method

.method public copyFrom(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 4

    .line 1
    iget-wide v0, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 2
    .line 3
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-eqz v2, :cond_2

    .line 10
    .line 11
    iget-object v2, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    array-length v3, v1

    .line 22
    if-le v0, v3, :cond_1

    .line 23
    .line 24
    :cond_0
    array-length v1, v2

    .line 25
    new-array v1, v1, [F

    .line 26
    .line 27
    iput-object v1, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 28
    .line 29
    :cond_1
    const/4 v3, 0x0

    .line 30
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 34
    .line 35
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 36
    .line 37
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 38
    .line 39
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 40
    .line 41
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 42
    .line 43
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 44
    .line 45
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 46
    .line 47
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 48
    .line 49
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 50
    .line 51
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 52
    .line 53
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 54
    .line 55
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 56
    .line 57
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 58
    .line 59
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 60
    .line 61
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 62
    .line 63
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 64
    .line 65
    iget p1, p1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 66
    .line 67
    iput p1, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 68
    .line 69
    return-void
.end method

.method public getAxisValue(I)F
    .locals 6

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_1

    .line 5
    .line 6
    const/16 v0, 0x3f

    .line 7
    .line 8
    if-gt p1, v0, :cond_1

    .line 9
    .line 10
    iget-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 11
    .line 12
    const-wide/high16 v2, -0x8000000000000000L

    .line 13
    .line 14
    ushr-long/2addr v2, p1

    .line 15
    and-long/2addr v2, v0

    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmp-long v2, v2, v4

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    return p1

    .line 24
    :pswitch_0
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 25
    .line 26
    return p1

    .line 27
    :pswitch_1
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 28
    .line 29
    return p1

    .line 30
    :pswitch_2
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 31
    .line 32
    return p1

    .line 33
    :pswitch_3
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 34
    .line 35
    return p1

    .line 36
    :pswitch_4
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 37
    .line 38
    return p1

    .line 39
    :pswitch_5
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 40
    .line 41
    return p1

    .line 42
    :pswitch_6
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 43
    .line 44
    return p1

    .line 45
    :pswitch_7
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 46
    .line 47
    return p1

    .line 48
    :pswitch_8
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 49
    .line 50
    return p1

    .line 51
    :cond_0
    const-wide/16 v2, -0x1

    .line 52
    .line 53
    ushr-long/2addr v2, p1

    .line 54
    not-long v2, v2

    .line 55
    and-long/2addr v0, v2

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iget-object v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 61
    .line 62
    aget p1, v0, p1

    .line 63
    .line 64
    return p1

    .line 65
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    const-string v0, "Axis out of range."

    .line 68
    .line 69
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAxisValue(IF)V
    .locals 9

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_4

    .line 5
    .line 6
    const/16 v0, 0x3f

    .line 7
    .line 8
    if-gt p1, v0, :cond_4

    .line 9
    .line 10
    iget-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 11
    .line 12
    const-wide/high16 v2, -0x8000000000000000L

    .line 13
    .line 14
    ushr-long/2addr v2, p1

    .line 15
    const-wide/16 v4, -0x1

    .line 16
    .line 17
    ushr-long/2addr v4, p1

    .line 18
    not-long v4, v4

    .line 19
    and-long/2addr v4, v0

    .line 20
    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 25
    .line 26
    and-long v5, v0, v2

    .line 27
    .line 28
    const-wide/16 v7, 0x0

    .line 29
    .line 30
    cmp-long v5, v5, v7

    .line 31
    .line 32
    if-nez v5, :cond_3

    .line 33
    .line 34
    if-nez v4, :cond_0

    .line 35
    .line 36
    const/16 v4, 0x8

    .line 37
    .line 38
    new-array v4, v4, [F

    .line 39
    .line 40
    iput-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_0
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :pswitch_1
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :pswitch_2
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :pswitch_3
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :pswitch_4
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :pswitch_5
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :pswitch_6
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :pswitch_7
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :pswitch_8
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    array-length v6, v4

    .line 75
    if-ge v5, v6, :cond_1

    .line 76
    .line 77
    if-eq p1, v5, :cond_2

    .line 78
    .line 79
    add-int/lit8 v6, p1, 0x1

    .line 80
    .line 81
    sub-int/2addr v5, p1

    .line 82
    invoke-static {v4, p1, v4, v6, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    mul-int/lit8 v6, v5, 0x2

    .line 87
    .line 88
    new-array v6, v6, [F

    .line 89
    .line 90
    const/4 v7, 0x0

    .line 91
    invoke-static {v4, v7, v6, v7, p1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 92
    .line 93
    .line 94
    add-int/lit8 v7, p1, 0x1

    .line 95
    .line 96
    sub-int/2addr v5, p1

    .line 97
    invoke-static {v4, p1, v6, v7, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 98
    .line 99
    .line 100
    iput-object v6, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 101
    .line 102
    move-object v4, v6

    .line 103
    :cond_2
    :goto_0
    or-long/2addr v0, v2

    .line 104
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 105
    .line 106
    :cond_3
    aput p2, v4, p1

    .line 107
    .line 108
    :goto_1
    return-void

    .line 109
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 110
    .line 111
    const-string p2, "Axis out of range."

    .line 112
    .line 113
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
