.class public Lk0/rc$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/rc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/rc;


# direct methods
.method public constructor <init>(Lk0/rc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/rc$r;->a:Lk0/rc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lk0/rc$r;->a:Lk0/rc;

    iget-byte v2, v1, Lk0/rc;->t:B

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, v1, Lk0/rc;->t:B

    if-lez v2, :cond_5

    const/4 v1, 0x4

    new-array v2, v1, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v2, v4

    const/16 v4, 0x81

    aput v4, v2, v3

    const/4 v4, 0x2

    aput v3, v2, v4

    const/4 v5, 0x3

    .line 2
    sget v6, Lu0/b;->a0:I

    aput v6, v2, v5

    invoke-static {v2}, Lz/k;->s([I)V

    .line 3
    sget v2, Lu0/b;->a0:I

    const/16 v6, 0x57

    const/16 v7, 0xd

    const/16 v8, 0xc

    const/16 v9, 0x6b

    const/16 v10, 0x68

    const/16 v11, 0x65

    const/16 v12, 0x55

    const/16 v13, 0x40

    const/16 v14, 0x12

    const/16 v15, 0xf

    const/4 v4, 0x5

    if-ne v2, v3, :cond_3

    const/4 v2, 0x7

    new-array v2, v2, [I

    .line 4
    fill-array-data v2, :array_0

    invoke-static {v2}, Lz/k;->s([I)V

    .line 5
    sget v2, Lk0/nt;->c:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-array v2, v4, [I

    .line 6
    fill-array-data v2, :array_1

    invoke-static {v2}, Lz/k;->s([I)V

    new-array v2, v4, [I

    .line 7
    fill-array-data v2, :array_2

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_2
    new-array v2, v4, [I

    .line 8
    fill-array-data v2, :array_3

    invoke-static {v2}, Lz/k;->s([I)V

    .line 9
    sget v2, Lu0/b;->D:I

    const/16 v5, 0xb

    if-eq v2, v5, :cond_0

    new-array v2, v1, [I

    .line 10
    fill-array-data v2, :array_4

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_3
    new-array v2, v4, [I

    .line 11
    fill-array-data v2, :array_5

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_4
    new-array v2, v4, [I

    .line 12
    fill-array-data v2, :array_6

    invoke-static {v2}, Lz/k;->s([I)V

    new-array v2, v4, [I

    .line 13
    fill-array-data v2, :array_7

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    new-array v2, v4, [I

    .line 14
    fill-array-data v2, :array_8

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array v2, v4, [I

    .line 15
    fill-array-data v2, :array_9

    invoke-static {v2}, Lz/k;->s([I)V

    .line 16
    :cond_0
    :goto_0
    sget v2, Lk0/nt;->c:I

    if-eq v2, v3, :cond_1

    if-eq v2, v1, :cond_1

    if-eq v2, v15, :cond_1

    if-eq v2, v14, :cond_1

    if-eq v2, v13, :cond_1

    if-eq v2, v12, :cond_1

    if-eq v2, v11, :cond_1

    if-eq v2, v10, :cond_1

    if-eq v2, v9, :cond_1

    if-eq v2, v8, :cond_1

    if-eq v2, v7, :cond_1

    if-eq v2, v6, :cond_1

    const/16 v1, 0x58

    if-eq v2, v1, :cond_1

    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 17
    :cond_1
    :pswitch_7
    iget-object v1, v0, Lk0/rc$r;->a:Lk0/rc;

    iget-byte v1, v1, Lk0/rc;->t:B

    const/4 v2, 0x2

    if-gt v1, v2, :cond_2

    new-array v1, v4, [I

    .line 18
    fill-array-data v1, :array_a

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    new-array v1, v4, [I

    .line 19
    fill-array-data v1, :array_b

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    .line 20
    :cond_3
    sget v2, Lk0/nt;->c:I

    if-eq v2, v3, :cond_4

    if-eq v2, v1, :cond_4

    if-eq v2, v15, :cond_4

    if-eq v2, v14, :cond_4

    if-eq v2, v13, :cond_4

    if-eq v2, v12, :cond_4

    if-eq v2, v11, :cond_4

    if-eq v2, v10, :cond_4

    if-eq v2, v9, :cond_4

    if-eq v2, v8, :cond_4

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_4

    const/16 v1, 0x58

    if-eq v2, v1, :cond_4

    packed-switch v2, :pswitch_data_2

    goto :goto_1

    :cond_4
    :pswitch_8
    new-array v1, v4, [I

    .line 21
    fill-array-data v1, :array_c

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    .line 22
    :cond_5
    invoke-static {v1}, Lk0/rc;->b3(Lk0/rc;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 23
    iget-object v1, v0, Lk0/rc$r;->a:Lk0/rc;

    const/16 v2, 0x10

    iput-byte v2, v1, Lk0/rc;->t:B

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5a
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5a
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x90
        0x4
        0x30
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x2
        0x45
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x90
        0x2
        0x24
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x90
        0x2
        0x17
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xcf
        0x1
        0x4
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x90
        0x2
        0x17
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x90
        0x2
        0x17
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x90
        0x2
        0x4f
        0x0
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0xc6
        0x2
        0x45
        0x1
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x90
        0x2
        0x24
        0x0
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x84
        0x2
        0x2
        0x1e
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x84
        0x2
        0x2
        0x0
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0x84
        0x2
        0x2
        0x0
    .end array-data
.end method
