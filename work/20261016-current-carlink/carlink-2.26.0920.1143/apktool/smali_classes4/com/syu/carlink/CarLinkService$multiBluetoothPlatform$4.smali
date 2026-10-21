.class final Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$4;
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

    iput-object p1, p0, Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$4;->b:Lo/b;

    iput-object p2, p0, Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$4;->c:Lg/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/syu/carlink/utils/a;)Ljava/lang/Boolean;
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$4;->b:Lo/b;

    iget-object v0, v0, Lo/b;->c:[I

    .line 2
    invoke-static {v0}, Lt/b;->e(Ljava/lang/Object;)V

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 3
    iget v2, p1, Lcom/syu/carlink/utils/a;->h:I

    if-eq v2, v0, :cond_2

    const/4 v3, 0x1

    if-eq v2, v0, :cond_1

    .line 4
    iput v0, p1, Lcom/syu/carlink/utils/a;->h:I

    if-le v0, v3, :cond_0

    move v1, v3

    .line 5
    :cond_0
    iput-boolean v1, p1, Lcom/syu/carlink/utils/a;->f:Z

    :cond_1
    move v1, v3

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "it a2dpState: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iget v2, p1, Lcom/syu/carlink/utils/a;->h:I

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  isA2dp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-boolean v2, p1, Lcom/syu/carlink/utils/a;->f:Z

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Bt"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v0, p0, Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$4;->c:Lg/b;

    iget-object v0, v0, Lg/b;->p:Landroidx/lifecycle/MutableLiveData;

    .line 12
    iget-boolean p1, p1, Lcom/syu/carlink/utils/a;->f:Z

    .line 13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lcom/syu/carlink/utils/a;

    invoke-virtual {p0, p1}, Lcom/syu/carlink/CarLinkService$multiBluetoothPlatform$4;->invoke(Lcom/syu/carlink/utils/a;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
