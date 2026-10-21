.class public Lk0/yh$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/yh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/yh;


# direct methods
.method public constructor <init>(Lk0/yh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/yh$h;->a:Lk0/yh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lk0/yh$h;->a:Lk0/yh;

    iget-byte v1, v0, Lk0/yh;->r:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/yh;->r:B

    const/4 v3, 0x5

    if-lez v1, :cond_1

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v4, 0xe3

    const/4 v5, 0x0

    aput v4, v1, v5

    const/16 v4, 0x81

    aput v4, v1, v2

    const/4 v4, 0x2

    aput v2, v1, v4

    .line 2
    sget v6, Lu0/b;->a0:I

    const/4 v7, 0x3

    aput v6, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    iget-object v1, p0, Lk0/yh$h;->a:Lk0/yh;

    invoke-static {v1}, Lk0/yh;->z3(Lk0/yh;)Lo1/g0;

    move-result-object v6

    invoke-virtual {v6, v2, v2}, Lo1/g0;->b(II)I

    move-result v6

    invoke-static {v1, v6}, Lk0/yh;->A3(Lk0/yh;I)V

    .line 4
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_2

    .line 5
    sget v1, Lk0/nt;->a:I

    const v6, 0xb901c7

    if-eq v1, v6, :cond_0

    const v6, 0xba01c7

    if-eq v1, v6, :cond_0

    const v6, 0xf901c4

    if-ne v1, v6, :cond_2

    .line 6
    :cond_0
    iget-object v1, p0, Lk0/yh$h;->a:Lk0/yh;

    invoke-static {v1}, Lk0/yh;->z3(Lk0/yh;)Lo1/g0;

    move-result-object v6

    const/16 v8, 0x12

    invoke-virtual {v6, v4, v8}, Lo1/g0;->b(II)I

    move-result v4

    invoke-static {v1, v4}, Lk0/yh;->B3(Lk0/yh;I)V

    .line 7
    iget-object v1, p0, Lk0/yh$h;->a:Lk0/yh;

    invoke-static {v1}, Lk0/yh;->z3(Lk0/yh;)Lo1/g0;

    move-result-object v4

    const/16 v6, 0xa

    invoke-virtual {v4, v7, v6}, Lo1/g0;->b(II)I

    move-result v4

    invoke-static {v1, v4}, Lk0/yh;->C3(Lk0/yh;I)V

    .line 8
    iget-object v1, p0, Lk0/yh$h;->a:Lk0/yh;

    invoke-static {v1}, Lk0/yh;->z3(Lk0/yh;)Lo1/g0;

    move-result-object v4

    invoke-virtual {v4, v0, v6}, Lo1/g0;->b(II)I

    move-result v0

    invoke-static {v1, v0}, Lk0/yh;->D3(Lk0/yh;I)V

    .line 9
    iget-object v0, p0, Lk0/yh$h;->a:Lk0/yh;

    invoke-static {v0}, Lk0/yh;->z3(Lk0/yh;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v3, v6}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/yh;->E3(Lk0/yh;I)V

    .line 10
    iget-object v0, p0, Lk0/yh$h;->a:Lk0/yh;

    invoke-static {v0}, Lk0/yh;->z3(Lk0/yh;)Lo1/g0;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v6}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/yh;->d3(Lk0/yh;I)V

    .line 11
    iget-object v0, p0, Lk0/yh$h;->a:Lk0/yh;

    invoke-static {v0}, Lk0/yh;->z3(Lk0/yh;)Lo1/g0;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v6}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/yh;->e3(Lk0/yh;I)V

    .line 12
    iget-object v0, p0, Lk0/yh$h;->a:Lk0/yh;

    invoke-static {v0}, Lk0/yh;->z3(Lk0/yh;)Lo1/g0;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/yh;->f3(Lk0/yh;I)V

    .line 13
    iget-object v0, p0, Lk0/yh$h;->a:Lk0/yh;

    invoke-static {v0}, Lk0/yh;->z3(Lk0/yh;)Lo1/g0;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v5}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/yh;->g3(Lk0/yh;I)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {v0}, Lk0/yh;->y3(Lk0/yh;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 15
    iget-object v0, p0, Lk0/yh$h;->a:Lk0/yh;

    iput-byte v3, v0, Lk0/yh;->r:B

    :cond_2
    :goto_0
    return-void
.end method
