.class public Lk0/sq$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/sq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/sq;


# direct methods
.method public constructor <init>(Lk0/sq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/sq$h;->a:Lk0/sq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/sq$h;->a:Lk0/sq;

    iget v1, v0, Lk0/sq;->E:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/sq;->E:I

    const/16 v3, 0xa

    if-lez v1, :cond_1

    const/4 v0, 0x5

    const/4 v4, 0x0

    if-gt v1, v0, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/16 v5, 0xe3

    aput v5, v1, v4

    const/16 v5, 0x81

    aput v5, v1, v2

    const/4 v5, 0x2

    aput v2, v1, v5

    const/4 v5, 0x3

    .line 2
    sget v6, Lu0/b;->a0:I

    aput v6, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    :cond_0
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_2

    .line 4
    iget-object v1, p0, Lk0/sq$h;->a:Lk0/sq;

    invoke-static {v1}, Lk0/sq;->f3(Lk0/sq;)Lo1/g0;

    move-result-object v2

    const/4 v5, 0x7

    invoke-virtual {v2, v5, v4}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/sq;->g3(Lk0/sq;I)V

    .line 5
    iget-object v1, p0, Lk0/sq$h;->a:Lk0/sq;

    invoke-static {v1}, Lk0/sq;->f3(Lk0/sq;)Lo1/g0;

    move-result-object v2

    const/16 v5, 0x14

    invoke-virtual {v2, v3, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/sq;->h3(Lk0/sq;I)V

    .line 6
    iget-object v1, p0, Lk0/sq$h;->a:Lk0/sq;

    invoke-static {v1}, Lk0/sq;->f3(Lk0/sq;)Lo1/g0;

    move-result-object v2

    const/16 v3, 0xb

    const/16 v5, 0x24

    invoke-virtual {v2, v3, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/sq;->i3(Lk0/sq;I)V

    .line 7
    iget-object v1, p0, Lk0/sq$h;->a:Lk0/sq;

    invoke-static {v1}, Lk0/sq;->f3(Lk0/sq;)Lo1/g0;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v2, v3, v4}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/sq;->j3(Lk0/sq;I)V

    .line 8
    iget-object v1, p0, Lk0/sq$h;->a:Lk0/sq;

    invoke-static {v1}, Lk0/sq;->f3(Lk0/sq;)Lo1/g0;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3, v4}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/sq;->k3(Lk0/sq;I)V

    .line 9
    iget-object v1, p0, Lk0/sq$h;->a:Lk0/sq;

    invoke-static {v1}, Lk0/sq;->f3(Lk0/sq;)Lo1/g0;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v4}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/sq;->l3(Lk0/sq;I)V

    .line 10
    sget-object v1, La/b;->Q:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Lu0/b;->D:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    .line 11
    invoke-static {}, Lk0/sq;->e3()I

    move-result v1

    invoke-static {v1}, Ly0/h;->u0(I)V

    new-array v1, v0, [I

    .line 12
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v0, v0, [I

    .line 13
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, v0, Lk0/sq;->G:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 15
    iget-object v0, p0, Lk0/sq$h;->a:Lk0/sq;

    iput v3, v0, Lk0/sq;->E:I

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x2
        0xb5
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x2
        0xb0
        0x3
    .end array-data
.end method
