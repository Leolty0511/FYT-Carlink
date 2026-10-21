.class public Lk0/lq$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/lq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/lq;


# direct methods
.method public constructor <init>(Lk0/lq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/lq$e;->a:Lk0/lq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lk0/lq$e;->a:Lk0/lq;

    iget v2, v1, Lk0/lq;->F:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v1, Lk0/lq;->F:I

    const/4 v4, 0x5

    if-lez v2, :cond_0

    const/4 v1, 0x4

    new-array v2, v1, [I

    const/16 v5, 0xe3

    const/4 v6, 0x0

    aput v5, v2, v6

    const/16 v5, 0x81

    aput v5, v2, v3

    const/4 v5, 0x2

    aput v3, v2, v5

    .line 2
    sget v7, Lu0/b;->a0:I

    const/4 v8, 0x3

    aput v7, v2, v8

    invoke-static {v2}, Lz/k;->s([I)V

    .line 3
    iget-object v9, v0, Lk0/lq$e;->a:Lk0/lq;

    invoke-static {v9}, Lk0/lq;->m3(Lk0/lq;)Lo1/g0;

    move-result-object v2

    const/4 v7, 0x6

    invoke-virtual {v2, v3, v7}, Lo1/g0;->b(II)I

    move-result v10

    iget-object v2, v0, Lk0/lq$e;->a:Lk0/lq;

    .line 4
    invoke-static {v2}, Lk0/lq;->m3(Lk0/lq;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v5, v7}, Lo1/g0;->b(II)I

    move-result v11

    iget-object v2, v0, Lk0/lq$e;->a:Lk0/lq;

    .line 5
    invoke-static {v2}, Lk0/lq;->m3(Lk0/lq;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v8, v7}, Lo1/g0;->b(II)I

    move-result v12

    iget-object v2, v0, Lk0/lq$e;->a:Lk0/lq;

    .line 6
    invoke-static {v2}, Lk0/lq;->m3(Lk0/lq;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v1, v7}, Lo1/g0;->b(II)I

    move-result v13

    iget-object v1, v0, Lk0/lq$e;->a:Lk0/lq;

    .line 7
    invoke-static {v1}, Lk0/lq;->m3(Lk0/lq;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v4, v7}, Lo1/g0;->b(II)I

    move-result v14

    iget-object v1, v0, Lk0/lq$e;->a:Lk0/lq;

    .line 8
    invoke-static {v1}, Lk0/lq;->m3(Lk0/lq;)Lo1/g0;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v7, v2}, Lo1/g0;->b(II)I

    move-result v15

    iget-object v1, v0, Lk0/lq$e;->a:Lk0/lq;

    .line 9
    invoke-static {v1}, Lk0/lq;->m3(Lk0/lq;)Lo1/g0;

    move-result-object v1

    const/4 v5, 0x7

    invoke-virtual {v1, v5, v6}, Lo1/g0;->b(II)I

    move-result v16

    iget-object v1, v0, Lk0/lq$e;->a:Lk0/lq;

    .line 10
    invoke-static {v1}, Lk0/lq;->m3(Lk0/lq;)Lo1/g0;

    move-result-object v1

    const/16 v5, 0x8

    invoke-virtual {v1, v5, v6}, Lo1/g0;->b(II)I

    move-result v17

    iget-object v1, v0, Lk0/lq$e;->a:Lk0/lq;

    .line 11
    invoke-static {v1}, Lk0/lq;->m3(Lk0/lq;)Lo1/g0;

    move-result-object v1

    const/16 v5, 0x9

    invoke-virtual {v1, v5, v6}, Lo1/g0;->b(II)I

    move-result v18

    iget-object v1, v0, Lk0/lq$e;->a:Lk0/lq;

    .line 12
    invoke-static {v1}, Lk0/lq;->m3(Lk0/lq;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v6}, Lo1/g0;->b(II)I

    move-result v19

    .line 13
    invoke-static/range {v9 .. v19}, Lk0/lq;->n3(Lk0/lq;IIIIIIIIII)V

    .line 14
    sget v1, Lu0/b;->a0:I

    if-ne v1, v3, :cond_1

    .line 15
    sget v1, Lk0/nt;->a:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-array v1, v4, [I

    .line 16
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1
    new-array v1, v4, [I

    .line 17
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_2
    new-array v1, v4, [I

    .line 18
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_3
    new-array v1, v4, [I

    .line 19
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, v1, Lk0/lq;->H:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 21
    iget-object v1, v0, Lk0/lq$e;->a:Lk0/lq;

    iput v4, v1, Lk0/lq;->F:I

    :cond_1
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa901c6 -> :sswitch_3
        0xaa01c6 -> :sswitch_2
        0xab01c6 -> :sswitch_1
        0xac01c6 -> :sswitch_0
        0xfb01c5 -> :sswitch_1
        0xfc01c5 -> :sswitch_0
        0xfd01c5 -> :sswitch_3
        0xfe01c5 -> :sswitch_2
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x84
        0x2
        0xb
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x84
        0x2
        0xb
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x84
        0x2
        0xb
        0x3
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x84
        0x2
        0xb
        0x2
    .end array-data
.end method
