.class public Lmodule/sound/C7739$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C7739;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lmodule/sound/C7739;


# direct methods
.method public constructor <init>(Lmodule/sound/C7739;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/C7739$c;->a:Lmodule/sound/C7739;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(D)I
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/sound/C7739$c;->a:Lmodule/sound/C7739;

    iget-object v0, v0, Lmodule/sound/C7739;->p9:Lmodule/sound/C7739$l;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lmodule/sound/C7739$l;->a(DI)J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method

.method public b(I)I
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    shl-int/lit8 p1, v0, 0x1c

    return p1
.end method

.method public c(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    shl-int/lit8 p1, p1, 0x1c

    return p1
.end method

.method public d(I)[I
    .locals 1

    const/16 v0, 0x18

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    new-array p1, v0, [I

    .line 1
    fill-array-data p1, :array_0

    return-object p1

    :pswitch_1
    new-array p1, v0, [I

    .line 2
    fill-array-data p1, :array_1

    return-object p1

    :pswitch_2
    new-array p1, v0, [I

    .line 3
    fill-array-data p1, :array_2

    return-object p1

    :pswitch_3
    new-array p1, v0, [I

    .line 4
    fill-array-data p1, :array_3

    return-object p1

    :pswitch_4
    new-array p1, v0, [I

    .line 5
    fill-array-data p1, :array_4

    return-object p1

    :pswitch_5
    new-array p1, v0, [I

    .line 6
    fill-array-data p1, :array_5

    return-object p1

    :pswitch_6
    new-array p1, v0, [I

    .line 7
    fill-array-data p1, :array_6

    return-object p1

    :pswitch_7
    new-array p1, v0, [I

    .line 8
    fill-array-data p1, :array_7

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        0x6450db00
        0x1baf2400
        0x6450db00
        0x1baf2400
        -0x7cb20000
        0x5db7e400
        0x7e2c0000
        0x27956c00
        0x2560000
        0x29fa700
        -0x7b130000
        0x6dc85000
        0x7d260000
        0x20d1b00
        0x2ed0000
        0x6e201300
        -0x79790000
        0x4ad46900    # 6960256.0f
        0x7c0d0000
        0x28eadf00
        0x3430000
        0x656d1100
        -0x7fbbbc00
        0x7ff92c00
    .end array-data

    :array_1
    .array-data 4
        0x6a968600
        0x15697900
        0x6a968600
        0x15697900
        -0x7d830000
        0xfb6de00
        0x7ea80000
        0x3606aa00
        0x1c10000
        0x7d6de500
        -0x7c490000
        0x3035900
        0x7dec0000
        0x3e049a00
        0x2350000
        0x12ca7500
        -0x7b130000
        0x6dc85000
        0x7d260000
        0x20d1b00
        0x2760000
        0x76e4d700
        -0x7fbbbc00
        0x7ff92c00
    .end array-data

    :array_2
    .array-data 4
        0x6de14800
        0x121eb700
        0x6de14800
        0x121eb700
        -0x7ded0000
        0x66b7be00
        0x7ee40000
        0x593b1b00
        0x1770000
        0x4c38e800    # 4.8472064E7f
        -0x7ce60000
        0x3aabc800
        0x7e4b0000
        0x63f00500
        0x1d80000
        0xdcb7900
        -0x7be20000
        0x7cb19b00
        0x7dab0000
        0x3ead3800
        0x20f0000
        0x3e591400
        -0x7fbbbc00
        0x7ff92c00
    .end array-data

    :array_3
    .array-data 4
        0x71478300
        0xeb87c00
        0x71478300
        0xeb87c00
        -0x7e560000
        0x11884e00
        0x7f1f0000
        0x63510f00
        0x12c0000
        0x7bce6600
        -0x7d830000
        0xfb6de00
        0x7ea80000
        0x3606aa00
        0x17a0000
        0x4e327900    # 7.4856858E8f
        -0x7cb20000
        0x5db7e400
        0x7e2c0000
        0x27956c00
        0x1a70000
        0x2edc0900    # 1.00060404E-10f
        -0x7fbbbc00
        0x7ff92c00
    .end array-data

    :array_4
    .array-data 4
        0x74c9de00
        0xb362100
        0x74c9de00
        0xb362100
        -0x7ec00000
        0x10037900
        0x7f590000
        0x5374f800
        0xe20000
        0xc142c00
        -0x7e210000
        0x1a86000
        0x7f020000
        0x31772300
        0x11c0000
        0x53b59c00
        -0x7d830000
        0xfb6de00
        0x7ea80000
        0x3606aa00
        0x13e0000
        0x47db7400    # 112360.0f
        -0x7fbbbc00
        0x7ff92c00
    .end array-data

    :array_5
    .array-data 4
        0x7868fb00
        0x7970400
        0x7868fb00
        0x7970400
        -0x7f2b0000
        0x62040d00
        0x7f920000
        0x28d44900
        0x960000
        0x7ceff400
        -0x7ec00000
        0x10037900
        0x7f590000
        0x5374f800
        0xbe0000
        0x1e0aad00
        -0x7e560000
        0x11884e00
        0x7f1f0000
        0x63510f00
        0xd50000
        0x8c42700
        -0x7fbbbc00
        0x7ff92c00
    .end array-data

    :array_6
    .array-data 4
        0x7b63cd00
        0x49c3200
        0x7b63cd00
        0x49c3200
        -0x7f800000
        0x36b1e200
        0x7fbe0000
        0x638b4500
        0x5a0000
        0x5a230700
        -0x7f400000
        0x39ddb100
        0x7f9d0000
        0x40dc0600
        0x720000
        0x2eb3c900
        -0x7f000000
        0x2cf63200
        0x7f7b0000
        0x661add00
        0x800000
        0x167b1900
        -0x7fbbbc00
        0x7ff92c00
    .end array-data

    :array_7
    .array-data 4
        0x7ce85e00
        0x317a100
        0x7ce85e00
        0x317a100
        -0x7fab0000
        0x564d1300
        0x7fd40000
        0x5b6e1f00
        0x3c0000
        0x4127ef00
        -0x7f800000
        0x36b1e200
        0x7fbe0000
        0x638b4500
        0x4c0000
        0x28b67500
        -0x7f550000
        0xfee1300
        0x7fa80000
        0x52a8e000
        0x550000
        0x47f70900    # 126482.0f
        -0x7fbbbc00
        0x7ff92c00
    .end array-data
.end method
