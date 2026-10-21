.class public Lk0/mb$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/mb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/mb;


# direct methods
.method public constructor <init>(Lk0/mb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/mb$e;->a:Lk0/mb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lk0/mb$e;->a:Lk0/mb;

    iget-byte v1, v0, Lk0/mb;->n:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/mb;->n:B

    const/4 v3, 0x5

    if-lez v1, :cond_0

    .line 2
    invoke-static {v0}, Lk0/mb;->e3(Lk0/mb;)Lo1/g0;

    move-result-object v1

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lo1/g0;->b(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lk0/mb;->c3(I)V

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 4
    iget-object v6, p0, Lk0/mb$e;->a:Lk0/mb;

    invoke-static {v6}, Lk0/mb;->e3(Lk0/mb;)Lo1/g0;

    move-result-object v1

    const/4 v7, 0x7

    invoke-virtual {v1, v0, v7}, Lo1/g0;->b(II)I

    move-result v1

    iget-object v8, p0, Lk0/mb$e;->a:Lk0/mb;

    .line 5
    invoke-static {v8}, Lk0/mb;->e3(Lk0/mb;)Lo1/g0;

    move-result-object v8

    invoke-virtual {v8, v3, v7}, Lo1/g0;->b(II)I

    move-result v8

    iget-object v3, p0, Lk0/mb$e;->a:Lk0/mb;

    .line 6
    invoke-static {v3}, Lk0/mb;->e3(Lk0/mb;)Lo1/g0;

    move-result-object v3

    const/4 v9, 0x6

    invoke-virtual {v3, v9, v7}, Lo1/g0;->b(II)I

    move-result v3

    iget-object v10, p0, Lk0/mb$e;->a:Lk0/mb;

    .line 7
    invoke-static {v10}, Lk0/mb;->e3(Lk0/mb;)Lo1/g0;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11, v7}, Lo1/g0;->b(II)I

    move-result v10

    iget-object v11, p0, Lk0/mb$e;->a:Lk0/mb;

    .line 8
    invoke-static {v11}, Lk0/mb;->e3(Lk0/mb;)Lo1/g0;

    move-result-object v11

    invoke-virtual {v11, v7, v7}, Lo1/g0;->b(II)I

    move-result v11

    iget-object v12, p0, Lk0/mb$e;->a:Lk0/mb;

    .line 9
    invoke-static {v12}, Lk0/mb;->e3(Lk0/mb;)Lo1/g0;

    move-result-object v12

    const/16 v13, 0x9

    invoke-virtual {v12, v13, v5}, Lo1/g0;->b(II)I

    move-result v12

    shl-int/lit8 v7, v12, 0x7

    and-int/lit16 v7, v7, 0x80

    iget-object v12, p0, Lk0/mb$e;->a:Lk0/mb;

    invoke-static {v12}, Lk0/mb;->e3(Lk0/mb;)Lo1/g0;

    move-result-object v12

    const/16 v13, 0xa

    invoke-virtual {v12, v13, v5}, Lo1/g0;->b(II)I

    move-result v12

    shl-int/lit8 v9, v12, 0x6

    and-int/lit8 v9, v9, 0x40

    or-int/2addr v7, v9

    iget-object v9, p0, Lk0/mb$e;->a:Lk0/mb;

    invoke-static {v9}, Lk0/mb;->e3(Lk0/mb;)Lo1/g0;

    move-result-object v9

    const/16 v12, 0xb

    invoke-virtual {v9, v12, v5}, Lo1/g0;->b(II)I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    or-int v12, v7, v5

    iget-object v5, p0, Lk0/mb$e;->a:Lk0/mb;

    .line 10
    invoke-static {v5}, Lk0/mb;->e3(Lk0/mb;)Lo1/g0;

    move-result-object v5

    const/16 v7, 0xc

    invoke-virtual {v5, v7, v4}, Lo1/g0;->b(II)I

    move-result v5

    shl-int/2addr v5, v0

    and-int/lit16 v5, v5, 0xf0

    iget-object v7, p0, Lk0/mb$e;->a:Lk0/mb;

    invoke-static {v7}, Lk0/mb;->e3(Lk0/mb;)Lo1/g0;

    move-result-object v7

    const/16 v9, 0xd

    invoke-virtual {v7, v9, v4}, Lo1/g0;->b(II)I

    move-result v4

    and-int/lit8 v4, v4, 0xf

    or-int v13, v5, v4

    iget-object v4, p0, Lk0/mb$e;->a:Lk0/mb;

    .line 11
    invoke-static {v4}, Lk0/mb;->e3(Lk0/mb;)Lo1/g0;

    move-result-object v4

    const/16 v5, 0xe

    invoke-virtual {v4, v5, v2}, Lo1/g0;->b(II)I

    move-result v14

    move v7, v1

    move v9, v3

    .line 12
    invoke-virtual/range {v6 .. v14}, Lk0/mb;->a3(IIIIIIII)V

    new-array v1, v0, [I

    .line 13
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v0, v0, [I

    .line 14
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v0}, Lk0/mb;->d3(Lk0/mb;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 16
    iget-object v0, p0, Lk0/mb$e;->a:Lk0/mb;

    iput-byte v3, v0, Lk0/mb;->n:B

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x4
        0x8f
        0x7f
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x4
        0x8f
        0x38
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x4
        0x8f
        0x39
    .end array-data
.end method
