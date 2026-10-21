.class public Ls0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls0/a;


# direct methods
.method public constructor <init>(Ls0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls0/a$a;->a:Ls0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->f:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ls0/a$a;->a:Ls0/a;

    invoke-static {v0}, Ls0/a;->i(Ls0/a;)Lo1/g0;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Ls0/c;->g:I

    invoke-virtual {v1, v2, v3}, Lo1/g0;->d(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ls0/a;->f(I)V

    .line 3
    iget-object v0, p0, Ls0/a$a;->a:Ls0/a;

    invoke-static {v0}, Ls0/a;->i(Ls0/a;)Lo1/g0;

    move-result-object v1

    const/4 v2, 0x1

    sget v3, Ls0/c;->i:I

    invoke-virtual {v1, v2, v3}, Lo1/g0;->d(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ls0/a;->c(I)V

    .line 4
    iget-object v0, p0, Ls0/a$a;->a:Ls0/a;

    invoke-static {v0}, Ls0/a;->i(Ls0/a;)Lo1/g0;

    move-result-object v1

    const/4 v2, 0x2

    sget v3, Ls0/c;->k:I

    invoke-virtual {v1, v2, v3}, Lo1/g0;->d(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ls0/a;->g(I)V

    .line 5
    iget-object v0, p0, Ls0/a$a;->a:Ls0/a;

    invoke-static {v0}, Ls0/a;->i(Ls0/a;)Lo1/g0;

    move-result-object v1

    const/4 v2, 0x3

    sget v3, Ls0/c;->m:I

    invoke-virtual {v1, v2, v3}, Lo1/g0;->d(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ls0/a;->e(I)V

    .line 6
    iget-object v0, p0, Ls0/a$a;->a:Ls0/a;

    invoke-static {v0}, Ls0/a;->i(Ls0/a;)Lo1/g0;

    move-result-object v1

    const/4 v2, 0x4

    sget v3, Ls0/c;->o:I

    invoke-virtual {v1, v2, v3}, Lo1/g0;->d(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ls0/a;->h(I)V

    .line 7
    iget-object v0, p0, Ls0/a$a;->a:Ls0/a;

    invoke-static {v0}, Ls0/a;->i(Ls0/a;)Lo1/g0;

    move-result-object v1

    const/4 v2, 0x5

    sget v3, Ls0/c;->q:I

    invoke-virtual {v1, v2, v3}, Lo1/g0;->d(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ls0/a;->d(I)V

    :cond_0
    return-void
.end method
