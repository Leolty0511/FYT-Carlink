.class public Lk0/ah$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ah;


# direct methods
.method public constructor <init>(Lk0/ah;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ah$f;->a:Lk0/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lk0/ah$f;->a:Lk0/ah;

    iget-byte v2, v1, Lk0/ah;->u:B

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, v1, Lk0/ah;->u:B

    .line 2
    sget v2, Lu0/b;->a0:I

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x5

    if-ne v2, v3, :cond_0

    .line 3
    invoke-static {v1}, Lk0/ah;->d3(Lk0/ah;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v3, v7}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/ah;->e3(Lk0/ah;I)V

    .line 4
    iget-object v9, v0, Lk0/ah$f;->a:Lk0/ah;

    invoke-static {v9}, Lk0/ah;->d3(Lk0/ah;)Lo1/g0;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v5, v2}, Lo1/g0;->b(II)I

    move-result v10

    iget-object v1, v0, Lk0/ah$f;->a:Lk0/ah;

    .line 5
    invoke-static {v1}, Lk0/ah;->d3(Lk0/ah;)Lo1/g0;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v6, v2}, Lo1/g0;->b(II)I

    move-result v11

    iget-object v1, v0, Lk0/ah$f;->a:Lk0/ah;

    .line 6
    invoke-static {v1}, Lk0/ah;->d3(Lk0/ah;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Lo1/g0;->b(II)I

    move-result v12

    iget-object v1, v0, Lk0/ah$f;->a:Lk0/ah;

    .line 7
    invoke-static {v1}, Lk0/ah;->d3(Lk0/ah;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v8, v2}, Lo1/g0;->b(II)I

    move-result v13

    iget-object v1, v0, Lk0/ah$f;->a:Lk0/ah;

    .line 8
    invoke-static {v1}, Lk0/ah;->d3(Lk0/ah;)Lo1/g0;

    move-result-object v1

    const/4 v14, 0x6

    invoke-virtual {v1, v14, v2}, Lo1/g0;->b(II)I

    move-result v14

    iget-object v1, v0, Lk0/ah$f;->a:Lk0/ah;

    .line 9
    invoke-static {v1}, Lk0/ah;->d3(Lk0/ah;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lo1/g0;->b(II)I

    move-result v15

    iget-object v1, v0, Lk0/ah$f;->a:Lk0/ah;

    .line 10
    invoke-static {v1}, Lk0/ah;->d3(Lk0/ah;)Lo1/g0;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v7}, Lo1/g0;->b(II)I

    move-result v16

    iget-object v1, v0, Lk0/ah$f;->a:Lk0/ah;

    .line 11
    invoke-static {v1}, Lk0/ah;->d3(Lk0/ah;)Lo1/g0;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v6}, Lo1/g0;->b(II)I

    move-result v17

    iget-object v1, v0, Lk0/ah$f;->a:Lk0/ah;

    .line 12
    invoke-static {v1}, Lk0/ah;->d3(Lk0/ah;)Lo1/g0;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Lo1/g0;->b(II)I

    move-result v18

    iget-object v1, v0, Lk0/ah$f;->a:Lk0/ah;

    .line 13
    invoke-static {v1}, Lk0/ah;->d3(Lk0/ah;)Lo1/g0;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v3}, Lo1/g0;->b(II)I

    move-result v19

    .line 14
    invoke-static/range {v9 .. v19}, Lk0/ah;->f3(Lk0/ah;IIIIIIIIII)V

    .line 15
    sget v1, Lk0/nt;->a:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-array v1, v8, [I

    .line 16
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1
    new-array v1, v8, [I

    .line 17
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    .line 18
    :cond_0
    :goto_0
    iget-object v1, v0, Lk0/ah$f;->a:Lk0/ah;

    iget-byte v2, v1, Lk0/ah;->u:B

    if-lez v2, :cond_1

    new-array v1, v4, [I

    const/16 v2, 0xe3

    aput v2, v1, v7

    const/16 v2, 0x81

    aput v2, v1, v3

    aput v3, v1, v5

    .line 19
    sget v2, Lu0/b;->a0:I

    aput v2, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    .line 20
    :cond_1
    invoke-static {v1}, Lk0/ah;->c3(Lk0/ah;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 21
    iget-object v1, v0, Lk0/ah$f;->a:Lk0/ah;

    iput-byte v8, v1, Lk0/ah;->u:B

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1601c4 -> :sswitch_1
        0x7301c7 -> :sswitch_0
        0x7401c7 -> :sswitch_1
        0x8d01b7 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x2
        0x13
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x2
        0x13
        0x1
    .end array-data
.end method
