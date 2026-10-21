.class public Li1/o;
.super Li1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li1/a<",
        "Li1/o$a;",
        ">;"
    }
.end annotation


# instance fields
.field public k:I

.field public l:I

.field public m:[[I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Li1/a;-><init>(II)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Li1/o;->l:I

    const/16 p2, 0x1d

    new-array p2, p2, [[I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_0

    aput-object v1, p2, p1

    new-array p1, v0, [I

    fill-array-data p1, :array_1

    const/4 v1, 0x1

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_2

    aput-object p1, p2, v0

    new-array p1, v0, [I

    fill-array-data p1, :array_3

    const/4 v1, 0x3

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_4

    const/4 v1, 0x4

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_5

    const/4 v1, 0x5

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_6

    const/4 v1, 0x6

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_7

    const/4 v1, 0x7

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_8

    const/16 v1, 0x8

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_9

    const/16 v1, 0x9

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_a

    const/16 v1, 0xa

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_b

    const/16 v1, 0xb

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_c

    const/16 v1, 0xc

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_d

    const/16 v1, 0xd

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_e

    const/16 v1, 0xe

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_f

    const/16 v1, 0xf

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_10

    const/16 v1, 0x10

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_11

    const/16 v1, 0x11

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_12

    const/16 v1, 0x12

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_13

    const/16 v1, 0x13

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_14

    const/16 v1, 0x14

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_15

    const/16 v1, 0x15

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_16

    const/16 v1, 0x16

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_17

    const/16 v1, 0x17

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_18

    const/16 v1, 0x18

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_19

    const/16 v1, 0x19

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_1a

    const/16 v1, 0x1a

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_1b

    const/16 v1, 0x1b

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_1c

    const/16 v0, 0x1c

    aput-object p1, p2, v0

    iput-object p2, p0, Li1/o;->m:[[I

    .line 4
    new-instance p1, Li1/o$a;

    invoke-direct {p1, p0}, Li1/o$a;-><init>(Li1/o;)V

    iput-object p1, p0, Li1/s;->a:Li1/e;

    .line 5
    invoke-virtual {p1}, Li1/e;->h()V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x19
    .end array-data

    :array_1
    .array-data 4
        0x2
        0xb
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x5
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x2
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x15
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x4
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x37
    .end array-data

    :array_8
    .array-data 4
        0x9
        0xc
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x1
    .end array-data

    :array_a
    .array-data 4
        0xb
        0x26
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x6
    .end array-data

    :array_c
    .array-data 4
        0xd
        0x4c
    .end array-data

    :array_d
    .array-data 4
        0xe
        0xd
    .end array-data

    :array_e
    .array-data 4
        0x21
        0x28
    .end array-data

    :array_f
    .array-data 4
        0x22
        0x29
    .end array-data

    :array_10
    .array-data 4
        0x23
        0x2a
    .end array-data

    :array_11
    .array-data 4
        0x24
        0x2b
    .end array-data

    :array_12
    .array-data 4
        0x25
        0x2c
    .end array-data

    :array_13
    .array-data 4
        0x26
        0x2d
    .end array-data

    :array_14
    .array-data 4
        0x27
        0x27
    .end array-data

    :array_15
    .array-data 4
        0x28
        0x40
    .end array-data

    :array_16
    .array-data 4
        0x29
        0x12
    .end array-data

    :array_17
    .array-data 4
        0x2a
        0xd
    .end array-data

    :array_18
    .array-data 4
        0x2b
        0x19
    .end array-data

    :array_19
    .array-data 4
        0x2c
        0x10
    .end array-data

    :array_1a
    .array-data 4
        0x2d
        0x42
    .end array-data

    :array_1b
    .array-data 4
        0x2e
        0x41
    .end array-data

    :array_1c
    .array-data 4
        0x2f
        0x3f
    .end array-data
.end method


# virtual methods
.method public l([I)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    aget v1, p1, v0

    const/16 v2, 0x50

    if-eq v1, v2, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v1, 0x2

    .line 2
    aget v1, p1, v1

    const/4 v2, 0x3

    .line 3
    aget p1, p1, v2

    and-int/lit16 v1, v1, 0xff

    .line 4
    iput v1, p0, Li1/o;->l:I

    move v1, v0

    .line 5
    :goto_0
    iget-object v2, p0, Li1/o;->m:[[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 6
    iget v3, p0, Li1/o;->l:I

    aget-object v4, v2, v1

    aget v4, v4, v0

    if-ne v3, v4, :cond_1

    if-eqz v3, :cond_2

    .line 7
    iput v1, p0, Li1/o;->k:I

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    iget v3, p0, Li1/o;->l:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_7

    .line 9
    array-length p1, v2

    if-ge v1, p1, :cond_8

    .line 10
    aget-object p1, v2, v1

    aget p1, p1, v4

    invoke-static {p1, v0}, Ll0/b0;->l0(II)V

    goto :goto_6

    :pswitch_0
    move v1, v0

    :goto_2
    and-int/lit16 v2, p1, 0xff

    const/16 v3, 0x1e

    if-ge v1, v2, :cond_3

    .line 11
    invoke-static {v3, v0}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 12
    :cond_3
    invoke-static {v3, v4}, Ll0/b0;->l0(II)V

    goto :goto_6

    :pswitch_1
    move v1, v0

    :goto_3
    and-int/lit16 v2, p1, 0xff

    const/16 v3, 0x1f

    if-ge v1, v2, :cond_4

    .line 13
    invoke-static {v3, v0}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 14
    :cond_4
    invoke-static {v3, v4}, Ll0/b0;->l0(II)V

    goto :goto_6

    :pswitch_2
    move v1, v0

    :goto_4
    and-int/lit16 v2, p1, 0xff

    const/16 v3, 0x8

    if-ge v1, v2, :cond_5

    .line 15
    invoke-static {v3, v0}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 16
    :cond_5
    invoke-static {v3, v4}, Ll0/b0;->l0(II)V

    goto :goto_6

    :pswitch_3
    move v1, v0

    :goto_5
    and-int/lit16 v2, p1, 0xff

    const/4 v3, 0x7

    if-ge v1, v2, :cond_6

    .line 17
    invoke-static {v3, v0}, Ll0/b0;->l0(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 18
    :cond_6
    invoke-static {v3, v4}, Ll0/b0;->l0(II)V

    goto :goto_6

    .line 19
    :cond_7
    array-length p1, v2

    if-gt v1, p1, :cond_8

    .line 20
    iget p1, p0, Li1/o;->k:I

    aget-object p1, v2, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    :cond_8
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
