.class public Lk0/xq$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/xq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/xq;


# direct methods
.method public constructor <init>(Lk0/xq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/xq$h;->a:Lk0/xq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/xq$h;->a:Lk0/xq;

    iget v1, v0, Lk0/xq;->A:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/xq;->A:I

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v3, 0x0

    aput v1, v0, v3

    const/16 v1, 0x81

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 2
    sget v4, Lu0/b;->a0:I

    aput v4, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lk0/xq$h;->a:Lk0/xq;

    invoke-static {v0}, Lk0/xq;->d3(Lk0/xq;)Lo1/g0;

    move-result-object v1

    const/16 v4, 0xa

    const/16 v5, 0x14

    invoke-virtual {v1, v4, v5}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/xq;->e3(Lk0/xq;I)V

    .line 5
    iget-object v0, p0, Lk0/xq$h;->a:Lk0/xq;

    invoke-static {v0}, Lk0/xq;->d3(Lk0/xq;)Lo1/g0;

    move-result-object v1

    const/16 v4, 0xb

    const/16 v5, 0x24

    invoke-virtual {v1, v4, v5}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/xq;->f3(Lk0/xq;I)V

    .line 6
    iget-object v0, p0, Lk0/xq$h;->a:Lk0/xq;

    invoke-static {v0}, Lk0/xq;->d3(Lk0/xq;)Lo1/g0;

    move-result-object v1

    const/16 v4, 0xf

    invoke-virtual {v1, v4, v2}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/xq;->g3(Lk0/xq;I)V

    .line 7
    iget-object v0, p0, Lk0/xq$h;->a:Lk0/xq;

    invoke-static {v0}, Lk0/xq;->d3(Lk0/xq;)Lo1/g0;

    move-result-object v1

    const/16 v4, 0xd

    invoke-virtual {v1, v4, v3}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/xq;->h3(Lk0/xq;I)V

    .line 8
    iget-object v0, p0, Lk0/xq$h;->a:Lk0/xq;

    invoke-static {v0}, Lk0/xq;->d3(Lk0/xq;)Lo1/g0;

    move-result-object v1

    const/16 v3, 0x17

    invoke-virtual {v1, v3, v2}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/xq;->i3(Lk0/xq;I)V

    .line 9
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lu0/b;->D:I

    if-eq v0, v4, :cond_1

    .line 10
    invoke-static {}, Lk0/xq;->c3()I

    move-result v0

    invoke-static {v0}, Ly0/h;->u0(I)V

    .line 11
    invoke-static {v2}, Ly0/h;->k(I)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, v0, Lk0/xq;->C:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Lk0/xq$h;->a:Lk0/xq;

    const/4 v1, 0x5

    iput v1, v0, Lk0/xq;->A:I

    :cond_1
    :goto_0
    return-void
.end method
