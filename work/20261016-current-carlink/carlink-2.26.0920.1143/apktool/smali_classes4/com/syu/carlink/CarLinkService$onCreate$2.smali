.class final Lcom/syu/carlink/CarLinkService$onCreate$2;
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

    iput-object p1, p0, Lcom/syu/carlink/CarLinkService$onCreate$2;->b:Lcom/syu/carlink/CarLinkService;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/syu/carlink/CarLinkService$onCreate$2;->invoke(Ljava/lang/Integer;)V

    sget-object p1, Ls/c;->a:Ls/c;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Integer;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/syu/carlink/CarLinkService$onCreate$2;->b:Lcom/syu/carlink/CarLinkService;

    invoke-virtual {v0}, Lcom/syu/carlink/CarLinkService;->l()Lo/e;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xaa

    const/4 v0, 0x1

    new-array v4, v0, [I

    const-string v0, "it"

    .line 3
    invoke-static {p1, v0}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    aput p1, v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x18

    .line 4
    invoke-static/range {v1 .. v6}, Lo/e;->b(Lo/e;II[I[Ljava/lang/String;I)V

    return-void
.end method
