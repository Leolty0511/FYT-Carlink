.class public Lk0/ql$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ql;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ql;


# direct methods
.method public constructor <init>(Lk0/ql;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ql$b;->a:Lk0/ql;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lk0/ql$b;->a:Lk0/ql;

    iget v2, v1, Lk0/ql;->i:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v1, Lk0/ql;->i:I

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
    sget v2, Lk0/nt;->a:I

    const/16 v7, 0x18

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-array v2, v7, [I

    .line 4
    fill-array-data v2, :array_0

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1
    new-array v2, v7, [I

    .line 5
    fill-array-data v2, :array_1

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_2
    new-array v2, v7, [I

    .line 6
    fill-array-data v2, :array_2

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_3
    new-array v2, v7, [I

    .line 7
    fill-array-data v2, :array_3

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_4
    new-array v2, v7, [I

    .line 8
    fill-array-data v2, :array_4

    invoke-static {v2}, Lz/k;->s([I)V

    :goto_0
    const/16 v2, 0xb

    new-array v2, v2, [I

    .line 9
    fill-array-data v2, :array_5

    invoke-static {v2}, Lz/k;->s([I)V

    .line 10
    iget-object v9, v0, Lk0/ql$b;->a:Lk0/ql;

    invoke-static {v9}, Lk0/ql;->a3(Lk0/ql;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v3, v6}, Lo1/g0;->b(II)I

    move-result v10

    iget-object v2, v0, Lk0/ql$b;->a:Lk0/ql;

    .line 11
    invoke-static {v2}, Lk0/ql;->a3(Lk0/ql;)Lo1/g0;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v6}, Lo1/g0;->b(II)I

    move-result v11

    iget-object v2, v0, Lk0/ql$b;->a:Lk0/ql;

    .line 12
    invoke-static {v2}, Lk0/ql;->a3(Lk0/ql;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Lo1/g0;->b(II)I

    move-result v12

    iget-object v2, v0, Lk0/ql$b;->a:Lk0/ql;

    .line 13
    invoke-static {v2}, Lk0/ql;->a3(Lk0/ql;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v8, v6}, Lo1/g0;->b(II)I

    move-result v13

    iget-object v2, v0, Lk0/ql$b;->a:Lk0/ql;

    .line 14
    invoke-static {v2}, Lk0/ql;->a3(Lk0/ql;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Lo1/g0;->b(II)I

    move-result v14

    iget-object v1, v0, Lk0/ql$b;->a:Lk0/ql;

    .line 15
    invoke-static {v1}, Lk0/ql;->a3(Lk0/ql;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v4, v6}, Lo1/g0;->b(II)I

    move-result v15

    iget-object v1, v0, Lk0/ql$b;->a:Lk0/ql;

    .line 16
    invoke-static {v1}, Lk0/ql;->a3(Lk0/ql;)Lo1/g0;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v6}, Lo1/g0;->b(II)I

    move-result v16

    iget-object v1, v0, Lk0/ql$b;->a:Lk0/ql;

    .line 17
    invoke-static {v1}, Lk0/ql;->a3(Lk0/ql;)Lo1/g0;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v6}, Lo1/g0;->b(II)I

    move-result v17

    .line 18
    invoke-static/range {v9 .. v17}, Lk0/ql;->b3(Lk0/ql;IIIIIIII)V

    .line 19
    iget-object v1, v0, Lk0/ql$b;->a:Lk0/ql;

    invoke-static {v1}, Lk0/ql;->a3(Lk0/ql;)Lo1/g0;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v6}, Lo1/g0;->b(II)I

    move-result v2

    iget-object v3, v0, Lk0/ql$b;->a:Lk0/ql;

    .line 20
    invoke-static {v3}, Lk0/ql;->a3(Lk0/ql;)Lo1/g0;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4, v6}, Lo1/g0;->b(II)I

    move-result v3

    .line 21
    invoke-static {v1, v2, v3}, Lk0/ql;->c3(Lk0/ql;II)V

    goto :goto_1

    .line 22
    :cond_0
    iget-object v1, v1, Lk0/ql;->k:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 23
    iget-object v1, v0, Lk0/ql$b;->a:Lk0/ql;

    iput v4, v1, Lk0/ql;->i:I

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3701c5 -> :sswitch_4
        0x3a01c5 -> :sswitch_3
        0x3b01c5 -> :sswitch_2
        0x3c01c5 -> :sswitch_2
        0x3d01c5 -> :sswitch_1
        0x4c01c4 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x72
        0x15
        0x25
        0x14
        0x1
        0x1
        0x3
        0x6b
        0xaf
        0xfb
        0xfb
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x72
        0x15
        0x25
        0x1
        0x1
        0x1
        0x3
        0x6b
        0xfb
        0xfb
        0xfb
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x72
        0x15
        0x25
        0x0
        0x0
        0x1
        0x3
        0x6b
        0xff
        0xff
        0xfb
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x72
        0x15
        0x25
        0x25
        0x1
        0x1
        0x3
        0x6b
        0x6b
        0xfb
        0xfb
        0x0
        0x0
        0x80
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x72
        0x15
        0x25
        0x24
        0x1
        0x1
        0x3
        0x6b
        0x6f
        0xfb
        0xfb
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xca
        0x8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
