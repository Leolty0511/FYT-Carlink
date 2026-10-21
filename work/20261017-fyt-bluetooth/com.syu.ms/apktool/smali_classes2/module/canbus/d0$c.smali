.class public Lmodule/canbus/d0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/d0;


# direct methods
.method public constructor <init>(Lmodule/canbus/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/d0$c;->a:Lmodule/canbus/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .line 1
    sget v0, Lk0/nt;->a:I

    const/16 v1, 0x10

    shr-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0x29

    .line 2
    sget v0, Lk0/nt;->c:I

    const/16 v3, 0x28

    const/16 v4, 0x14

    const/16 v5, 0x12

    const/16 v6, 0x13

    const/16 v7, 0x26

    const/16 v8, 0x25

    const/16 v9, 0x24

    const/4 v10, 0x6

    const/4 v11, -0x1

    const/4 v12, 0x2

    const/4 v13, 0x3

    const/4 v14, 0x1

    const/4 v15, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v1, v11

    goto/16 :goto_0

    :pswitch_1
    const/16 v1, 0x34

    goto/16 :goto_0

    :pswitch_2
    const/16 v1, 0x33

    goto/16 :goto_0

    :pswitch_3
    const/16 v1, 0x32

    goto/16 :goto_0

    :pswitch_4
    const/16 v1, 0x31

    goto/16 :goto_0

    :pswitch_5
    const/16 v1, 0x30

    goto/16 :goto_0

    :pswitch_6
    move v1, v3

    goto/16 :goto_0

    :pswitch_7
    move v1, v2

    goto/16 :goto_0

    :pswitch_8
    const/16 v1, 0x18

    goto/16 :goto_0

    :pswitch_9
    const/16 v1, 0x23

    goto/16 :goto_0

    :pswitch_a
    const/16 v1, 0x22

    goto/16 :goto_0

    :pswitch_b
    const/16 v1, 0x21

    goto/16 :goto_0

    :pswitch_c
    const/16 v1, 0x20

    goto/16 :goto_0

    :pswitch_d
    const/16 v1, 0x11

    goto :goto_0

    :pswitch_e
    const/16 v1, 0x16

    goto :goto_0

    :pswitch_f
    const/16 v1, 0x15

    goto :goto_0

    :pswitch_10
    const/16 v1, 0x17

    goto :goto_0

    :pswitch_11
    move v1, v4

    goto :goto_0

    :pswitch_12
    move v1, v5

    goto :goto_0

    :pswitch_13
    move v1, v6

    goto :goto_0

    :pswitch_14
    move v1, v7

    goto :goto_0

    :pswitch_15
    move v1, v8

    goto :goto_0

    :pswitch_16
    move v1, v9

    goto :goto_0

    :pswitch_17
    const/16 v1, 0xf

    goto :goto_0

    :pswitch_18
    const/16 v1, 0xe

    goto :goto_0

    :pswitch_19
    const/16 v1, 0xd

    goto :goto_0

    :pswitch_1a
    const/16 v1, 0xc

    goto :goto_0

    :pswitch_1b
    const/16 v1, 0xb

    goto :goto_0

    :pswitch_1c
    const/16 v1, 0xa

    goto :goto_0

    :pswitch_1d
    const/16 v1, 0x8

    goto :goto_0

    :pswitch_1e
    const/16 v1, 0x9

    goto :goto_0

    :pswitch_1f
    move v1, v10

    goto :goto_0

    :pswitch_20
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_21
    move v1, v13

    goto :goto_0

    :pswitch_22
    move v1, v12

    goto :goto_0

    :pswitch_23
    move v1, v14

    goto :goto_0

    :pswitch_24
    move v1, v15

    :goto_0
    :pswitch_25
    if-eq v1, v11, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v2, 0xe3

    aput v2, v0, v15

    const/16 v2, -0x1e

    aput v2, v0, v14

    aput v14, v0, v12

    aput v1, v0, v13

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_1f
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_18
        :pswitch_17
        :pswitch_0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_1f
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_18
        :pswitch_17
        :pswitch_0
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_f
        :pswitch_e
        :pswitch_13
        :pswitch_d
        :pswitch_25
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_16
        :pswitch_15
        :pswitch_8
        :pswitch_21
        :pswitch_14
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_25
        :pswitch_c
        :pswitch_a
        :pswitch_16
        :pswitch_14
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
