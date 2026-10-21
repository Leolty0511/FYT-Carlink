.class final Lcom/syu/carlink/CarLinkService$initHandler$1$run$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lz/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lz/l;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/syu/carlink/CarLinkService;


# direct methods
.method public constructor <init>(Lcom/syu/carlink/CarLinkService;)V
    .locals 0

    iput-object p1, p0, Lcom/syu/carlink/CarLinkService$initHandler$1$run$1$1;->b:Lcom/syu/carlink/CarLinkService;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/syu/carlink/CarLinkService$initHandler$1$run$1$1;->invoke(Z)V

    sget-object p1, Ls/c;->a:Ls/c;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/syu/carlink/CarLinkService$initHandler$1$run$1$1;->b:Lcom/syu/carlink/CarLinkService;

    invoke-virtual {p1}, Lcom/syu/carlink/CarLinkService;->e()V

    const-wide/16 v0, 0xc8

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/syu/carlink/CarLinkService;->d(J)V

    return-void
.end method
