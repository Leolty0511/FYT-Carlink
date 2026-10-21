.class public Lmodule/sound/C7738NOR_QC$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C7738NOR_QC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lmodule/sound/C7738NOR_QC;


# direct methods
.method public constructor <init>(Lmodule/sound/C7738NOR_QC;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/C7738NOR_QC$c;->a:Lmodule/sound/C7738NOR_QC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(D)I
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/sound/C7738NOR_QC$c;->a:Lmodule/sound/C7738NOR_QC;

    iget-object v0, v0, Lmodule/sound/C7738NOR_QC;->q7:Lmodule/sound/C7738NOR_QC$k;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lmodule/sound/C7738NOR_QC$k;->a(DI)I

    move-result p1

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
    shl-int/lit8 p1, v0, 0x14

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
    shl-int/lit8 p1, p1, 0x14

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
        0x6450db
        0x1baf24
        0x6450db
        0x1baf24
        0x834e00
        0x5db7e4
        0x7e2c00
        0x27956c
        0x25600
        0x29fa7
        0x84ed00
        0x6dc850
        0x7d2600
        0x20d1b
        0x2ed00
        0x6e2013
        0x868700
        0x4ad469
        0x7c0d00
        0x28eadf
        0x34300
        0x656d11
        0x804444
        0x7ff92c
    .end array-data

    :array_1
    .array-data 4
        0x6a9686
        0x156979
        0x6a9686
        0x156979
        0x827d00
        0xfb6de
        0x7ea800
        0x3606aa
        0x1c100
        0x7d6de5
        0x83b700
        0x30359
        0x7dec00
        0x3e049a
        0x23500
        0x12ca75
        0x84ed00
        0x6dc850
        0x7d2600
        0x20d1b
        0x27600
        0x76e4d7
        0x804444
        0x7ff92c
    .end array-data

    :array_2
    .array-data 4
        0x6de148
        0x121eb7
        0x6de148
        0x121eb7
        0x821300
        0x66b7be
        0x7ee400
        0x593b1b
        0x17700
        0x4c38e8    # 6.999912E-39f
        0x831a00
        0x3aabc8
        0x7e4b00
        0x63f005
        0x1d800
        0xdcb79
        0x841e00
        0x7cb19b
        0x7dab00
        0x3ead38
        0x20f00
        0x3e5914
        0x804444
        0x7ff92c
    .end array-data

    :array_3
    .array-data 4
        0x714783
        0xeb87c
        0x714783
        0xeb87c
        0x81aa00
        0x11884e
        0x7f1f00
        0x63510f
        0x12c00
        0x7bce66
        0x827d00
        0xfb6de
        0x7ea800
        0x3606aa
        0x17a00
        0x4e3279
        0x834e00
        0x5db7e4
        0x7e2c00
        0x27956c
        0x1a700
        0x2edc09
        0x804444
        0x7ff92c
    .end array-data

    :array_4
    .array-data 4
        0x74c9de
        0xb3621
        0x74c9de
        0xb3621
        0x814000
        0x100379
        0x7f5900
        0x5374f8
        0xe200
        0xc142c
        0x81df00
        0x1a860
        0x7f0200
        0x317723
        0x11c00
        0x53b59c
        0x827d00
        0xfb6de
        0x7ea800
        0x3606aa
        0x13e00
        0x47db74
        0x804444
        0x7ff92c
    .end array-data

    :array_5
    .array-data 4
        0x7868fb
        0x79704
        0x7868fb
        0x79704
        0x80d500
        0x62040d
        0x7f9200
        0x28d449
        0x9600
        0x7ceff4
        0x814000
        0x100379
        0x7f5900
        0x5374f8
        0xbe00
        0x1e0aad
        0x81aa00
        0x11884e
        0x7f1f00
        0x63510f
        0xd500
        0x8c427
        0x804444
        0x7ff92c
    .end array-data

    :array_6
    .array-data 4
        0x7b63cd
        0x49c32
        0x7b63cd
        0x49c32
        0x808000
        0x36b1e2
        0x7fbe00
        0x638b45
        0x5a00
        0x5a2307
        0x80c000
        0x39ddb1
        0x7f9d00
        0x40dc06
        0x7200
        0x2eb3c9
        0x810000
        0x2cf632
        0x7f7b00
        0x661add
        0x8000
        0x167b19
        0x804444
        0x7ff92c
    .end array-data

    :array_7
    .array-data 4
        0x7ce85e
        0x317a1
        0x7ce85e
        0x317a1
        0x805500
        0x564d13
        0x7fd400
        0x5b6e1f
        0x3c00
        0x4127ef
        0x808000
        0x36b1e2
        0x7fbe00
        0x638b45
        0x4c00
        0x28b675
        0x80ab00
        0xfee13
        0x7fa800
        0x52a8e0
        0x5500
        0x47f709
        0x804444
        0x7ff92c
    .end array-data
.end method
