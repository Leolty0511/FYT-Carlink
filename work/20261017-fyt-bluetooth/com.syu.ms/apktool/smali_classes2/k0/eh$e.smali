.class public Lk0/eh$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/eh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/eh;


# direct methods
.method public constructor <init>(Lk0/eh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/eh$e;->a:Lk0/eh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lk0/eh$e;->a:Lk0/eh;

    iget v1, v0, Lk0/eh;->s:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/eh;->s:I

    const/16 v3, 0xb

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v4, 0xe3

    const/4 v5, 0x0

    aput v4, v1, v5

    const/16 v4, 0x81

    aput v4, v1, v2

    const/4 v4, 0x2

    aput v2, v1, v4

    const/4 v6, 0x3

    .line 2
    sget v7, Lu0/b;->a0:I

    aput v7, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_1

    .line 4
    iget-object v1, p0, Lk0/eh$e;->a:Lk0/eh;

    invoke-static {v1}, Lk0/eh;->c3(Lk0/eh;)Lo1/g0;

    move-result-object v2

    const/16 v6, 0x1b

    invoke-virtual {v2, v6, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/eh;->d3(Lk0/eh;I)V

    .line 5
    iget-object v1, p0, Lk0/eh$e;->a:Lk0/eh;

    invoke-static {v1}, Lk0/eh;->c3(Lk0/eh;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/eh;->e3(Lk0/eh;I)V

    const/4 v1, 0x5

    new-array v2, v1, [I

    .line 6
    fill-array-data v2, :array_0

    invoke-static {v2}, Lz/k;->s([I)V

    .line 7
    sget v2, Lk0/nt;->a:I

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    new-array v0, v0, [I

    .line 8
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [I

    .line 9
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_1
    new-array v0, v0, [I

    .line 10
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_2
    new-array v0, v0, [I

    .line 11
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_3
    new-array v0, v0, [I

    .line 12
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_4
    new-array v0, v0, [I

    .line 13
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_5
    new-array v0, v0, [I

    .line 14
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_6
    new-array v0, v0, [I

    .line 15
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [I

    .line 16
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_7
    new-array v0, v0, [I

    .line 17
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [I

    .line 18
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_8
    new-array v0, v0, [I

    .line 19
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [I

    .line 20
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_9
    new-array v0, v0, [I

    .line 21
    fill-array-data v0, :array_e

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [I

    .line 22
    fill-array-data v0, :array_f

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_a
    new-array v0, v0, [I

    .line 23
    fill-array-data v0, :array_10

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_b
    new-array v0, v0, [I

    .line 24
    fill-array-data v0, :array_11

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_c
    new-array v0, v0, [I

    .line 25
    fill-array-data v0, :array_12

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_d
    new-array v0, v0, [I

    .line 26
    fill-array-data v0, :array_13

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_e
    new-array v0, v0, [I

    .line 27
    fill-array-data v0, :array_14

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_f
    new-array v0, v0, [I

    .line 28
    fill-array-data v0, :array_15

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_10
    new-array v0, v0, [I

    .line 29
    fill-array-data v0, :array_16

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_11
    new-array v0, v0, [I

    .line 30
    fill-array-data v0, :array_17

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_12
    new-array v0, v0, [I

    .line 31
    fill-array-data v0, :array_18

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_13
    new-array v0, v0, [I

    .line 32
    fill-array-data v0, :array_19

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_14
    new-array v0, v0, [I

    .line 33
    fill-array-data v0, :array_1a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_15
    new-array v0, v0, [I

    .line 34
    fill-array-data v0, :array_1b

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_16
    new-array v0, v0, [I

    .line 35
    fill-array-data v0, :array_1c

    invoke-static {v0}, Lz/k;->s([I)V

    .line 36
    :goto_0
    sget v0, Lu0/b;->D:I

    if-eq v0, v3, :cond_1

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    new-array v0, v1, [I

    .line 37
    fill-array-data v0, :array_1d

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 38
    :cond_0
    iget-object v0, v0, Lk0/eh;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 39
    iget-object v0, p0, Lk0/eh$e;->a:Lk0/eh;

    iput v3, v0, Lk0/eh;->s:I

    :cond_1
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xe01c4 -> :sswitch_16
        0xf01c4 -> :sswitch_15
        0xf01c7 -> :sswitch_14
        0x1001c7 -> :sswitch_13
        0x1101c5 -> :sswitch_12
        0x1201c5 -> :sswitch_11
        0x2901c7 -> :sswitch_10
        0x2a01c7 -> :sswitch_f
        0x2b01c7 -> :sswitch_e
        0x2e01c7 -> :sswitch_14
        0x2f01b7 -> :sswitch_d
        0x2f01c7 -> :sswitch_13
        0x3001b7 -> :sswitch_c
        0x3101b7 -> :sswitch_b
        0x3201b7 -> :sswitch_a
        0x3301c7 -> :sswitch_14
        0x3401c7 -> :sswitch_13
        0x3601c6 -> :sswitch_9
        0x3701c6 -> :sswitch_8
        0x3a01c6 -> :sswitch_7
        0x3b01c6 -> :sswitch_6
        0x4301c8 -> :sswitch_d
        0x4401c8 -> :sswitch_c
        0x4801c8 -> :sswitch_14
        0x4901c8 -> :sswitch_13
        0x4a01c8 -> :sswitch_14
        0x4b01c8 -> :sswitch_13
        0x4c01c8 -> :sswitch_12
        0x4d01c8 -> :sswitch_11
        0x5101c4 -> :sswitch_14
        0x5201c4 -> :sswitch_13
        0x5301c4 -> :sswitch_5
        0x5401c4 -> :sswitch_4
        0x7801c8 -> :sswitch_3
        0x7901c8 -> :sswitch_2
        0x7f01c8 -> :sswitch_3
        0x8001c8 -> :sswitch_3
        0x8101c8 -> :sswitch_3
        0x8801c5 -> :sswitch_14
        0x8901c5 -> :sswitch_13
        0x9301c5 -> :sswitch_1
        0x9401c5 -> :sswitch_0
        0x9f01c7 -> :sswitch_14
        0xa001c7 -> :sswitch_13
        0xb601c7 -> :sswitch_d
        0xb701c7 -> :sswitch_b
        0xbb01c7 -> :sswitch_d
        0xbc01c7 -> :sswitch_c
        0xbd01c7 -> :sswitch_a
        0xbe01c7 -> :sswitch_c
        0xc101c7 -> :sswitch_9
        0xc201c7 -> :sswitch_8
        0xe501c6 -> :sswitch_16
        0xe701c6 -> :sswitch_3
        0xed01c6 -> :sswitch_2
        0xee01c6 -> :sswitch_15
        0xfd01c6 -> :sswitch_14
        0xfe01c6 -> :sswitch_13
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x30
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xe2
        0x1
        0x6d
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x84
        0x2
        0x8
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xe2
        0x1
        0x6c
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x71
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x70
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0xe2
        0x1
        0x63
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0xe2
        0x1
        0x62
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0xe2
        0x1
        0x6f
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x84
        0x2
        0x8
        0x1
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0xe2
        0x1
        0x6e
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x84
        0x2
        0x8
        0x1
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0xe2
        0x1
        0x67
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x84
        0x2
        0x8
        0x1
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0xe2
        0x1
        0x66
    .end array-data

    :array_f
    .array-data 4
        0xe3
        0x84
        0x2
        0x8
        0x1
    .end array-data

    :array_10
    .array-data 4
        0xe3
        0xe2
        0x1
        0x31
    .end array-data

    :array_11
    .array-data 4
        0xe3
        0xe2
        0x1
        0x30
    .end array-data

    :array_12
    .array-data 4
        0xe3
        0xe2
        0x1
        0x21
    .end array-data

    :array_13
    .array-data 4
        0xe3
        0xe2
        0x1
        0x20
    .end array-data

    :array_14
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x26
    .end array-data

    :array_15
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x25
    .end array-data

    :array_16
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x24
    .end array-data

    :array_17
    .array-data 4
        0xe3
        0xe2
        0x1
        0x61
    .end array-data

    :array_18
    .array-data 4
        0xe3
        0xe2
        0x1
        0x60
    .end array-data

    :array_19
    .array-data 4
        0xe3
        0xe2
        0x1
        0x65
    .end array-data

    :array_1a
    .array-data 4
        0xe3
        0xe2
        0x1
        0x64
    .end array-data

    :array_1b
    .array-data 4
        0xe3
        0xe2
        0x1
        0x51
    .end array-data

    :array_1c
    .array-data 4
        0xe3
        0xe2
        0x1
        0x50
    .end array-data

    :array_1d
    .array-data 4
        0xe3
        0x84
        0x2
        0x30
        0x5
    .end array-data
.end method
