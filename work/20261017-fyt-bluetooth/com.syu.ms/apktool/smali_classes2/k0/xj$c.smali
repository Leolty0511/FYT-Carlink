.class public Lk0/xj$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/xj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/xj;


# direct methods
.method public constructor <init>(Lk0/xj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/xj$c;->a:Lk0/xj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/xj$c;->a:Lk0/xj;

    iget v1, v0, Lk0/xj;->k:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/xj;->k:I

    const/4 v3, 0x5

    if-lez v1, :cond_6

    .line 2
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0xea

    const/16 v4, 0xe9

    if-eq v0, v4, :cond_2

    if-eq v0, v1, :cond_1

    const/16 v5, 0xef

    if-eq v0, v5, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array v0, v3, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    new-array v0, v3, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_3
    new-array v0, v3, [I

    .line 6
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_4
    new-array v0, v3, [I

    .line 7
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    new-array v0, v3, [I

    .line 8
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array v0, v3, [I

    .line 9
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_7
    new-array v0, v3, [I

    .line 10
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_8
    new-array v0, v3, [I

    .line 11
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_9
    new-array v0, v3, [I

    .line 12
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_a
    new-array v0, v3, [I

    .line 13
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v0, v3, [I

    .line 14
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v3, [I

    .line 15
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array v0, v3, [I

    .line 16
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    .line 17
    :goto_0
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_7

    .line 18
    sget v0, Lk0/nt;->c:I

    const/16 v5, 0xb

    if-eq v0, v5, :cond_3

    const/16 v5, 0xc

    if-eq v0, v5, :cond_3

    const/16 v5, 0xe

    if-eq v0, v5, :cond_3

    const/16 v5, 0xf

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_3

    if-eq v0, v1, :cond_3

    goto/16 :goto_1

    .line 19
    :cond_3
    iget-object v0, p0, Lk0/xj$c;->a:Lk0/xj;

    invoke-static {v0}, Lk0/xj;->l3(Lk0/xj;)Lo1/g0;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/xj;->m3(Lk0/xj;I)V

    .line 20
    iget-object v0, p0, Lk0/xj$c;->a:Lk0/xj;

    invoke-static {v0}, Lk0/xj;->l3(Lk0/xj;)Lo1/g0;

    move-result-object v1

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v2}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/xj;->p3(Lk0/xj;I)V

    .line 21
    iget-object v0, p0, Lk0/xj$c;->a:Lk0/xj;

    invoke-static {v0}, Lk0/xj;->l3(Lk0/xj;)Lo1/g0;

    move-result-object v1

    const/4 v5, 0x3

    const/16 v6, 0x3e8

    invoke-virtual {v1, v5, v6}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/xj;->q3(Lk0/xj;I)V

    .line 22
    iget-object v0, p0, Lk0/xj$c;->a:Lk0/xj;

    invoke-static {v0}, Lk0/xj;->l3(Lk0/xj;)Lo1/g0;

    move-result-object v1

    const/4 v5, 0x4

    invoke-virtual {v1, v5, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/xj;->r3(Lk0/xj;I)V

    .line 23
    iget-object v0, p0, Lk0/xj$c;->a:Lk0/xj;

    invoke-static {v0}, Lk0/xj;->l3(Lk0/xj;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v3, v6}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/xj;->s3(Lk0/xj;I)V

    .line 24
    iget-object v0, p0, Lk0/xj$c;->a:Lk0/xj;

    invoke-static {v0}, Lk0/xj;->l3(Lk0/xj;)Lo1/g0;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/xj;->t3(Lk0/xj;I)V

    .line 25
    iget-object v0, p0, Lk0/xj$c;->a:Lk0/xj;

    invoke-static {v0}, Lk0/xj;->l3(Lk0/xj;)Lo1/g0;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v6}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/xj;->u3(Lk0/xj;I)V

    .line 26
    invoke-static {}, Lk0/xj;->v3()I

    move-result v0

    const/16 v1, 0xab

    if-ne v0, v2, :cond_5

    .line 27
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 29
    iget v3, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v3, v3, -0x7d0

    int-to-byte v3, v3

    .line 30
    iget v5, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v5, v2

    int-to-byte v5, v5

    .line 31
    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v0, v0

    shl-int/lit8 v3, v3, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v3, v6

    shl-int/lit8 v5, v5, 0x8

    const v6, 0xff00

    and-int/2addr v5, v6

    or-int/2addr v3, v5

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v3

    .line 32
    iget-object v3, p0, Lk0/xj$c;->a:Lk0/xj;

    invoke-static {}, Lk0/xj;->w3()I

    move-result v5

    invoke-static {}, Lk0/xj;->n3()I

    move-result v6

    invoke-static {v3, v5, v0, v6}, Lk0/xj;->o3(Lk0/xj;III)Z

    move-result v0

    if-eqz v0, :cond_4

    new-array v0, v2, [I

    aput v2, v0, v4

    .line 33
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    new-array v0, v2, [I

    aput v4, v0, v4

    .line 34
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array v0, v2, [I

    aput v4, v0, v4

    .line 35
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    .line 36
    :cond_6
    iget-object v0, v0, Lk0/xj;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 37
    iget-object v0, p0, Lk0/xj$c;->a:Lk0/xj;

    iput v3, v0, Lk0/xj;->k:I

    :cond_7
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
        0xe3
        0x2
        0x24
        0xd
        0xa
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0xc
        0xa
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0xb
        0xa
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0x24
        0xa
        0xa
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        0x24
        0x9
        0xa
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        0x24
        0x8
        0xa
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x2
        0x24
        0x7
        0xa
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x2
        0x24
        0x6
        0xa
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x2
        0x24
        0x5
        0xa
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x2
        0x24
        0x4
        0xa
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x2
        0x24
        0x10
        0xa
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x2
        0x24
        0x3
        0xa
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0x2
        0x24
        0xf
        0xa
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x2
        0x24
        0xe
        0xa
    .end array-data
.end method
