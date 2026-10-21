.class final Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$1;
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

    iput-object p1, p0, Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$1;->b:Lo/b;

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
    iget-object v0, p0, Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$1;->b:Lo/b;

    iget-object v0, v0, Lo/b;->e:[Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lt/b;->e(Ljava/lang/Object;)V

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const-string v0, ""

    .line 3
    :cond_0
    iget-object v2, p1, Lcom/syu/carlink/utils/a;->d:Ljava/lang/String;

    invoke-static {v2, v0}, Lt/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    iput-object v0, p1, Lcom/syu/carlink/utils/a;->d:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p1, Lcom/syu/carlink/utils/a;

    invoke-virtual {p0, p1}, Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$1;->invoke(Lcom/syu/carlink/utils/a;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
