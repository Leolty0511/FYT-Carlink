.class public Lmodule/canbus/y$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/y;


# direct methods
.method public constructor <init>(Lmodule/canbus/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/y$c;->a:Lmodule/canbus/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lmodule/canbus/y$c;->a:Lmodule/canbus/y;

    iget-byte v2, v1, Lmodule/canbus/y;->t:B

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, v1, Lmodule/canbus/y;->t:B

    if-lez v2, :cond_1

    const/4 v1, 0x4

    new-array v2, v1, [I

    const/16 v4, 0xe3

    const/4 v5, 0x0

    aput v4, v2, v5

    const/16 v4, 0x81

    aput v4, v2, v3

    const/4 v4, 0x2

    aput v3, v2, v4

    .line 2
    sget v6, Lu0/b;->a0:I

    const/4 v7, 0x3

    aput v6, v2, v7

    invoke-static {v2}, Lz/k;->s([I)V

    .line 3
    sget v2, Lu0/b;->a0:I

    if-ne v2, v3, :cond_2

    new-array v2, v1, [I

    .line 4
    fill-array-data v2, :array_0

    invoke-static {v2}, Lz/k;->s([I)V

    new-array v2, v1, [I

    .line 5
    fill-array-data v2, :array_1

    invoke-static {v2}, Lz/k;->s([I)V

    .line 6
    iget-object v2, v0, Lmodule/canbus/y$c;->a:Lmodule/canbus/y;

    invoke-static {v2}, Lmodule/canbus/y;->w3(Lmodule/canbus/y;)Lo1/g0;

    move-result-object v6

    invoke-virtual {v6, v3, v3}, Lo1/g0;->b(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lmodule/canbus/y;->d3(I)V

    .line 7
    iget-object v2, v0, Lmodule/canbus/y$c;->a:Lmodule/canbus/y;

    invoke-static {v2}, Lmodule/canbus/y;->w3(Lmodule/canbus/y;)Lo1/g0;

    move-result-object v3

    const/16 v6, 0xa

    invoke-virtual {v3, v6, v5}, Lo1/g0;->b(II)I

    move-result v3

    invoke-static {v2, v3}, Lmodule/canbus/y;->x3(Lmodule/canbus/y;I)V

    .line 8
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0x8

    const/4 v8, 0x7

    if-eq v2, v4, :cond_0

    if-eq v2, v6, :cond_0

    const/16 v9, 0xd

    if-eq v2, v9, :cond_0

    const/16 v9, 0x19

    if-eq v2, v9, :cond_0

    const/16 v9, 0x1c

    if-eq v2, v9, :cond_0

    const/16 v9, 0x27

    if-eq v2, v9, :cond_0

    const/16 v9, 0x2a

    if-eq v2, v9, :cond_0

    if-eq v2, v8, :cond_0

    if-eq v2, v3, :cond_0

    const/16 v9, 0x10

    if-eq v2, v9, :cond_0

    const/16 v9, 0x11

    if-eq v2, v9, :cond_0

    const/16 v9, 0x15

    if-eq v2, v9, :cond_0

    const/16 v9, 0x16

    if-eq v2, v9, :cond_0

    const/16 v9, 0x1e

    if-eq v2, v9, :cond_0

    const/16 v9, 0x1f

    if-eq v2, v9, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, v0, Lmodule/canbus/y$c;->a:Lmodule/canbus/y;

    invoke-static {v2}, Lmodule/canbus/y;->w3(Lmodule/canbus/y;)Lo1/g0;

    move-result-object v9

    const/16 v10, 0x9

    const/16 v11, 0x12

    invoke-virtual {v9, v10, v11}, Lo1/g0;->b(II)I

    move-result v9

    iget-object v10, v0, Lmodule/canbus/y$c;->a:Lmodule/canbus/y;

    invoke-static {v10}, Lmodule/canbus/y;->w3(Lmodule/canbus/y;)Lo1/g0;

    move-result-object v10

    invoke-virtual {v10, v3, v5}, Lo1/g0;->b(II)I

    move-result v3

    invoke-static {v2, v9, v3}, Lmodule/canbus/y;->y3(Lmodule/canbus/y;II)V

    .line 10
    iget-object v10, v0, Lmodule/canbus/y$c;->a:Lmodule/canbus/y;

    invoke-static {v10}, Lmodule/canbus/y;->w3(Lmodule/canbus/y;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lo1/g0;->b(II)I

    move-result v11

    iget-object v2, v0, Lmodule/canbus/y$c;->a:Lmodule/canbus/y;

    .line 11
    invoke-static {v2}, Lmodule/canbus/y;->w3(Lmodule/canbus/y;)Lo1/g0;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v6}, Lo1/g0;->b(II)I

    move-result v12

    iget-object v2, v0, Lmodule/canbus/y$c;->a:Lmodule/canbus/y;

    .line 12
    invoke-static {v2}, Lmodule/canbus/y;->w3(Lmodule/canbus/y;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v8, v6}, Lo1/g0;->b(II)I

    move-result v13

    iget-object v2, v0, Lmodule/canbus/y$c;->a:Lmodule/canbus/y;

    .line 13
    invoke-static {v2}, Lmodule/canbus/y;->w3(Lmodule/canbus/y;)Lo1/g0;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v6}, Lo1/g0;->b(II)I

    move-result v14

    iget-object v2, v0, Lmodule/canbus/y$c;->a:Lmodule/canbus/y;

    .line 14
    invoke-static {v2}, Lmodule/canbus/y;->w3(Lmodule/canbus/y;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Lo1/g0;->b(II)I

    move-result v15

    iget-object v1, v0, Lmodule/canbus/y$c;->a:Lmodule/canbus/y;

    .line 15
    invoke-static {v1}, Lmodule/canbus/y;->w3(Lmodule/canbus/y;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v7, v6}, Lo1/g0;->b(II)I

    move-result v16

    .line 16
    invoke-static/range {v10 .. v16}, Lmodule/canbus/y;->z3(Lmodule/canbus/y;IIIIII)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-static {v1}, Lmodule/canbus/y;->i3(Lmodule/canbus/y;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 18
    iget-object v1, v0, Lmodule/canbus/y$c;->a:Lmodule/canbus/y;

    const/16 v2, 0xc

    iput-byte v2, v1, Lmodule/canbus/y;->t:B

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x90
        0x1
        0x30
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x1
        0x27
    .end array-data
.end method
