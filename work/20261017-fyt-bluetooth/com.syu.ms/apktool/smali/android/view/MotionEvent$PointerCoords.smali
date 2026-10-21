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

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 2
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 4
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 5
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 6
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 7
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 8
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 9
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 10
    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    return-void
.end method

.method public copyFrom(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 4

    .line 1
    iget-wide v0, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 2
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 3
    iget-object v2, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    .line 5
    iget-object v1, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    if-eqz v1, :cond_0

    .line 6
    array-length v3, v1

    if-le v0, v3, :cond_1

    .line 7
    :cond_0
    array-length v1, v2

    new-array v1, v1, [F

    .line 8
    iput-object v1, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    :cond_1
    const/4 v3, 0x0

    .line 9
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    :cond_2
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 11
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 12
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 13
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 14
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 15
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 16
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 17
    iget v0, p1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    iput v0, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 18
    iget p1, p1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iput p1, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    return-void
.end method

.method public getAxisValue(I)F
    .locals 10

    packed-switch p1, :pswitch_data_0

    if-ltz p1, :cond_1

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_1

    .line 1
    iget-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    const-wide/16 v2, 0x1

    shl-long v4, v2, p1

    and-long v6, v0, v4

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :pswitch_0
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    return p1

    .line 3
    :pswitch_1
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    return p1

    .line 4
    :pswitch_2
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    return p1

    .line 5
    :pswitch_3
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    return p1

    .line 6
    :pswitch_4
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    return p1

    .line 7
    :pswitch_5
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    return p1

    .line 8
    :pswitch_6
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    return p1

    .line 9
    :pswitch_7
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    return p1

    .line 10
    :pswitch_8
    iget p1, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    return p1

    :cond_0
    sub-long/2addr v4, v2

    and-long/2addr v0, v4

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    .line 12
    iget-object v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    aget p1, v0, p1

    return p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Axis out of range."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

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
    .locals 10

    packed-switch p1, :pswitch_data_0

    if-ltz p1, :cond_4

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_4

    .line 1
    iget-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    const-wide/16 v2, 0x1

    shl-long v4, v2, p1

    sub-long v2, v4, v2

    and-long/2addr v2, v0

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result p1

    .line 3
    iget-object v2, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    and-long v6, v0, v4

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    if-nez v2, :cond_0

    const/16 v2, 0x8

    new-array v2, v2, [F

    .line 4
    iput-object v2, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    goto :goto_0

    .line 5
    :pswitch_0
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto :goto_1

    .line 6
    :pswitch_1
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    goto :goto_1

    .line 7
    :pswitch_2
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    goto :goto_1

    .line 8
    :pswitch_3
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    goto :goto_1

    .line 9
    :pswitch_4
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    goto :goto_1

    .line 10
    :pswitch_5
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    goto :goto_1

    .line 11
    :pswitch_6
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    goto :goto_1

    .line 12
    :pswitch_7
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_1

    .line 13
    :pswitch_8
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    goto :goto_1

    .line 14
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v3

    .line 15
    array-length v6, v2

    if-ge v3, v6, :cond_1

    if-eq p1, v3, :cond_2

    add-int/lit8 v6, p1, 0x1

    sub-int/2addr v3, p1

    .line 16
    invoke-static {v2, p1, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    mul-int/lit8 v6, v3, 0x2

    .line 17
    new-array v6, v6, [F

    const/4 v7, 0x0

    .line 18
    invoke-static {v2, v7, v6, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, p1, 0x1

    sub-int/2addr v3, p1

    .line 19
    invoke-static {v2, p1, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    iput-object v6, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    move-object v2, v6

    :cond_2
    :goto_0
    or-long/2addr v0, v4

    .line 21
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 22
    :cond_3
    aput p2, v2, p1

    :goto_1
    return-void

    .line 23
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Axis out of range."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

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
