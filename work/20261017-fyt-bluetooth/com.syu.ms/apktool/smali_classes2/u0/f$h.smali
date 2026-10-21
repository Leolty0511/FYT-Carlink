.class public Lu0/f$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public final a:[B

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lu0/f$h;->a:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lu0/f$h;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lu0/f$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lu0/f$h;-><init>()V

    return-void
.end method


# virtual methods
.method public b([B)V
    .locals 11

    if-eqz p1, :cond_c

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    array-length v0, p1

    iget v1, p0, Lu0/f$h;->b:I

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 3
    iput v2, p0, Lu0/f$h;->b:I

    .line 4
    :cond_1
    iget-object v0, p0, Lu0/f$h;->a:[B

    iget v1, p0, Lu0/f$h;->b:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget v0, p0, Lu0/f$h;->b:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lu0/f$h;->b:I

    const/4 p1, 0x7

    sub-int/2addr v0, p1

    move v1, v2

    move v3, v1

    :goto_0
    if-ge v1, v0, :cond_a

    .line 6
    iget-object v4, p0, Lu0/f$h;->a:[B

    aget-byte v5, v4, v1

    const/16 v6, -0x23

    const/4 v7, 0x1

    if-ne v5, v6, :cond_9

    add-int/lit8 v5, v1, 0x1

    aget-byte v6, v4, v5

    const/16 v8, 0x44

    const/16 v9, 0x55

    if-eq v6, v9, :cond_2

    aget-byte v4, v4, v5

    if-ne v4, v8, :cond_9

    :cond_2
    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, p1, :cond_3

    .line 7
    iget-object v6, p0, Lu0/f$h;->a:[B

    add-int v10, v1, v3

    aget-byte v6, v6, v10

    add-int/2addr v4, v6

    int-to-byte v4, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    neg-int v3, v4

    int-to-byte v3, v3

    .line 8
    iget-object v4, p0, Lu0/f$h;->a:[B

    add-int/lit8 v6, v1, 0x7

    aget-byte v6, v4, v6

    if-eq v3, v6, :cond_4

    add-int/lit8 v1, v1, 0x2

    move v3, v1

    goto/16 :goto_3

    :cond_4
    add-int/lit8 v3, v1, 0x2

    .line 9
    aget-byte v3, v4, v3

    shl-int/lit8 v3, v3, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v3, v6

    add-int/lit8 v6, v1, 0x3

    aget-byte v6, v4, v6

    shl-int/lit8 v6, v6, 0x8

    const v10, 0xff00

    and-int/2addr v6, v10

    or-int/2addr v3, v6

    add-int/lit8 v6, v1, 0x4

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 10
    invoke-static {}, Lu0/f;->l()I

    move-result v4

    const/16 v6, -0x64

    if-nez v4, :cond_5

    .line 11
    iget-object v4, p0, Lu0/f$h;->a:[B

    aget-byte v5, v4, v5

    if-ne v5, v9, :cond_8

    add-int/lit8 v5, v1, 0x5

    aget-byte v5, v4, v5

    if-ne v5, v7, :cond_8

    add-int/lit8 v5, v1, 0x6

    aget-byte v4, v4, v5

    if-ne v4, v7, :cond_8

    if-nez v3, :cond_8

    .line 12
    invoke-static {v6}, Lu0/f;->c(I)I

    goto/16 :goto_2

    .line 13
    :cond_5
    invoke-static {}, Lu0/f;->l()I

    move-result v4

    if-ne v4, v7, :cond_6

    .line 14
    iget-object v4, p0, Lu0/f$h;->a:[B

    aget-byte v5, v4, v5

    if-ne v5, v9, :cond_8

    add-int/lit8 v5, v1, 0x5

    aget-byte v5, v4, v5

    if-ne v5, v7, :cond_8

    add-int/lit8 v5, v1, 0x6

    aget-byte v4, v4, v5

    if-ne v4, v7, :cond_8

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 15
    invoke-static {v6}, Lu0/f;->c(I)I

    goto :goto_2

    :cond_6
    if-nez v3, :cond_7

    .line 16
    iget-object v3, p0, Lu0/f$h;->a:[B

    aget-byte v4, v3, v5

    if-ne v4, v8, :cond_8

    add-int/lit8 v4, v1, 0x5

    aget-byte v4, v3, v4

    if-ne v4, v7, :cond_8

    add-int/lit8 v4, v1, 0x6

    aget-byte v3, v3, v4

    if-ne v3, v7, :cond_8

    .line 17
    invoke-static {v7}, Lu0/f;->r(I)I

    goto :goto_2

    .line 18
    :cond_7
    iget-object v4, p0, Lu0/f$h;->a:[B

    aget-byte v5, v4, v5

    if-ne v5, v9, :cond_8

    add-int/lit8 v5, v1, 0x5

    aget-byte v5, v4, v5

    if-ne v5, v7, :cond_8

    add-int/lit8 v5, v1, 0x6

    aget-byte v4, v4, v5

    if-ne v4, v7, :cond_8

    invoke-static {}, Lu0/f;->s()I

    move-result v4

    if-ne v3, v4, :cond_8

    const/16 v4, 0x30

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x5

    aput v6, v5, v2

    const v6, 0x9400

    sub-int/2addr v3, v6

    const/16 v6, 0x80

    .line 19
    div-int/2addr v3, v6

    aput v3, v5, v7

    .line 20
    invoke-static {}, Lu0/f;->o()[B

    move-result-object v3

    array-length v3, v3

    const v8, 0x9480

    sub-int/2addr v3, v8

    div-int/2addr v3, v6

    const/4 v8, 0x2

    aput v3, v5, v8

    const/4 v3, 0x0

    .line 21
    invoke-static {v4, v5, v3, v3}, Lu0/d;->J3(I[I[F[Ljava/lang/String;)V

    .line 22
    invoke-static {v6}, Lu0/f;->u(I)I

    :cond_8
    :goto_2
    add-int/lit8 v3, v1, 0x8

    :cond_9
    :goto_3
    add-int/2addr v1, v7

    goto/16 :goto_0

    :cond_a
    if-eqz v3, :cond_b

    .line 23
    iget p1, p0, Lu0/f$h;->b:I

    sub-int/2addr p1, v3

    iput p1, p0, Lu0/f$h;->b:I

    if-lez p1, :cond_b

    .line 24
    iget-object v0, p0, Lu0/f$h;->a:[B

    invoke-static {v0, v3, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    return-void

    :cond_c
    :goto_4
    const-wide/16 v0, 0x64

    .line 25
    invoke-static {v0, v1}, La/i;->a0(J)V

    return-void
.end method
