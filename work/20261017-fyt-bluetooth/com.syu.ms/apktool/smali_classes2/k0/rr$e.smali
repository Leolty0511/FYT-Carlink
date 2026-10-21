.class public Lk0/rr$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/rr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/rr;


# direct methods
.method public constructor <init>(Lk0/rr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/rr$e;->a:Lk0/rr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lk0/rr$e;->a:Lk0/rr;

    iget v1, v0, Lk0/rr;->i:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/rr;->i:I

    const/4 v3, 0x5

    if-lez v1, :cond_1

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v1, v4

    const/16 v6, 0x81

    aput v6, v1, v2

    const/4 v6, 0x2

    aput v2, v1, v6

    .line 2
    sget v7, Lu0/b;->a0:I

    const/4 v8, 0x3

    aput v7, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_2

    .line 4
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    const/16 v7, 0xd

    if-nez v1, :cond_0

    sget v1, Lu0/b;->D:I

    if-eq v1, v7, :cond_0

    new-array v1, v3, [I

    .line 5
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 6
    :cond_0
    sget v1, Lk0/nt;->c:I

    const/16 v9, 0x1a

    const/16 v10, 0x8b

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    const/16 v2, 0x20

    aput v2, v1, v8

    .line 7
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    const/16 v2, 0x1f

    aput v2, v1, v8

    .line 8
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    const/16 v2, 0x1e

    aput v2, v1, v8

    .line 9
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    const/16 v2, 0x1d

    aput v2, v1, v8

    .line 10
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_4
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    const/16 v2, 0x1c

    aput v2, v1, v8

    .line 11
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    const/16 v2, 0x1b

    aput v2, v1, v8

    .line 12
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_6
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    aput v9, v1, v8

    .line 13
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_7
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    aput v9, v1, v8

    .line 14
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_8
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    const/16 v2, 0x19

    aput v2, v1, v8

    .line 15
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_9
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    const/16 v2, 0x18

    aput v2, v1, v8

    .line 16
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_a
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    const/16 v2, 0x17

    aput v2, v1, v8

    .line 17
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_b
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    const/16 v2, 0x16

    aput v2, v1, v8

    .line 18
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_c
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    const/16 v2, 0x15

    aput v2, v1, v8

    .line 19
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_d
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    const/16 v2, 0x14

    aput v2, v1, v8

    .line 20
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_e
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    const/16 v2, 0x13

    aput v2, v1, v8

    .line 21
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_f
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    const/16 v2, 0x12

    aput v2, v1, v8

    .line 22
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_10
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    const/16 v2, 0x11

    aput v2, v1, v8

    .line 23
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_11
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    const/16 v2, 0x10

    aput v2, v1, v8

    .line 24
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_12
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    const/16 v2, 0xf

    aput v2, v1, v8

    .line 25
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_13
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    const/16 v2, 0xe

    aput v2, v1, v8

    .line 26
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_14
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    aput v7, v1, v8

    .line 27
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_15
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    const/16 v2, 0xc

    aput v2, v1, v8

    .line 28
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_16
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    const/16 v2, 0xb

    aput v2, v1, v8

    .line 29
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_17
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    const/16 v2, 0xa

    aput v2, v1, v8

    .line 30
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_18
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    const/16 v2, 0x9

    aput v2, v1, v8

    .line 31
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_19
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    const/16 v2, 0x8

    aput v2, v1, v8

    .line 32
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1a
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    const/4 v2, 0x7

    aput v2, v1, v8

    .line 33
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1b
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    const/4 v2, 0x6

    aput v2, v1, v8

    .line 34
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1c
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    aput v3, v1, v8

    .line 35
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1d
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    aput v3, v1, v8

    .line 36
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1e
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    aput v8, v1, v8

    .line 37
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1f
    new-array v1, v3, [I

    aput v5, v1, v4

    aput v10, v1, v2

    aput v6, v1, v6

    aput v6, v1, v8

    .line 38
    sget v2, Lu0/b;->r0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, v0, Lk0/rr;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 40
    iget-object v0, p0, Lk0/rr$e;->a:Lk0/rr;

    iput v3, v0, Lk0/rr;->i:I

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x2
        0xa7
        0x0
    .end array-data
.end method
