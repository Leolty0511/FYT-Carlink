.class public Lk0/vs$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/vs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/vs;


# direct methods
.method public constructor <init>(Lk0/vs;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/vs$c;->a:Lk0/vs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lk0/vs$c;->a:Lk0/vs;

    iget v1, v0, Lk0/vs;->q:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/vs;->q:I

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    aput v3, v1, v4

    const/16 v3, 0x81

    aput v3, v1, v2

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 2
    sget v5, Lu0/b;->a0:I

    const/4 v6, 0x3

    aput v5, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_1

    .line 4
    iget-object v1, p0, Lk0/vs$c;->a:Lk0/vs;

    invoke-static {v1}, Lk0/vs;->a3(Lk0/vs;)Lo1/g0;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lo1/g0;->b(II)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    iget-object v7, p0, Lk0/vs$c;->a:Lk0/vs;

    invoke-static {v7}, Lk0/vs;->a3(Lk0/vs;)Lo1/g0;

    move-result-object v7

    invoke-virtual {v7, v2, v4}, Lo1/g0;->b(II)I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    iget-object v7, p0, Lk0/vs$c;->a:Lk0/vs;

    .line 5
    invoke-static {v7}, Lk0/vs;->a3(Lk0/vs;)Lo1/g0;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Lo1/g0;->b(II)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    iget-object v8, p0, Lk0/vs$c;->a:Lk0/vs;

    invoke-static {v8}, Lk0/vs;->a3(Lk0/vs;)Lo1/g0;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Lo1/g0;->b(II)I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 6
    invoke-static {v1, v5, v2, v7, v3}, Lk0/vs;->b3(Lk0/vs;IIII)V

    .line 7
    iget-object v1, p0, Lk0/vs$c;->a:Lk0/vs;

    invoke-static {v1}, Lk0/vs;->a3(Lk0/vs;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v6, v4}, Lo1/g0;->b(II)I

    move-result v2

    iget-object v3, p0, Lk0/vs$c;->a:Lk0/vs;

    invoke-static {v3}, Lk0/vs;->a3(Lk0/vs;)Lo1/g0;

    move-result-object v3

    invoke-virtual {v3, v0, v4}, Lo1/g0;->b(II)I

    move-result v3

    invoke-static {v1, v2, v3}, Lk0/vs;->c3(Lk0/vs;II)V

    .line 8
    sget v1, Lk0/nt;->a:I

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    new-array v0, v0, [I

    .line 9
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_1
    new-array v0, v0, [I

    .line 10
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_2
    new-array v0, v0, [I

    .line 11
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_3
    new-array v0, v0, [I

    .line 12
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_4
    new-array v0, v0, [I

    .line 13
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_5
    new-array v0, v0, [I

    .line 14
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_6
    new-array v0, v0, [I

    .line 15
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_7
    new-array v0, v0, [I

    .line 16
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_8
    new-array v0, v0, [I

    .line 17
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_9
    new-array v0, v0, [I

    .line 18
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_a
    new-array v0, v0, [I

    .line 19
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_b
    new-array v0, v0, [I

    .line 20
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_c
    new-array v0, v0, [I

    .line 21
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_d
    new-array v0, v0, [I

    .line 22
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_e
    new-array v0, v0, [I

    .line 23
    fill-array-data v0, :array_e

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_f
    new-array v0, v0, [I

    .line 24
    fill-array-data v0, :array_f

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_10
    new-array v0, v0, [I

    .line 25
    fill-array-data v0, :array_10

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_11
    new-array v0, v0, [I

    .line 26
    fill-array-data v0, :array_11

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_12
    new-array v0, v0, [I

    .line 27
    fill-array-data v0, :array_12

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_13
    new-array v0, v0, [I

    .line 28
    fill-array-data v0, :array_13

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_14
    new-array v0, v0, [I

    .line 29
    fill-array-data v0, :array_14

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_15
    new-array v0, v0, [I

    .line 30
    fill-array-data v0, :array_15

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_16
    new-array v0, v0, [I

    .line 31
    fill-array-data v0, :array_16

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_17
    new-array v0, v0, [I

    .line 32
    fill-array-data v0, :array_17

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_18
    new-array v0, v0, [I

    .line 33
    fill-array-data v0, :array_18

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, v0, Lk0/vs;->s:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 35
    iget-object v0, p0, Lk0/vs$c;->a:Lk0/vs;

    const/4 v1, 0x5

    iput v1, v0, Lk0/vs;->q:I

    :cond_1
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1b01c8 -> :sswitch_18
        0x1c01c8 -> :sswitch_18
        0x1d01c8 -> :sswitch_17
        0x1e01c8 -> :sswitch_16
        0x1f01c8 -> :sswitch_15
        0x2001c8 -> :sswitch_14
        0x2101c8 -> :sswitch_13
        0x2201c8 -> :sswitch_12
        0x2301c8 -> :sswitch_11
        0x2401c8 -> :sswitch_10
        0x2501c8 -> :sswitch_f
        0x2601c8 -> :sswitch_e
        0x2701c8 -> :sswitch_d
        0x2801c8 -> :sswitch_c
        0x2901c8 -> :sswitch_b
        0x2a01c8 -> :sswitch_a
        0x2b01c8 -> :sswitch_9
        0x2c01c8 -> :sswitch_8
        0x2d01c8 -> :sswitch_7
        0x2e01c8 -> :sswitch_6
        0x2f01c8 -> :sswitch_5
        0x3001c8 -> :sswitch_4
        0x3101c8 -> :sswitch_3
        0x3201c8 -> :sswitch_2
        0x3301c8 -> :sswitch_1
        0x3401c8 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0xe2
        0x1
        0x71
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xe2
        0x1
        0x70
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xe2
        0x1
        0x52
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xe2
        0x1
        0x51
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xe2
        0x1
        0x50
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xe2
        0x1
        0x42
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0xe2
        0x1
        0x41
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0xe2
        0x1
        0x40
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0xe2
        0x1
        0x35
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0xe2
        0x1
        0x34
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0xe2
        0x1
        0x33
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0xe2
        0x1
        0x32
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0xe2
        0x1
        0x31
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0xe2
        0x1
        0x30
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0xe2
        0x1
        0x22
    .end array-data

    :array_f
    .array-data 4
        0xe3
        0xe2
        0x1
        0x21
    .end array-data

    :array_10
    .array-data 4
        0xe3
        0xe2
        0x1
        0x20
    .end array-data

    :array_11
    .array-data 4
        0xe3
        0xe2
        0x1
        0x12
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
        0x5
    .end array-data

    :array_15
    .array-data 4
        0xe3
        0xe2
        0x1
        0x4
    .end array-data

    :array_16
    .array-data 4
        0xe3
        0xe2
        0x1
        0x3
    .end array-data

    :array_17
    .array-data 4
        0xe3
        0xe2
        0x1
        0x2
    .end array-data

    :array_18
    .array-data 4
        0xe3
        0xe2
        0x1
        0x1
    .end array-data
.end method
