.class final Lcom/syu/carlink/MainActivity$onServiceConnected$1$1;
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
.field public final synthetic b:Lcom/syu/carlink/MainActivity;


# direct methods
.method public constructor <init>(Lcom/syu/carlink/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/syu/carlink/MainActivity$onServiceConnected$1$1;->b:Lcom/syu/carlink/MainActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/util/Size;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/syu/carlink/MainActivity$onServiceConnected$1$1;->b:Lcom/syu/carlink/MainActivity;

    invoke-virtual {v0}, Lcom/syu/carlink/MainActivity;->j()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/syu/carlink/MainActivity;->j()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Lcom/syu/carlink/MainActivity;->j()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/syu/carlink/MainActivity;->j()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/MainActivity$onServiceConnected$1$1;->invoke()Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method
