.class public Lmodule/canbus/g0$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/g0;


# direct methods
.method public constructor <init>(Lmodule/canbus/g0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/g0$f;->a:Lmodule/canbus/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lmodule/canbus/g0$f;->a:Lmodule/canbus/g0;

    iget-byte v1, v0, Lmodule/canbus/g0;->t:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lmodule/canbus/g0;->t:B

    if-lez v1, :cond_5

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v3, 0x0

    const/16 v4, 0xe3

    aput v4, v1, v3

    const/16 v3, 0x81

    aput v3, v1, v2

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 2
    sget v4, Lu0/b;->a0:I

    const/4 v5, 0x3

    aput v4, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    const/4 v4, 0x5

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    new-array v1, v4, [I

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 5
    sget v1, Lk0/nt;->c:I

    const/16 v6, 0xd

    if-eq v1, v6, :cond_1

    const/16 v7, 0x12

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    new-array v0, v4, [I

    .line 6
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 7
    :pswitch_1
    iget-object v0, p0, Lmodule/canbus/g0$f;->a:Lmodule/canbus/g0;

    invoke-static {v0, v5, v4, v3, v3}, Lmodule/canbus/g0;->c3(Lmodule/canbus/g0;IIII)V

    goto :goto_0

    .line 8
    :pswitch_2
    iget-object v0, p0, Lmodule/canbus/g0$f;->a:Lmodule/canbus/g0;

    invoke-static {v0, v5, v4, v2, v3}, Lmodule/canbus/g0;->c3(Lmodule/canbus/g0;IIII)V

    goto :goto_0

    .line 9
    :pswitch_3
    iget-object v1, p0, Lmodule/canbus/g0$f;->a:Lmodule/canbus/g0;

    invoke-static {v1, v5, v0, v2, v2}, Lmodule/canbus/g0;->c3(Lmodule/canbus/g0;IIII)V

    goto :goto_0

    .line 10
    :pswitch_4
    iget-object v1, p0, Lmodule/canbus/g0$f;->a:Lmodule/canbus/g0;

    invoke-static {v1, v5, v0, v3, v3}, Lmodule/canbus/g0;->c3(Lmodule/canbus/g0;IIII)V

    goto :goto_0

    .line 11
    :pswitch_5
    iget-object v1, p0, Lmodule/canbus/g0$f;->a:Lmodule/canbus/g0;

    invoke-static {v1, v5, v0, v2, v2}, Lmodule/canbus/g0;->c3(Lmodule/canbus/g0;IIII)V

    goto :goto_0

    .line 12
    :pswitch_6
    iget-object v0, p0, Lmodule/canbus/g0$f;->a:Lmodule/canbus/g0;

    const/16 v1, 0x13

    invoke-static {v0, v5, v3, v1, v3}, Lmodule/canbus/g0;->c3(Lmodule/canbus/g0;IIII)V

    goto :goto_0

    .line 13
    :pswitch_7
    iget-object v0, p0, Lmodule/canbus/g0$f;->a:Lmodule/canbus/g0;

    invoke-static {v0, v5, v3, v7, v3}, Lmodule/canbus/g0;->c3(Lmodule/canbus/g0;IIII)V

    goto :goto_0

    .line 14
    :pswitch_8
    iget-object v0, p0, Lmodule/canbus/g0$f;->a:Lmodule/canbus/g0;

    invoke-static {v0, v5, v3, v7, v3}, Lmodule/canbus/g0;->c3(Lmodule/canbus/g0;IIII)V

    goto :goto_0

    .line 15
    :pswitch_9
    iget-object v0, p0, Lmodule/canbus/g0$f;->a:Lmodule/canbus/g0;

    const/16 v1, 0x11

    invoke-static {v0, v5, v3, v1, v3}, Lmodule/canbus/g0;->c3(Lmodule/canbus/g0;IIII)V

    goto :goto_0

    :cond_1
    new-array v0, v4, [I

    .line 16
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    .line 17
    :goto_0
    sget v0, Lk0/nt;->c:I

    packed-switch v0, :pswitch_data_2

    goto :goto_1

    .line 18
    :pswitch_a
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xb

    const/4 v2, 0x6

    if-eq v0, v1, :cond_3

    if-eq v0, v6, :cond_2

    new-array v0, v2, [I

    .line 19
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    new-array v0, v2, [I

    .line 20
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3
    new-array v0, v2, [I

    .line 21
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_4
    new-array v0, v4, [I

    .line 22
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 23
    :cond_5
    invoke-static {v0}, Lmodule/canbus/g0;->b3(Lmodule/canbus/g0;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 24
    iget-object v0, p0, Lmodule/canbus/g0$f;->a:Lmodule/canbus/g0;

    const/16 v1, 0x10

    iput-byte v1, v0, Lmodule/canbus/g0;->t:B

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x84
        0x2
        0x8
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x82
        0x2
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x82
        0x2
        0x2
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x8f
        0x3
        0x2
        0x4
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x8f
        0x3
        0x2
        0x3
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x8f
        0x3
        0x2
        0x1
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x84
        0x2
        0x8
        0x1
    .end array-data
.end method
