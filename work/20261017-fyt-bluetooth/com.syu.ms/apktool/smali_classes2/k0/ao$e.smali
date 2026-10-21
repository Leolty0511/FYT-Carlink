.class public Lk0/ao$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ao;


# direct methods
.method public constructor <init>(Lk0/ao;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ao$e;->a:Lk0/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lk0/ao$e;->a:Lk0/ao;

    iget v1, v0, Lk0/ao;->n:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/ao;->n:I

    const/4 v3, 0x5

    if-lez v1, :cond_3

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

    if-ne v1, v2, :cond_0

    new-array v1, v3, [I

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v3, [I

    .line 5
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v0, [I

    .line 6
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v0, [I

    .line 7
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    .line 8
    iget-object v1, p0, Lk0/ao$e;->a:Lk0/ao;

    invoke-static {v1}, Lk0/ao;->e3(Lk0/ao;)Lo1/g0;

    move-result-object v7

    const/16 v9, 0x19

    invoke-virtual {v7, v9, v4}, Lo1/g0;->b(II)I

    move-result v7

    invoke-static {v1, v7}, Lk0/ao;->f3(Lk0/ao;I)V

    .line 9
    :cond_0
    sget v1, Lk0/nt;->a:I

    const v7, 0x8901c4

    if-eq v1, v7, :cond_1

    const v7, 0x1c01c6

    if-ne v1, v7, :cond_2

    :cond_1
    new-array v1, v3, [I

    aput v5, v1, v4

    const/16 v3, 0x84

    aput v3, v1, v2

    aput v6, v1, v6

    const/16 v2, 0x8

    aput v2, v1, v8

    .line 10
    sget v2, Lu0/b;->a0:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 11
    :cond_2
    sget v1, Lk0/nt;->a:I

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    new-array v0, v0, [I

    .line 12
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_1
    new-array v0, v0, [I

    .line 13
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_2
    new-array v0, v0, [I

    .line 14
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_3
    new-array v0, v0, [I

    .line 15
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_4
    new-array v0, v0, [I

    .line 16
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_5
    new-array v0, v0, [I

    .line 17
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_6
    new-array v0, v0, [I

    .line 18
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_7
    new-array v0, v0, [I

    .line 19
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_8
    new-array v0, v0, [I

    .line 20
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_9
    new-array v0, v0, [I

    .line 21
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_a
    new-array v0, v0, [I

    .line 22
    fill-array-data v0, :array_e

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_b
    new-array v0, v0, [I

    .line 23
    fill-array-data v0, :array_f

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_c
    new-array v0, v0, [I

    .line 24
    fill-array-data v0, :array_10

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_d
    new-array v0, v0, [I

    .line 25
    fill-array-data v0, :array_11

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_e
    new-array v0, v0, [I

    .line 26
    fill-array-data v0, :array_12

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_f
    new-array v0, v0, [I

    .line 27
    fill-array-data v0, :array_13

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_10
    new-array v0, v0, [I

    .line 28
    fill-array-data v0, :array_14

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_11
    new-array v0, v0, [I

    .line 29
    fill-array-data v0, :array_15

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_12
    new-array v0, v0, [I

    .line 30
    fill-array-data v0, :array_16

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_13
    new-array v0, v0, [I

    .line 31
    fill-array-data v0, :array_17

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_14
    new-array v0, v0, [I

    .line 32
    fill-array-data v0, :array_18

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_15
    new-array v0, v0, [I

    .line 33
    fill-array-data v0, :array_19

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_16
    new-array v0, v0, [I

    .line 34
    fill-array-data v0, :array_1a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_17
    new-array v0, v0, [I

    .line 35
    fill-array-data v0, :array_1b

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_18
    new-array v0, v0, [I

    .line 36
    fill-array-data v0, :array_1c

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_19
    new-array v0, v0, [I

    .line 37
    fill-array-data v0, :array_1d

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1a
    new-array v0, v0, [I

    .line 38
    fill-array-data v0, :array_1e

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1b
    new-array v0, v0, [I

    .line 39
    fill-array-data v0, :array_1f

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1c
    new-array v0, v0, [I

    .line 40
    fill-array-data v0, :array_20

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1d
    new-array v0, v0, [I

    .line 41
    fill-array-data v0, :array_21

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1e
    new-array v0, v0, [I

    .line 42
    fill-array-data v0, :array_22

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1f
    new-array v0, v0, [I

    .line 43
    fill-array-data v0, :array_23

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_20
    new-array v0, v0, [I

    .line 44
    fill-array-data v0, :array_24

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_21
    new-array v0, v0, [I

    .line 45
    fill-array-data v0, :array_25

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 46
    :cond_3
    iget-object v0, v0, Lk0/ao;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 47
    iget-object v0, p0, Lk0/ao$e;->a:Lk0/ao;

    iput v3, v0, Lk0/ao;->n:I

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x8a01c7 -> :sswitch_21
        0x8b01c7 -> :sswitch_20
        0x8c01c7 -> :sswitch_1f
        0x8d01c7 -> :sswitch_1e
        0x8e01c7 -> :sswitch_1d
        0x8f01c7 -> :sswitch_1c
        0x9501c5 -> :sswitch_21
        0x9601c5 -> :sswitch_21
        0x9701c5 -> :sswitch_21
        0x9801c5 -> :sswitch_1b
        0x9901c5 -> :sswitch_1b
        0x9a01c5 -> :sswitch_1b
        0x9b01c5 -> :sswitch_1a
        0x9c01c5 -> :sswitch_19
        0x9d01c5 -> :sswitch_19
        0x9e01c5 -> :sswitch_18
        0x9f01c5 -> :sswitch_20
        0xa001c5 -> :sswitch_17
        0xa101c5 -> :sswitch_17
        0xa201c5 -> :sswitch_16
        0xa301c5 -> :sswitch_15
        0xa401c5 -> :sswitch_14
        0xa501c5 -> :sswitch_14
        0xa601c5 -> :sswitch_13
        0xa701c5 -> :sswitch_12
        0xa801c5 -> :sswitch_11
        0xa901c5 -> :sswitch_10
        0xaa01c5 -> :sswitch_f
        0xab01c5 -> :sswitch_e
        0xac01c5 -> :sswitch_1f
        0xad01c5 -> :sswitch_1e
        0xae01c5 -> :sswitch_d
        0xaf01c5 -> :sswitch_d
        0xb001c5 -> :sswitch_c
        0xb101c5 -> :sswitch_b
        0xb201c5 -> :sswitch_a
        0xb301c5 -> :sswitch_9
        0xb401c5 -> :sswitch_8
        0xb501c5 -> :sswitch_7
        0xb601c5 -> :sswitch_6
        0xb701c5 -> :sswitch_6
        0xb801c5 -> :sswitch_5
        0xb901c5 -> :sswitch_4
        0xba01c5 -> :sswitch_3
        0xbb01c5 -> :sswitch_2
        0xbc01c5 -> :sswitch_1
        0xbd01c5 -> :sswitch_0
        0xed01c7 -> :sswitch_b
        0xee01c7 -> :sswitch_14
        0xef01c7 -> :sswitch_17
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x32
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x2
        0x30
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x89
        0x1
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x8a
        0x1
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xe2
        0x1
        0x21
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xe2
        0x1
        0x20
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0xe2
        0x1
        0x1f
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0xe2
        0x1
        0x1e
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0xe2
        0x1
        0x1d
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0xe2
        0x1
        0x1c
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0xe2
        0x1
        0x1b
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0xe2
        0x1
        0x1a
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0xe2
        0x1
        0x19
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0xe2
        0x1
        0x18
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0xe2
        0x1
        0x17
    .end array-data

    :array_f
    .array-data 4
        0xe3
        0xe2
        0x1
        0x16
    .end array-data

    :array_10
    .array-data 4
        0xe3
        0xe2
        0x1
        0x15
    .end array-data

    :array_11
    .array-data 4
        0xe3
        0xe2
        0x1
        0x14
    .end array-data

    :array_12
    .array-data 4
        0xe3
        0xe2
        0x1
        0x11
    .end array-data

    :array_13
    .array-data 4
        0xe3
        0xe2
        0x1
        0x10
    .end array-data

    :array_14
    .array-data 4
        0xe3
        0xe2
        0x1
        0xf
    .end array-data

    :array_15
    .array-data 4
        0xe3
        0xe2
        0x1
        0xe
    .end array-data

    :array_16
    .array-data 4
        0xe3
        0xe2
        0x1
        0xd
    .end array-data

    :array_17
    .array-data 4
        0xe3
        0xe2
        0x1
        0xc
    .end array-data

    :array_18
    .array-data 4
        0xe3
        0xe2
        0x1
        0xb
    .end array-data

    :array_19
    .array-data 4
        0xe3
        0xe2
        0x1
        0xa
    .end array-data

    :array_1a
    .array-data 4
        0xe3
        0xe2
        0x1
        0x9
    .end array-data

    :array_1b
    .array-data 4
        0xe3
        0xe2
        0x1
        0x8
    .end array-data

    :array_1c
    .array-data 4
        0xe3
        0xe2
        0x1
        0x5
    .end array-data

    :array_1d
    .array-data 4
        0xe3
        0xe2
        0x1
        0x3
    .end array-data

    :array_1e
    .array-data 4
        0xe3
        0xe2
        0x1
        0x2
    .end array-data

    :array_1f
    .array-data 4
        0xe3
        0xe2
        0x1
        0x1
    .end array-data

    :array_20
    .array-data 4
        0xe3
        0xe2
        0x1
        0x23
    .end array-data

    :array_21
    .array-data 4
        0xe3
        0xe2
        0x1
        0x22
    .end array-data

    :array_22
    .array-data 4
        0xe3
        0xe2
        0x1
        0x13
    .end array-data

    :array_23
    .array-data 4
        0xe3
        0xe2
        0x1
        0x12
    .end array-data

    :array_24
    .array-data 4
        0xe3
        0xe2
        0x1
        0x6
    .end array-data

    :array_25
    .array-data 4
        0xe3
        0xe2
        0x1
        0x0
    .end array-data
.end method
