.class public Lk0/z5$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/z5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/z5;


# direct methods
.method public constructor <init>(Lk0/z5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/z5$d;->a:Lk0/z5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 4
    iget-object v2, p0, Lk0/z5$d;->a:Lk0/z5;

    invoke-static {v2}, Lk0/z5;->k3(Lk0/z5;)I

    move-result v2

    iget v3, v0, Landroid/text/format/Time;->hour:I

    const/4 v4, 0x1

    const/4 v5, 0x5

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lk0/z5$d;->a:Lk0/z5;

    invoke-static {v2}, Lk0/z5;->m3(Lk0/z5;)I

    move-result v2

    iget v3, v0, Landroid/text/format/Time;->minute:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lk0/z5$d;->a:Lk0/z5;

    invoke-static {v2}, Lk0/z5;->o3(Lk0/z5;)I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 5
    :cond_0
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0xb

    const/4 v6, 0x6

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/16 v9, -0x38

    const/16 v10, 0xe3

    const/4 v11, 0x7

    const/4 v12, 0x0

    const/4 v13, 0x4

    if-eq v2, v3, :cond_1

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_1

    new-array v2, v11, [I

    aput v10, v2, v12

    aput v9, v2, v4

    aput v13, v2, v8

    .line 6
    iget v3, v0, Landroid/text/format/Time;->minute:I

    aput v3, v2, v7

    iget v3, v0, Landroid/text/format/Time;->hour:I

    aput v3, v2, v13

    aput v1, v2, v5

    aput v12, v2, v6

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v2, v11, [I

    aput v10, v2, v12

    aput v9, v2, v4

    aput v13, v2, v8

    .line 7
    iget v3, v0, Landroid/text/format/Time;->minute:I

    aput v3, v2, v7

    iget v3, v0, Landroid/text/format/Time;->hour:I

    aput v3, v2, v13

    aput v1, v2, v5

    aput v4, v2, v6

    invoke-static {v2}, Lz/k;->s([I)V

    .line 8
    :goto_0
    iget-object v2, p0, Lk0/z5$d;->a:Lk0/z5;

    iget v3, v0, Landroid/text/format/Time;->hour:I

    invoke-static {v2, v3}, Lk0/z5;->l3(Lk0/z5;I)I

    .line 9
    iget-object v2, p0, Lk0/z5$d;->a:Lk0/z5;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    invoke-static {v2, v0}, Lk0/z5;->n3(Lk0/z5;I)I

    .line 10
    iget-object v0, p0, Lk0/z5$d;->a:Lk0/z5;

    invoke-static {v0, v1}, Lk0/z5;->p3(Lk0/z5;I)I

    .line 11
    :cond_2
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_3

    const/16 v1, 0x42

    if-eq v0, v1, :cond_3

    const/16 v1, 0x45

    if-eq v0, v1, :cond_4

    goto :goto_1

    :cond_3
    new-array v0, v5, [I

    .line 12
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_4
    new-array v0, v5, [I

    .line 13
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 14
    :goto_1
    sget v0, Lk0/nt;->c:I

    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_7

    const/16 v1, 0xd

    if-eq v0, v1, :cond_6

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_2

    :pswitch_0
    new-array v0, v5, [I

    .line 15
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_1
    new-array v0, v5, [I

    .line 16
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :pswitch_2
    new-array v0, v5, [I

    .line 17
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :pswitch_3
    new-array v0, v5, [I

    .line 18
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :pswitch_4
    new-array v0, v5, [I

    .line 19
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :pswitch_5
    new-array v0, v5, [I

    .line 20
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :pswitch_6
    new-array v0, v5, [I

    .line 21
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :pswitch_7
    new-array v0, v5, [I

    .line 22
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :pswitch_8
    new-array v0, v5, [I

    .line 23
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :pswitch_9
    new-array v0, v5, [I

    .line 24
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_5
    :pswitch_a
    new-array v0, v5, [I

    .line 25
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_6
    new-array v0, v5, [I

    .line 26
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    :cond_7
    :pswitch_b
    new-array v0, v5, [I

    .line 27
    fill-array-data v0, :array_e

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_a
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_b
        :pswitch_b
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_a
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e
        :pswitch_a
        :pswitch_a
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x47
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x7d
        0x2
        0x2f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x7d
        0x2
        0x2f
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x12
        0x2
        0x59
        0x6
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x12
        0x2
        0x59
        0x5
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x12
        0x2
        0x59
        0x4
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x12
        0x2
        0x59
        0x81
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x12
        0x2
        0x59
        0x14
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x12
        0x2
        0x59
        0x12
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x12
        0x2
        0x59
        0x80
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x12
        0x2
        0x59
        0x3
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x12
        0x2
        0x59
        0x2
    .end array-data

    :array_b
    .array-data 4
        0xe3
        -0x12
        0x2
        0x59
        0x1
    .end array-data

    :array_c
    .array-data 4
        0xe3
        -0x12
        0x2
        0x59
        0x10
    .end array-data

    :array_d
    .array-data 4
        0xe3
        -0x12
        0x2
        0x59
        0x15
    .end array-data

    :array_e
    .array-data 4
        0xe3
        -0x12
        0x2
        0x59
        0x13
    .end array-data
.end method
