.class Lcom/syu/bt/act/ActBt$2;
.super Ljava/lang/Object;
.source "ActBt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/act/ActBt;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/act/ActBt;


# direct methods
.method constructor <init>(Lcom/syu/bt/act/ActBt;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/act/ActBt$2;->this$0:Lcom/syu/bt/act/ActBt;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 145
    iget-object v1, p0, Lcom/syu/bt/act/ActBt$2;->this$0:Lcom/syu/bt/act/ActBt;

    iget-object v1, v1, Lcom/syu/bt/act/ActBt;->ivMenuSel:Lcom/lsec/core/frame/ctrl/JView;

    if-nez v1, :cond_0

    .line 146
    const-string v1, "sel"

    const-string v2, " 33 ActBt onResume  postRunnable_Ui ivMenuSel==null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v1, p0, Lcom/syu/bt/act/ActBt$2;->this$0:Lcom/syu/bt/act/ActBt;

    sget v2, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    invoke-virtual {v1, v2}, Lcom/syu/bt/act/ActBt;->getFixUi(I)Lcom/lsec/core/frame/app/MyUi;

    move-result-object v0

    .line 148
    .local v0, "uiTo":Lcom/lsec/core/frame/app/MyUi;
    iget-object v1, p0, Lcom/syu/bt/act/ActBt$2;->this$0:Lcom/syu/bt/act/ActBt;

    const/16 v2, 0x2712

    invoke-virtual {v0, v4, v2}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    iput-object v2, v1, Lcom/syu/bt/act/ActBt;->pageMenu:Lcom/lsec/core/frame/ctrl/JPage;

    .line 149
    iget-object v1, p0, Lcom/syu/bt/act/ActBt$2;->this$0:Lcom/syu/bt/act/ActBt;

    iget-object v1, v1, Lcom/syu/bt/act/ActBt;->pageMenu:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v1, :cond_0

    .line 150
    iget-object v2, p0, Lcom/syu/bt/act/ActBt$2;->this$0:Lcom/syu/bt/act/ActBt;

    iget-object v1, p0, Lcom/syu/bt/act/ActBt$2;->this$0:Lcom/syu/bt/act/ActBt;

    iget-object v1, v1, Lcom/syu/bt/act/ActBt;->pageMenu:Lcom/lsec/core/frame/ctrl/JPage;

    const/16 v3, 0x28ab

    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JView;

    iput-object v1, v2, Lcom/syu/bt/act/ActBt;->ivMenuSel:Lcom/lsec/core/frame/ctrl/JView;

    .line 152
    .end local v0    # "uiTo":Lcom/lsec/core/frame/app/MyUi;
    :cond_0
    iget-object v1, p0, Lcom/syu/bt/act/ActBt$2;->this$0:Lcom/syu/bt/act/ActBt;

    iget-object v1, v1, Lcom/syu/bt/act/ActBt;->ivMenuSel:Lcom/lsec/core/frame/ctrl/JView;

    if-eqz v1, :cond_1

    .line 153
    const-string v1, "sel"

    const-string v2, " 22 ActBt onResume  showMenuSel ivMenuSel!=null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lcom/syu/bt/act/ActBt$2;->this$0:Lcom/syu/bt/act/ActBt;

    sget v2, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    invoke-virtual {v1, v2}, Lcom/syu/bt/act/ActBt;->showMenuSel(I)V

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_1
    const-string v1, "sel"

    const-string v2, " 33 ActBt onResume  postRunnable_Ui this  "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-wide/16 v2, 0x1f4

    invoke-static {v4, p0, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto :goto_0
.end method
