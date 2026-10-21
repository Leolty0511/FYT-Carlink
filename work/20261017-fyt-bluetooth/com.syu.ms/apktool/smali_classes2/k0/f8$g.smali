.class public Lk0/f8$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/f8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/f8;


# direct methods
.method public constructor <init>(Lk0/f8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/f8$g;->a:Lk0/f8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/f8$g;->a:Lk0/f8;

    iget v1, v0, Lk0/f8;->S:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/f8;->S:I

    const/4 v3, 0x5

    if-lez v1, :cond_0

    .line 2
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_1

    .line 3
    invoke-static {v0}, Lk0/f8;->r3(Lk0/f8;)Lo1/g0;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2}, Lo1/g0;->b(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lk0/f8;->a3(I)V

    .line 4
    iget-object v0, p0, Lk0/f8$g;->a:Lk0/f8;

    invoke-static {v0}, Lk0/f8;->r3(Lk0/f8;)Lo1/g0;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2}, Lo1/g0;->b(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lk0/f8;->m3(I)V

    .line 5
    iget-object v0, p0, Lk0/f8$g;->a:Lk0/f8;

    invoke-static {v0}, Lk0/f8;->r3(Lk0/f8;)Lo1/g0;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v2}, Lo1/g0;->b(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lk0/f8;->n3(I)V

    .line 6
    iget-object v0, p0, Lk0/f8$g;->a:Lk0/f8;

    invoke-static {v0}, Lk0/f8;->r3(Lk0/f8;)Lo1/g0;

    move-result-object v1

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lo1/g0;->b(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lk0/f8;->o3(I)V

    .line 7
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 8
    iget-object v0, p0, Lk0/f8$g;->a:Lk0/f8;

    invoke-static {v0}, Lk0/f8;->r3(Lk0/f8;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v5}, Lo1/g0;->b(II)I

    move-result v1

    iput v1, v0, Lk0/f8;->H:I

    .line 9
    iget-object v0, p0, Lk0/f8$g;->a:Lk0/f8;

    const/16 v1, 0x24

    invoke-static {v0}, Lk0/f8;->r3(Lk0/f8;)Lo1/g0;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v0, v1, v2, v5}, Lk0/f8;->s3(Lk0/f8;III)V

    goto/16 :goto_0

    :sswitch_0
    new-array v0, v3, [I

    .line 10
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_1
    new-array v0, v3, [I

    .line 11
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_2
    new-array v0, v3, [I

    .line 12
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_3
    new-array v0, v3, [I

    .line 13
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_4
    new-array v0, v3, [I

    .line 14
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_5
    new-array v0, v3, [I

    .line 15
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_6
    new-array v0, v3, [I

    .line 16
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_7
    new-array v0, v3, [I

    .line 17
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_8
    new-array v0, v3, [I

    .line 18
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_9
    new-array v0, v3, [I

    .line 19
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_a
    new-array v0, v3, [I

    .line 20
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_b
    new-array v0, v3, [I

    .line 21
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_c
    new-array v0, v3, [I

    .line 22
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_d
    new-array v0, v3, [I

    .line 23
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_e
    new-array v0, v3, [I

    .line 24
    fill-array-data v0, :array_e

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_f
    new-array v0, v3, [I

    .line 25
    fill-array-data v0, :array_f

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_10
    new-array v0, v3, [I

    .line 26
    fill-array-data v0, :array_10

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_11
    new-array v0, v3, [I

    .line 27
    fill-array-data v0, :array_11

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_12
    new-array v0, v3, [I

    .line 28
    fill-array-data v0, :array_12

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_13
    new-array v0, v3, [I

    .line 29
    fill-array-data v0, :array_13

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_14
    new-array v0, v3, [I

    .line 30
    fill-array-data v0, :array_14

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_15
    new-array v0, v3, [I

    .line 31
    fill-array-data v0, :array_15

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_16
    new-array v0, v3, [I

    .line 32
    fill-array-data v0, :array_16

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_17
    new-array v0, v3, [I

    .line 33
    fill-array-data v0, :array_17

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_18
    new-array v0, v3, [I

    .line 34
    fill-array-data v0, :array_18

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_19
    new-array v0, v3, [I

    .line 35
    fill-array-data v0, :array_19

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_1a
    new-array v0, v3, [I

    .line 36
    fill-array-data v0, :array_1a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_1b
    new-array v0, v3, [I

    .line 37
    fill-array-data v0, :array_1b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_1c
    new-array v0, v3, [I

    .line 38
    fill-array-data v0, :array_1c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_1d
    new-array v0, v3, [I

    .line 39
    fill-array-data v0, :array_1d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_1e
    new-array v0, v3, [I

    .line 40
    fill-array-data v0, :array_1e

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_1f
    new-array v0, v3, [I

    .line 41
    fill-array-data v0, :array_1f

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_20
    new-array v0, v3, [I

    .line 42
    fill-array-data v0, :array_20

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_21
    new-array v0, v3, [I

    .line 43
    fill-array-data v0, :array_21

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_22
    new-array v0, v3, [I

    .line 44
    fill-array-data v0, :array_22

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_23
    new-array v0, v3, [I

    .line 45
    fill-array-data v0, :array_23

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_24
    new-array v0, v3, [I

    .line 46
    fill-array-data v0, :array_24

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_25
    new-array v0, v3, [I

    .line 47
    fill-array-data v0, :array_25

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_26
    new-array v0, v3, [I

    .line 48
    fill-array-data v0, :array_26

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_27
    new-array v0, v3, [I

    .line 49
    fill-array-data v0, :array_27

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_28
    new-array v0, v3, [I

    .line 50
    fill-array-data v0, :array_28

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_29
    new-array v0, v3, [I

    .line 51
    fill-array-data v0, :array_29

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_2a
    new-array v0, v3, [I

    .line 52
    fill-array-data v0, :array_2a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_2b
    new-array v0, v3, [I

    .line 53
    fill-array-data v0, :array_2b

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_2c
    new-array v0, v3, [I

    .line 54
    fill-array-data v0, :array_2c

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, v0, Lk0/f8;->U:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 56
    iget-object v0, p0, Lk0/f8$g;->a:Lk0/f8;

    iput v3, v0, Lk0/f8;->S:I

    :cond_1
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0xb00fc -> :sswitch_2c
        0xc00fc -> :sswitch_2b
        0xd00fc -> :sswitch_2a
        0xe00fc -> :sswitch_29
        0xf00fc -> :sswitch_28
        0x1000fc -> :sswitch_27
        0x1100fc -> :sswitch_26
        0x1200fc -> :sswitch_25
        0x1300fc -> :sswitch_24
        0x1400fc -> :sswitch_23
        0x1500fc -> :sswitch_22
        0x1600fc -> :sswitch_21
        0x1700fc -> :sswitch_20
        0x1800fc -> :sswitch_1f
        0x1900fc -> :sswitch_1e
        0x1a00fc -> :sswitch_2c
        0x1b00fc -> :sswitch_1d
        0x1c00fc -> :sswitch_1c
        0x1d00fc -> :sswitch_1b
        0x1e00fc -> :sswitch_1b
        0x1f00fc -> :sswitch_1b
        0x2000fc -> :sswitch_1b
        0x2100fc -> :sswitch_1b
        0x2200fc -> :sswitch_1b
        0x2300fc -> :sswitch_1a
        0x2400fc -> :sswitch_19
        0x2500fc -> :sswitch_18
        0x2600fc -> :sswitch_17
        0x2700fc -> :sswitch_16
        0x2800fc -> :sswitch_15
        0x2900fc -> :sswitch_14
        0x2a00fc -> :sswitch_13
        0x2b00fc -> :sswitch_12
        0x2c00fc -> :sswitch_11
        0x2d00fc -> :sswitch_10
        0x2e00fc -> :sswitch_f
        0x2f00fc -> :sswitch_e
        0x3000fc -> :sswitch_d
        0x3100fc -> :sswitch_c
        0x3200fc -> :sswitch_b
        0x3300fc -> :sswitch_a
        0x3400fc -> :sswitch_9
        0x3500fc -> :sswitch_8
        0x3600fc -> :sswitch_7
        0x3700fc -> :sswitch_6
        0x3800fc -> :sswitch_5
        0x3900fc -> :sswitch_4
        0x3a00fc -> :sswitch_3
        0x3b00fc -> :sswitch_2
        0x3c00fc -> :sswitch_1b
        0x3d00fc -> :sswitch_1b
        0x3e00fc -> :sswitch_1b
        0x3f00fc -> :sswitch_1
        0x4000fc -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x35
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0x35
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0x34
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0x24
        0x33
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        0x24
        0x31
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        0x24
        0x40
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x2
        0x24
        0x30
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x2
        0x24
        0x2f
        0x0
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x2
        0x24
        0x28
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x2
        0x24
        0x40
        0x0
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x2
        0x24
        0x2e
        0x0
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x2
        0x24
        0x2d
        0x0
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0x2
        0x24
        0x2c
        0x0
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x2
        0x24
        0x2b
        0x0
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0x2
        0x24
        0x14
        0x0
    .end array-data

    :array_f
    .array-data 4
        0xe3
        0x2
        0x24
        0xa
        0x0
    .end array-data

    :array_10
    .array-data 4
        0xe3
        0x2
        0x24
        0x9
        0x0
    .end array-data

    :array_11
    .array-data 4
        0xe3
        0x2
        0x24
        0x10
        0x0
    .end array-data

    :array_12
    .array-data 4
        0xe3
        0x2
        0x24
        0x8
        0x0
    .end array-data

    :array_13
    .array-data 4
        0xe3
        0x2
        0x24
        0x14
        0x0
    .end array-data

    :array_14
    .array-data 4
        0xe3
        0x2
        0x24
        0x40
        0x0
    .end array-data

    :array_15
    .array-data 4
        0xe3
        0x2
        0x24
        0x10
        0x0
    .end array-data

    :array_16
    .array-data 4
        0xe3
        0x2
        0x24
        0x7
        0x0
    .end array-data

    :array_17
    .array-data 4
        0xe3
        0x2
        0x24
        0x10
        0x0
    .end array-data

    :array_18
    .array-data 4
        0xe3
        0x2
        0x24
        0x6
        0x0
    .end array-data

    :array_19
    .array-data 4
        0xe3
        0x2
        0x24
        0x40
        0x0
    .end array-data

    :array_1a
    .array-data 4
        0xe3
        0x2
        0x24
        0xb
        0x0
    .end array-data

    :array_1b
    .array-data 4
        0xe3
        0x2
        0x24
        0x23
        0x0
    .end array-data

    :array_1c
    .array-data 4
        0xe3
        0x2
        0x24
        0x2a
        0x0
    .end array-data

    :array_1d
    .array-data 4
        0xe3
        0x2
        0x24
        0x29
        0x0
    .end array-data

    :array_1e
    .array-data 4
        0xe3
        0x2
        0x24
        0x28
        0x0
    .end array-data

    :array_1f
    .array-data 4
        0xe3
        0x2
        0x24
        0x28
        0x0
    .end array-data

    :array_20
    .array-data 4
        0xe3
        0x2
        0x24
        0x27
        0x0
    .end array-data

    :array_21
    .array-data 4
        0xe3
        0x2
        0x24
        0x25
        0x0
    .end array-data

    :array_22
    .array-data 4
        0xe3
        0x2
        0x24
        0x26
        0x0
    .end array-data

    :array_23
    .array-data 4
        0xe3
        0x2
        0x24
        0x24
        0x0
    .end array-data

    :array_24
    .array-data 4
        0xe3
        0x2
        0x24
        0x22
        0x0
    .end array-data

    :array_25
    .array-data 4
        0xe3
        0x2
        0x24
        0x21
        0x0
    .end array-data

    :array_26
    .array-data 4
        0xe3
        0x2
        0x24
        0x20
        0x0
    .end array-data

    :array_27
    .array-data 4
        0xe3
        0x2
        0x24
        0x19
        0x0
    .end array-data

    :array_28
    .array-data 4
        0xe3
        0x2
        0x24
        0x18
        0x0
    .end array-data

    :array_29
    .array-data 4
        0xe3
        0x2
        0x24
        0x17
        0x0
    .end array-data

    :array_2a
    .array-data 4
        0xe3
        0x2
        0x24
        0x16
        0x0
    .end array-data

    :array_2b
    .array-data 4
        0xe3
        0x2
        0x24
        0x15
        0x0
    .end array-data

    :array_2c
    .array-data 4
        0xe3
        0x2
        0x24
        0x14
        0x0
    .end array-data
.end method
