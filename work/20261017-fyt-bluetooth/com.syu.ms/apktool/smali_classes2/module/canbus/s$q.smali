.class public Lmodule/canbus/s$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/s;


# direct methods
.method public constructor <init>(Lmodule/canbus/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/s$q;->a:Lmodule/canbus/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v2, 0x21

    if-eq v0, v2, :cond_1

    .line 2
    iget-object v0, p0, Lmodule/canbus/s$q;->a:Lmodule/canbus/s;

    iget v0, v0, Lmodule/canbus/s;->y:I

    sget v2, Lu0/b;->D:I

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lmodule/canbus/s$q;->a:Lmodule/canbus/s;

    sget v1, Lu0/b;->D:I

    iput v1, v0, Lmodule/canbus/s;->y:I

    .line 6
    :cond_1
    invoke-static {}, Ll0/c0;->e()V

    .line 7
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/16 v1, 0x22

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v0, v2, :cond_9

    .line 8
    sget v0, Lk0/nt;->c:I

    const/16 v4, 0xc

    if-eq v0, v4, :cond_8

    const/16 v4, 0xe

    if-eq v0, v4, :cond_7

    if-eq v0, v1, :cond_6

    const/16 v1, 0x4b

    if-eq v0, v1, :cond_5

    const/16 v1, 0x53

    if-eq v0, v1, :cond_4

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array v0, v3, [I

    .line 9
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    new-array v0, v3, [I

    .line 10
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 11
    :pswitch_2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_11

    new-array v0, v3, [I

    .line 12
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 13
    :pswitch_3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_11

    new-array v0, v3, [I

    .line 14
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_4
    new-array v0, v3, [I

    .line 15
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_2
    new-array v0, v3, [I

    .line 16
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_3
    new-array v0, v3, [I

    .line 17
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_4
    new-array v0, v3, [I

    .line 18
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_5
    new-array v0, v3, [I

    .line 19
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_6
    new-array v0, v3, [I

    .line 20
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_7
    new-array v0, v3, [I

    .line 21
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_8
    new-array v0, v3, [I

    .line 22
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 23
    :cond_9
    sget v0, Lk0/nt;->c:I

    const/16 v2, 0x16

    if-eq v0, v2, :cond_10

    if-eq v0, v1, :cond_f

    const/16 v1, 0x29

    if-eq v0, v1, :cond_e

    const/16 v1, 0x57

    if-eq v0, v1, :cond_d

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_c

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_b

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_a

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_a

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    goto/16 :goto_0

    :pswitch_5
    new-array v0, v3, [I

    .line 24
    fill-array-data v0, :array_e

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_6
    new-array v0, v3, [I

    .line 25
    fill-array-data v0, :array_f

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_7
    new-array v0, v3, [I

    .line 26
    fill-array-data v0, :array_10

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_8
    new-array v0, v3, [I

    .line 27
    fill-array-data v0, :array_11

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_9
    new-array v0, v3, [I

    .line 28
    fill-array-data v0, :array_12

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_a
    new-array v0, v3, [I

    .line 29
    fill-array-data v0, :array_13

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_b
    new-array v0, v3, [I

    .line 30
    fill-array-data v0, :array_14

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_c
    new-array v0, v3, [I

    .line 31
    fill-array-data v0, :array_15

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_d
    new-array v0, v3, [I

    .line 32
    fill-array-data v0, :array_16

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_e
    new-array v0, v3, [I

    .line 33
    fill-array-data v0, :array_17

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_f
    new-array v0, v3, [I

    .line 34
    fill-array-data v0, :array_18

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_10
    new-array v0, v3, [I

    .line 35
    fill-array-data v0, :array_19

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_11
    new-array v0, v3, [I

    .line 36
    fill-array-data v0, :array_1a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_12
    new-array v0, v3, [I

    .line 37
    fill-array-data v0, :array_1b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_13
    new-array v0, v3, [I

    .line 38
    fill-array-data v0, :array_1c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_14
    new-array v0, v3, [I

    .line 39
    fill-array-data v0, :array_1d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_15
    new-array v0, v3, [I

    .line 40
    fill-array-data v0, :array_1e

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_16
    new-array v0, v3, [I

    .line 41
    fill-array-data v0, :array_1f

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_17
    new-array v0, v3, [I

    .line 42
    fill-array-data v0, :array_20

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_18
    new-array v0, v3, [I

    .line 43
    fill-array-data v0, :array_21

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_19
    new-array v0, v3, [I

    .line 44
    fill-array-data v0, :array_22

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1a
    new-array v0, v3, [I

    .line 45
    fill-array-data v0, :array_23

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1b
    new-array v0, v3, [I

    .line 46
    fill-array-data v0, :array_24

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1c
    new-array v0, v3, [I

    .line 47
    fill-array-data v0, :array_25

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_a
    new-array v0, v3, [I

    .line 48
    fill-array-data v0, :array_26

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_b
    new-array v0, v3, [I

    .line 49
    fill-array-data v0, :array_27

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_c
    new-array v0, v3, [I

    .line 50
    fill-array-data v0, :array_28

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_d
    new-array v0, v3, [I

    .line 51
    fill-array-data v0, :array_29

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_e
    new-array v0, v3, [I

    .line 52
    fill-array-data v0, :array_2a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_f
    new-array v0, v3, [I

    .line 53
    fill-array-data v0, :array_2b

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_10
    new-array v0, v3, [I

    .line 54
    fill-array-data v0, :array_2c

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_11
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5a
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_15
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x67
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_13
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x72
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
        :pswitch_c
        :pswitch_c
        :pswitch_7
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x95
        :pswitch_1a
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xc0
        0x2
        0x5
        0x40
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc3
        0x6
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x1e
        0x1
        0xc
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x1e
        0x1
        0xb
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x1e
        0x1
        0xa
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x9
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x8
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x2
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x1
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x7
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x6
    .end array-data

    :array_b
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x5
    .end array-data

    :array_c
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x4
    .end array-data

    :array_d
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x3
    .end array-data

    :array_e
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x8c
    .end array-data

    :array_f
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x8b
    .end array-data

    :array_10
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x92
    .end array-data

    :array_11
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x90
    .end array-data

    :array_12
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x89
    .end array-data

    :array_13
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x88
    .end array-data

    :array_14
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x87
    .end array-data

    :array_15
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x86
    .end array-data

    :array_16
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x85
    .end array-data

    :array_17
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x84
    .end array-data

    :array_18
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x83
    .end array-data

    :array_19
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x82
    .end array-data

    :array_1a
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x81
    .end array-data

    :array_1b
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x80
    .end array-data

    :array_1c
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x83
    .end array-data

    :array_1d
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x82
    .end array-data

    :array_1e
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x91
    .end array-data

    :array_1f
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x8a
    .end array-data

    :array_20
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x81
    .end array-data

    :array_21
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x80
    .end array-data

    :array_22
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x88
    .end array-data

    :array_23
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x89
    .end array-data

    :array_24
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x86
    .end array-data

    :array_25
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x87
    .end array-data

    :array_26
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x8a
    .end array-data

    :array_27
    .array-data 4
        0xe3
        -0x1e
        0x1
        0xb1
    .end array-data

    :array_28
    .array-data 4
        0xe3
        -0x1e
        0x1
        0xb0
    .end array-data

    :array_29
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x8b
    .end array-data

    :array_2a
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x84
    .end array-data

    :array_2b
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x85
    .end array-data

    :array_2c
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x90
    .end array-data
.end method
