.class Lcom/syu/bt/page/pop/Page_PopCODEC$2;
.super Ljava/lang/Object;
.source "Page_PopCODEC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/pop/Page_PopCODEC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/pop/Page_PopCODEC;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/pop/Page_PopCODEC;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopCODEC$2;->this$0:Lcom/syu/bt/page/pop/Page_PopCODEC;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopCODEC$2;->this$0:Lcom/syu/bt/page/pop/Page_PopCODEC;

    invoke-virtual {v0}, Lcom/syu/bt/page/pop/Page_PopCODEC;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JPage;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 179
    return-void
.end method
