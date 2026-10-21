.class final Lcom/syu/carlink/carplay/CarplayView$defSurfaceCodec$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lz/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/carlink/carplay/CarplayView;-><init>(Landroid/content/Context;)V
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


# static fields
.field public static final INSTANCE:Lcom/syu/carlink/carplay/CarplayView$defSurfaceCodec$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/syu/carlink/carplay/CarplayView$defSurfaceCodec$2;

    invoke-direct {v0}, Lcom/syu/carlink/carplay/CarplayView$defSurfaceCodec$2;-><init>()V

    sput-object v0, Lcom/syu/carlink/carplay/CarplayView$defSurfaceCodec$2;->INSTANCE:Lcom/syu/carlink/carplay/CarplayView$defSurfaceCodec$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 1

    .line 2
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/syu/carlink/CarLink;->g:Ls/a;

    invoke-interface {v0}, Ls/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "me"

    .line 5
    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/syu/carlink/carplay/CarplayView$defSurfaceCodec$2;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
