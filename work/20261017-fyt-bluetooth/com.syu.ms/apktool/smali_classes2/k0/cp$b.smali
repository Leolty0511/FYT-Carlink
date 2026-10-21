.class public Lk0/cp$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/cp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/cp;


# direct methods
.method public constructor <init>(Lk0/cp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/cp$b;->a:Lk0/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lk0/cp$b;->a:Lk0/cp;

    iget v1, v0, Lk0/cp;->i:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/cp;->i:I

    const/4 v3, 0x5

    if-lez v1, :cond_3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v4, 0x0

    aput v1, v0, v4

    const/16 v1, 0x81

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 2
    sget v5, Lu0/b;->a0:I

    aput v5, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_4

    .line 4
    iget-object v5, p0, Lk0/cp$b;->a:Lk0/cp;

    invoke-static {v5}, Lk0/cp;->b3(Lk0/cp;)Lo1/g0;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v4}, Lo1/g0;->b(II)I

    move-result v6

    iget-object v0, p0, Lk0/cp$b;->a:Lk0/cp;

    .line 5
    invoke-static {v0}, Lk0/cp;->b3(Lk0/cp;)Lo1/g0;

    move-result-object v0

    const/16 v1, 0x13

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v7

    iget-object v0, p0, Lk0/cp$b;->a:Lk0/cp;

    .line 6
    invoke-static {v0}, Lk0/cp;->b3(Lk0/cp;)Lo1/g0;

    move-result-object v0

    const/16 v1, 0x14

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v8

    iget-object v0, p0, Lk0/cp$b;->a:Lk0/cp;

    .line 7
    invoke-static {v0}, Lk0/cp;->b3(Lk0/cp;)Lo1/g0;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v9

    iget-object v0, p0, Lk0/cp$b;->a:Lk0/cp;

    .line 8
    invoke-static {v0}, Lk0/cp;->b3(Lk0/cp;)Lo1/g0;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v10

    .line 9
    invoke-static/range {v5 .. v10}, Lk0/cp;->c3(Lk0/cp;IIIII)V

    .line 10
    iget-object v0, p0, Lk0/cp$b;->a:Lk0/cp;

    invoke-static {v0}, Lk0/cp;->b3(Lk0/cp;)Lo1/g0;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/cp;->d3(Lk0/cp;I)V

    .line 11
    iget-object v0, p0, Lk0/cp$b;->a:Lk0/cp;

    invoke-static {v0}, Lk0/cp;->b3(Lk0/cp;)Lo1/g0;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/cp;->e3(Lk0/cp;I)V

    new-array v0, v3, [I

    .line 12
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 13
    sget v0, Lk0/nt;->a:I

    const v1, 0x2401c5

    if-eq v0, v1, :cond_2

    const v1, 0x7d01c7

    if-eq v0, v1, :cond_1

    const v1, 0x7e01c7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v3, [I

    .line 14
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v3, [I

    .line 15
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array v0, v3, [I

    .line 16
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 17
    :cond_3
    iget-object v0, v0, Lk0/cp;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 18
    iget-object v0, p0, Lk0/cp$b;->a:Lk0/cp;

    iput v3, v0, Lk0/cp;->i:I

    :cond_4
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x30
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x2
        0xe
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc6
        0x2
        0xe
        0x2
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xc6
        0x2
        0xe
        0x0
    .end array-data
.end method
