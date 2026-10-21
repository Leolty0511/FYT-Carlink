.class public Lk0/zr$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/zr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/zr;


# direct methods
.method public constructor <init>(Lk0/zr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/zr$d;->a:Lk0/zr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lk0/zr$d;->a:Lk0/zr;

    iget v2, v1, Lk0/zr;->u:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v1, Lk0/zr;->u:I

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
    sget v2, Lu0/b;->a0:I

    if-ne v2, v3, :cond_1

    new-array v2, v1, [I

    .line 4
    fill-array-data v2, :array_0

    invoke-static {v2}, Lz/k;->s([I)V

    .line 5
    iget-object v9, v0, Lk0/zr$d;->a:Lk0/zr;

    const/4 v10, 0x0

    invoke-static {v9}, Lk0/zr;->b3(Lk0/zr;)Lo1/g0;

    move-result-object v2

    const/16 v7, 0x13

    invoke-virtual {v2, v3, v7}, Lo1/g0;->b(II)I

    move-result v11

    iget-object v2, v0, Lk0/zr$d;->a:Lk0/zr;

    .line 6
    invoke-static {v2}, Lk0/zr;->b3(Lk0/zr;)Lo1/g0;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v5, v3}, Lo1/g0;->b(II)I

    move-result v12

    iget-object v2, v0, Lk0/zr$d;->a:Lk0/zr;

    .line 7
    invoke-static {v2}, Lk0/zr;->b3(Lk0/zr;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v8, v3}, Lo1/g0;->b(II)I

    move-result v13

    iget-object v2, v0, Lk0/zr$d;->a:Lk0/zr;

    .line 8
    invoke-static {v2}, Lk0/zr;->b3(Lk0/zr;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Lo1/g0;->b(II)I

    move-result v14

    iget-object v1, v0, Lk0/zr$d;->a:Lk0/zr;

    .line 9
    invoke-static {v1}, Lk0/zr;->b3(Lk0/zr;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lo1/g0;->b(II)I

    move-result v15

    iget-object v1, v0, Lk0/zr$d;->a:Lk0/zr;

    .line 10
    invoke-static {v1}, Lk0/zr;->b3(Lk0/zr;)Lo1/g0;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v3}, Lo1/g0;->b(II)I

    move-result v16

    iget-object v1, v0, Lk0/zr$d;->a:Lk0/zr;

    .line 11
    invoke-static {v1}, Lk0/zr;->b3(Lk0/zr;)Lo1/g0;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v6}, Lo1/g0;->b(II)I

    move-result v1

    shl-int/2addr v1, v2

    and-int/lit16 v1, v1, 0x80

    iget-object v2, v0, Lk0/zr$d;->a:Lk0/zr;

    invoke-static {v2}, Lk0/zr;->b3(Lk0/zr;)Lo1/g0;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v6}, Lo1/g0;->b(II)I

    move-result v2

    and-int/lit8 v2, v2, 0xf

    or-int v17, v1, v2

    .line 12
    invoke-static/range {v9 .. v17}, Lk0/zr;->c3(Lk0/zr;ZIIIIIII)V

    .line 13
    sget v1, Lk0/nt;->a:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-array v1, v4, [I

    .line 14
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1
    new-array v1, v4, [I

    .line 15
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, v1, Lk0/zr;->w:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 17
    iget-object v1, v0, Lk0/zr$d;->a:Lk0/zr;

    iput v4, v1, Lk0/zr;->u:I

    :cond_1
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x6101c7 -> :sswitch_1
        0x6201c7 -> :sswitch_0
        0x9d01c8 -> :sswitch_1
        0x9e01c8 -> :sswitch_0
        0x9f01c8 -> :sswitch_0
        0xa001c8 -> :sswitch_0
        0xa101c8 -> :sswitch_0
        0xb301c8 -> :sswitch_0
        0xb401c8 -> :sswitch_0
        0xb501c8 -> :sswitch_0
        0xb601c8 -> :sswitch_0
        0xe301c7 -> :sswitch_1
        0xe401c7 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0xff
        0x1
        0x38
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2a
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc6
        0x2
        0x2a
        0x0
    .end array-data
.end method
