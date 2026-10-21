.class public Lk0/kq$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/kq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/kq;


# direct methods
.method public constructor <init>(Lk0/kq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/kq$c;->a:Lk0/kq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lk0/kq$c;->a:Lk0/kq;

    iget v1, v0, Lk0/kq;->h:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/kq;->h:I

    const/4 v3, 0x5

    if-lez v1, :cond_0

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

    new-array v1, v0, [I

    aput v5, v1, v4

    const/16 v4, 0x83

    aput v4, v1, v2

    aput v2, v1, v6

    .line 3
    sget v2, Lu0/b;->a0:I

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 5
    sget v0, Lk0/nt;->a:I

    const/4 v1, 0x6

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    new-array v0, v3, [I

    .line 6
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_1
    new-array v0, v3, [I

    .line 7
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_2
    new-array v0, v3, [I

    .line 8
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_3
    new-array v0, v3, [I

    .line 9
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_4
    new-array v0, v3, [I

    .line 10
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_5
    new-array v0, v3, [I

    .line 11
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_6
    new-array v0, v3, [I

    .line 12
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_7
    new-array v0, v3, [I

    .line 13
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_8
    new-array v0, v3, [I

    .line 14
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_9
    new-array v0, v3, [I

    .line 15
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_a
    new-array v0, v3, [I

    .line 16
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_b
    new-array v0, v3, [I

    .line 17
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_c
    new-array v0, v3, [I

    .line 18
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_d
    new-array v0, v3, [I

    .line 19
    fill-array-data v0, :array_e

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_e
    new-array v0, v3, [I

    .line 20
    fill-array-data v0, :array_f

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_f
    new-array v0, v3, [I

    .line 21
    fill-array-data v0, :array_10

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_10
    new-array v0, v3, [I

    .line 22
    fill-array-data v0, :array_11

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_11
    new-array v0, v3, [I

    .line 23
    fill-array-data v0, :array_12

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_12
    new-array v0, v3, [I

    .line 24
    fill-array-data v0, :array_13

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_13
    new-array v0, v3, [I

    .line 25
    fill-array-data v0, :array_14

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [B

    .line 26
    fill-array-data v0, :array_15

    invoke-static {v0}, Lk0/kq;->d3([B)V

    goto/16 :goto_0

    :sswitch_14
    new-array v0, v3, [I

    .line 27
    fill-array-data v0, :array_16

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [B

    .line 28
    fill-array-data v0, :array_17

    invoke-static {v0}, Lk0/kq;->d3([B)V

    goto/16 :goto_0

    :sswitch_15
    new-array v0, v3, [I

    .line 29
    fill-array-data v0, :array_18

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [B

    .line 30
    fill-array-data v0, :array_19

    invoke-static {v0}, Lk0/kq;->d3([B)V

    goto/16 :goto_0

    :sswitch_16
    new-array v0, v3, [I

    .line 31
    fill-array-data v0, :array_1a

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [B

    .line 32
    fill-array-data v0, :array_1b

    invoke-static {v0}, Lk0/kq;->d3([B)V

    goto/16 :goto_0

    :sswitch_17
    new-array v0, v3, [I

    .line 33
    fill-array-data v0, :array_1c

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [B

    .line 34
    fill-array-data v0, :array_1d

    invoke-static {v0}, Lk0/kq;->d3([B)V

    goto/16 :goto_0

    :sswitch_18
    new-array v0, v3, [I

    .line 35
    fill-array-data v0, :array_1e

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [B

    .line 36
    fill-array-data v0, :array_1f

    invoke-static {v0}, Lk0/kq;->d3([B)V

    goto/16 :goto_0

    :sswitch_19
    new-array v0, v3, [I

    .line 37
    fill-array-data v0, :array_20

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [B

    .line 38
    fill-array-data v0, :array_21

    invoke-static {v0}, Lk0/kq;->d3([B)V

    goto/16 :goto_0

    :sswitch_1a
    new-array v0, v3, [I

    .line 39
    fill-array-data v0, :array_22

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [B

    .line 40
    fill-array-data v0, :array_23

    invoke-static {v0}, Lk0/kq;->d3([B)V

    goto :goto_0

    :sswitch_1b
    new-array v0, v3, [I

    .line 41
    fill-array-data v0, :array_24

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [B

    .line 42
    fill-array-data v0, :array_25

    invoke-static {v0}, Lk0/kq;->d3([B)V

    goto :goto_0

    :sswitch_1c
    new-array v0, v3, [I

    .line 43
    fill-array-data v0, :array_26

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [B

    .line 44
    fill-array-data v0, :array_27

    invoke-static {v0}, Lk0/kq;->d3([B)V

    goto :goto_0

    :sswitch_1d
    new-array v0, v3, [I

    .line 45
    fill-array-data v0, :array_28

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [B

    .line 46
    fill-array-data v0, :array_29

    invoke-static {v0}, Lk0/kq;->d3([B)V

    goto :goto_0

    :sswitch_1e
    new-array v0, v3, [I

    .line 47
    fill-array-data v0, :array_2a

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [B

    .line 48
    fill-array-data v0, :array_2b

    invoke-static {v0}, Lk0/kq;->d3([B)V

    goto :goto_0

    :sswitch_1f
    new-array v0, v3, [I

    .line 49
    fill-array-data v0, :array_2c

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [B

    .line 50
    fill-array-data v0, :array_2d

    invoke-static {v0}, Lk0/kq;->d3([B)V

    goto :goto_0

    :sswitch_20
    new-array v0, v3, [I

    .line 51
    fill-array-data v0, :array_2e

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [B

    .line 52
    fill-array-data v0, :array_2f

    invoke-static {v0}, Lk0/kq;->d3([B)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, v0, Lk0/kq;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 54
    iget-object v0, p0, Lk0/kq$c;->a:Lk0/kq;

    iput v3, v0, Lk0/kq;->h:I

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0xb901c6 -> :sswitch_20
        0xba01c6 -> :sswitch_1f
        0xbb01c6 -> :sswitch_1e
        0xbc01c6 -> :sswitch_1d
        0xbd01c6 -> :sswitch_1c
        0xbe01c6 -> :sswitch_1b
        0xbf01c6 -> :sswitch_1a
        0xc001c6 -> :sswitch_19
        0xc101c6 -> :sswitch_18
        0xc201c6 -> :sswitch_17
        0xc301c6 -> :sswitch_16
        0xc401c6 -> :sswitch_15
        0xc501c6 -> :sswitch_14
        0xc601c6 -> :sswitch_13
        0xcc01c5 -> :sswitch_20
        0xcd01c5 -> :sswitch_1f
        0xce01c5 -> :sswitch_1e
        0xcf01c5 -> :sswitch_1d
        0xd001c5 -> :sswitch_1c
        0xd101c5 -> :sswitch_1b
        0xd201c5 -> :sswitch_1a
        0xd301c5 -> :sswitch_19
        0xd401c5 -> :sswitch_18
        0xd501c5 -> :sswitch_17
        0xd601c5 -> :sswitch_16
        0xd701c5 -> :sswitch_15
        0xd801c5 -> :sswitch_14
        0xd901c5 -> :sswitch_13
        0xda01c5 -> :sswitch_12
        0xdb01c5 -> :sswitch_11
        0xdc01c5 -> :sswitch_10
        0xdd01c5 -> :sswitch_f
        0xde01c5 -> :sswitch_e
        0xdf01c5 -> :sswitch_d
        0xe001c5 -> :sswitch_c
        0xe101c5 -> :sswitch_b
        0xe201c5 -> :sswitch_a
        0xe301c5 -> :sswitch_9
        0xe401c5 -> :sswitch_8
        0xe501c5 -> :sswitch_7
        0xe601c5 -> :sswitch_6
        0xe701c5 -> :sswitch_5
        0xe801c5 -> :sswitch_4
        0xe901c5 -> :sswitch_3
        0xea01c5 -> :sswitch_2
        0xeb01c5 -> :sswitch_1
        0xec01c5 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x90
        0x1
        0x30
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xd1
        0x2
        0x66
        0xff
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xd1
        0x2
        0x66
        0x10
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xd1
        0x2
        0x66
        0xe
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xd1
        0x2
        0x66
        0xc
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xd1
        0x2
        0x65
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0xd1
        0x2
        0x64
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0xd1
        0x2
        0x63
        0x0
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0xd1
        0x2
        0x62
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0xd1
        0x2
        0x61
        0x0
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0xd1
        0x2
        0x60
        0x0
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0xd1
        0x2
        0xa
        0x0
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0xd1
        0x2
        0x9
        0x0
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0xd1
        0x2
        0x8
        0x0
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0xd1
        0x2
        0x7
        0xff
    .end array-data

    :array_f
    .array-data 4
        0xe3
        0xd1
        0x2
        0x7
        0x11
    .end array-data

    :array_10
    .array-data 4
        0xe3
        0xd1
        0x2
        0x7
        0xf
    .end array-data

    :array_11
    .array-data 4
        0xe3
        0xd1
        0x2
        0x6
        0x0
    .end array-data

    :array_12
    .array-data 4
        0xe3
        0xd1
        0x2
        0x5
        0xff
    .end array-data

    :array_13
    .array-data 4
        0xe3
        0xd1
        0x2
        0x5
        0xa
    .end array-data

    :array_14
    .array-data 4
        0xe3
        0xd1
        0x2
        0x4
        0x0
    .end array-data

    :array_15
    .array-data 1
        0x2et
        -0x2ft
        0x2t
        0x4t
        0x0t
        0x0t
    .end array-data

    nop

    :array_16
    .array-data 4
        0xe3
        0xd1
        0x2
        0x3
        0xff
    .end array-data

    :array_17
    .array-data 1
        0x2et
        -0x2ft
        0x2t
        0x3t
        -0x1t
        0x0t
    .end array-data

    nop

    :array_18
    .array-data 4
        0xe3
        0xd1
        0x2
        0x3
        0x11
    .end array-data

    :array_19
    .array-data 1
        0x2et
        -0x2ft
        0x2t
        0x3t
        0x11t
        0x0t
    .end array-data

    nop

    :array_1a
    .array-data 4
        0xe3
        0xd1
        0x2
        0x3
        0x10
    .end array-data

    :array_1b
    .array-data 1
        0x2et
        -0x2ft
        0x2t
        0x3t
        0x10t
        0x0t
    .end array-data

    nop

    :array_1c
    .array-data 4
        0xe3
        0xd1
        0x2
        0x3
        0xd
    .end array-data

    :array_1d
    .array-data 1
        0x2et
        -0x2ft
        0x2t
        0x3t
        0xdt
        0x0t
    .end array-data

    nop

    :array_1e
    .array-data 4
        0xe3
        0xd1
        0x2
        0x3
        0xc
    .end array-data

    :array_1f
    .array-data 1
        0x2et
        -0x2ft
        0x2t
        0x3t
        0xct
        0x0t
    .end array-data

    nop

    :array_20
    .array-data 4
        0xe3
        0xd1
        0x2
        0x2
        0xff
    .end array-data

    :array_21
    .array-data 1
        0x2et
        -0x2ft
        0x2t
        0x2t
        -0x1t
        0x0t
    .end array-data

    nop

    :array_22
    .array-data 4
        0xe3
        0xd1
        0x2
        0x2
        0x11
    .end array-data

    :array_23
    .array-data 1
        0x2et
        -0x2ft
        0x2t
        0x2t
        0x11t
        0x0t
    .end array-data

    nop

    :array_24
    .array-data 4
        0xe3
        0xd1
        0x2
        0x2
        0xe
    .end array-data

    :array_25
    .array-data 1
        0x2et
        -0x2ft
        0x2t
        0x2t
        0xet
        0x0t
    .end array-data

    nop

    :array_26
    .array-data 4
        0xe3
        0xd1
        0x2
        0x2
        0xa
    .end array-data

    :array_27
    .array-data 1
        0x2et
        -0x2ft
        0x2t
        0x2t
        0xat
        0x0t
    .end array-data

    nop

    :array_28
    .array-data 4
        0xe3
        0xd1
        0x2
        0x1
        0xff
    .end array-data

    :array_29
    .array-data 1
        0x2et
        -0x2ft
        0x2t
        0x1t
        -0x1t
        0x0t
    .end array-data

    nop

    :array_2a
    .array-data 4
        0xe3
        0xd1
        0x2
        0x1
        0x11
    .end array-data

    :array_2b
    .array-data 1
        0x2et
        -0x2ft
        0x2t
        0x1t
        0x11t
        0x0t
    .end array-data

    nop

    :array_2c
    .array-data 4
        0xe3
        0xd1
        0x2
        0x1
        0xe
    .end array-data

    :array_2d
    .array-data 1
        0x2et
        -0x2ft
        0x2t
        0x1t
        0xet
        0x0t
    .end array-data

    nop

    :array_2e
    .array-data 4
        0xe3
        0xd1
        0x2
        0x1
        0xd
    .end array-data

    :array_2f
    .array-data 1
        0x2et
        -0x2ft
        0x2t
        0x1t
        0xdt
        0x0t
    .end array-data
.end method
