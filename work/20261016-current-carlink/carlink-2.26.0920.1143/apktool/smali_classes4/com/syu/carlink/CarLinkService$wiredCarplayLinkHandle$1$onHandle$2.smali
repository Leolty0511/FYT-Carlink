.class final Lcom/syu/carlink/CarLinkService$wiredCarplayLinkHandle$1$onHandle$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lz/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lz/a;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/syu/carlink/CarLinkService;


# direct methods
.method public constructor <init>(Lcom/syu/carlink/CarLinkService;)V
    .locals 0

    iput-object p1, p0, Lcom/syu/carlink/CarLinkService$wiredCarplayLinkHandle$1$onHandle$2;->b:Lcom/syu/carlink/CarLinkService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/syu/carlink/CarLinkService$wiredCarplayLinkHandle$1$onHandle$2;->invoke()V

    sget-object v0, Ls/c;->a:Ls/c;

    return-object v0
.end method

.method public final invoke()V
    .locals 12

    .line 1
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    const/4 v1, 0x0

    const-string v2, "me"

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lg/b;->I:Landroidx/lifecycle/MutableLiveData;

    .line 4
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/syu/carlink/CarLinkService$wiredCarplayLinkHandle$1$onHandle$2;->b:Lcom/syu/carlink/CarLinkService;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 5
    invoke-virtual {v4}, Lcom/syu/carlink/CarLinkService;->l()Lo/e;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x3

    new-array v9, v3, [I

    const/4 v10, 0x0

    const/16 v11, 0x18

    invoke-static/range {v6 .. v11}, Lo/e;->b(Lo/e;II[I[Ljava/lang/String;I)V

    .line 6
    :cond_1
    :goto_0
    iget-object v0, v4, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, v3}, Lh/c;->h(I)V

    .line 8
    :cond_2
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->j()Lg/b;

    move-result-object v0

    .line 10
    iget-object v0, v0, Lg/b;->t:Landroidx/lifecycle/MutableLiveData;

    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 12
    iget-object v0, v4, Lcom/syu/carlink/CarLinkService;->f:Landroid/os/Handler;

    .line 13
    iget-object v1, v4, Lcom/syu/carlink/CarLinkService;->L:Landroid/os/b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    iget-wide v2, v4, Lcom/syu/carlink/CarLinkService;->o:J

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "HDL"

    const-string v1, "LinkStart LinkManager ============>>> linkMode(0)!!"

    .line 16
    invoke-static {v0, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_3
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_4
    invoke-static {v2}, Lt/b;->B(Ljava/lang/String;)V

    throw v1
.end method
