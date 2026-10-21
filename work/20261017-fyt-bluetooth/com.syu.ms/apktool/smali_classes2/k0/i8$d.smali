.class public Lk0/i8$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/i8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/i8;


# direct methods
.method public constructor <init>(Lk0/i8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/i8$d;->a:Lk0/i8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lk0/i8$d;->a:Lk0/i8;

    iget v1, v0, Lk0/i8;->t:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/i8;->t:I

    const/4 v3, 0x5

    if-lez v1, :cond_0

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
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_1

    .line 4
    sget v1, Lk0/nt;->a:I

    const v6, 0x1c00ff

    if-eq v1, v6, :cond_1

    const v6, 0x1d00ff

    if-eq v1, v6, :cond_1

    .line 5
    iget-object v1, p0, Lk0/i8$d;->a:Lk0/i8;

    invoke-static {v1}, Lk0/i8;->a3(Lk0/i8;)Lo1/g0;

    move-result-object v6

    invoke-virtual {v6, v2, v5}, Lo1/g0;->b(II)I

    move-result v6

    invoke-static {v1, v6}, Lk0/i8;->b3(Lk0/i8;I)V

    .line 6
    iget-object v1, p0, Lk0/i8$d;->a:Lk0/i8;

    invoke-static {v1}, Lk0/i8;->a3(Lk0/i8;)Lo1/g0;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lo1/g0;->b(II)I

    move-result v4

    invoke-static {v1, v4}, Lk0/i8;->c3(Lk0/i8;I)V

    .line 7
    iget-object v1, p0, Lk0/i8$d;->a:Lk0/i8;

    invoke-static {v1}, Lk0/i8;->a3(Lk0/i8;)Lo1/g0;

    move-result-object v4

    invoke-virtual {v4, v7, v2}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/i8;->c3(Lk0/i8;I)V

    .line 8
    iget-object v1, p0, Lk0/i8$d;->a:Lk0/i8;

    invoke-static {v1}, Lk0/i8;->a3(Lk0/i8;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Lo1/g0;->b(II)I

    move-result v0

    invoke-static {v1, v0}, Lk0/i8;->d3(Lk0/i8;I)V

    .line 9
    iget-object v0, p0, Lk0/i8$d;->a:Lk0/i8;

    invoke-static {v0}, Lk0/i8;->a3(Lk0/i8;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v3, v5}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/i8;->e3(Lk0/i8;I)V

    .line 10
    iget-object v0, p0, Lk0/i8$d;->a:Lk0/i8;

    invoke-static {v0}, Lk0/i8;->a3(Lk0/i8;)Lo1/g0;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v5}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/i8;->f3(Lk0/i8;I)V

    .line 11
    iget-object v0, p0, Lk0/i8$d;->a:Lk0/i8;

    invoke-static {v0}, Lk0/i8;->a3(Lk0/i8;)Lo1/g0;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v5}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/i8;->g3(Lk0/i8;I)V

    .line 12
    iget-object v0, p0, Lk0/i8$d;->a:Lk0/i8;

    invoke-static {v0}, Lk0/i8;->a3(Lk0/i8;)Lo1/g0;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v5}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/i8;->h3(Lk0/i8;I)V

    .line 13
    iget-object v0, p0, Lk0/i8$d;->a:Lk0/i8;

    invoke-static {v0}, Lk0/i8;->a3(Lk0/i8;)Lo1/g0;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v5}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/i8;->i3(Lk0/i8;I)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, v0, Lk0/i8;->v:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 15
    iget-object v0, p0, Lk0/i8$d;->a:Lk0/i8;

    iput v3, v0, Lk0/i8;->t:I

    :cond_1
    :goto_0
    return-void
.end method
