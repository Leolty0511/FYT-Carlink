.class final Lcom/syu/carlink/CarLinkService$wirelessLink$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lz/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/carlink/CarLinkService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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

    iput-object p1, p0, Lcom/syu/carlink/CarLinkService$wirelessLink$2;->b:Lcom/syu/carlink/CarLinkService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/syu/carlink/d;
    .locals 2

    .line 1
    new-instance v0, Lcom/syu/carlink/d;

    iget-object v1, p0, Lcom/syu/carlink/CarLinkService$wirelessLink$2;->b:Lcom/syu/carlink/CarLinkService;

    invoke-direct {v0, v1}, Lcom/syu/carlink/d;-><init>(Lcom/syu/carlink/CarLinkService;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/syu/carlink/CarLinkService$wirelessLink$2;->invoke()Lcom/syu/carlink/d;

    move-result-object v0

    return-object v0
.end method
