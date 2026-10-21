.class final Lcom/syu/carlink/CarLink$onCreate$1;
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
.field public final synthetic b:Lcom/syu/carlink/CarLink;


# direct methods
.method public constructor <init>(Lcom/syu/carlink/CarLink;)V
    .locals 0

    iput-object p1, p0, Lcom/syu/carlink/CarLink$onCreate$1;->b:Lcom/syu/carlink/CarLink;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/syu/carlink/CarLink$onCreate$1;->invoke(Ljava/lang/Integer;)V

    sget-object p1, Ls/c;->a:Ls/c;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Integer;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/syu/carlink/CarLink$onCreate$1;->b:Lcom/syu/carlink/CarLink;

    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->k()Lp/b;

    move-result-object v0

    const-string v1, "resolution"

    invoke-static {p1, v1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    iget-object v0, v0, Lp/b;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
