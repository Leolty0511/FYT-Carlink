.class final Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$2;
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

.field public final synthetic c:Lg/b;


# direct methods
.method public constructor <init>(Lo/b;Lg/b;)V
    .locals 0

    iput-object p1, p0, Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$2;->b:Lo/b;

    iput-object p2, p0, Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$2;->c:Lg/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/syu/carlink/utils/a;)Ljava/lang/Boolean;
    .locals 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$2;->b:Lo/b;

    iget-object v1, v0, Lo/b;->c:[I

    .line 2
    invoke-static {v1}, Lt/b;->e(Ljava/lang/Object;)V

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 3
    :goto_0
    iget-boolean v4, p1, Lcom/syu/carlink/utils/a;->e:Z

    if-eq v4, v1, :cond_1

    .line 4
    iput-boolean v1, p1, Lcom/syu/carlink/utils/a;->e:Z

    goto :goto_1

    :cond_1
    move v3, v2

    .line 5
    :goto_1
    iget-object p1, p0, Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$2;->c:Lg/b;

    iget-object p1, p1, Lg/b;->I:Landroidx/lifecycle/MutableLiveData;

    .line 6
    iget-object v0, v0, Lo/b;->c:[I

    .line 7
    invoke-static {v0}, Lt/b;->e(Ljava/lang/Object;)V

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, Lcom/syu/carlink/utils/a;

    invoke-virtual {p0, p1}, Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$2;->invoke(Lcom/syu/carlink/utils/a;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
