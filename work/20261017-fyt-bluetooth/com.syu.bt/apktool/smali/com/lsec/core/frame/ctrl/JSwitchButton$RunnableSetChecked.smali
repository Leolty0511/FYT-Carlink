.class Lcom/lsec/core/frame/ctrl/JSwitchButton$RunnableSetChecked;
.super Ljava/lang/Object;
.source "JSwitchButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/frame/ctrl/JSwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunnableSetChecked"
.end annotation


# instance fields
.field private checked:Z

.field final synthetic this$0:Lcom/lsec/core/frame/ctrl/JSwitchButton;

.field private v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JSwitchButton;Landroid/view/View;Z)V
    .locals 0
    .param p2, "v"    # Landroid/view/View;
    .param p3, "checked"    # Z

    .prologue
    .line 186
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton$RunnableSetChecked;->this$0:Lcom/lsec/core/frame/ctrl/JSwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton$RunnableSetChecked;->v:Landroid/view/View;

    .line 188
    iput-boolean p3, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton$RunnableSetChecked;->checked:Z

    .line 189
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 193
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton$RunnableSetChecked;->this$0:Lcom/lsec/core/frame/ctrl/JSwitchButton;

    invoke-static {v1}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->access$0(Lcom/lsec/core/frame/ctrl/JSwitchButton;)Z

    move-result v1

    iget-boolean v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton$RunnableSetChecked;->checked:Z

    if-eq v1, v2, :cond_0

    .line 194
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton$RunnableSetChecked;->this$0:Lcom/lsec/core/frame/ctrl/JSwitchButton;

    iget-boolean v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton$RunnableSetChecked;->checked:Z

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->setChecked(Z)V

    .line 195
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton$RunnableSetChecked;->this$0:Lcom/lsec/core/frame/ctrl/JSwitchButton;

    invoke-static {v1}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->access$1(Lcom/lsec/core/frame/ctrl/JSwitchButton;)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    .line 196
    .local v0, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v0, :cond_0

    .line 197
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton$RunnableSetChecked;->v:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/lsec/core/frame/page/IPageNotify;->ResponseClick(Landroid/view/View;)V

    .line 199
    .end local v0    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_0
    return-void
.end method
