.class final Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$3;
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
.field public final synthetic b:Lo/b;


# direct methods
.method public constructor <init>(Lo/b;)V
    .locals 0

    iput-object p1, p0, Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$3;->b:Lo/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/syu/carlink/utils/a;)Ljava/lang/Boolean;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$3;->b:Lo/b;

    iget-object v0, v0, Lo/b;->c:[I

    .line 2
    invoke-static {v0}, Lt/b;->e(Ljava/lang/Object;)V

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 3
    iget v2, p1, Lcom/syu/carlink/utils/a;->g:I

    if-eq v2, v0, :cond_1

    if-eq v2, v0, :cond_0

    .line 4
    iput v0, p1, Lcom/syu/carlink/utils/a;->g:I

    .line 5
    iget-object v0, p1, Lcom/syu/carlink/utils/a;->c:Ls/a;

    invoke-interface {v0}, Ls/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 6
    iget p1, p1, Lcom/syu/carlink/utils/a;->g:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lt/c;->I([Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x1

    .line 7
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    check-cast p1, Lcom/syu/carlink/utils/a;

    invoke-virtual {p0, p1}, Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$3;->invoke(Lcom/syu/carlink/utils/a;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
