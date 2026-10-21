.class Lcom/syu/bt/App_Bt$32$1;
.super Ljava/lang/Object;
.source "App_Bt.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/App_Bt$32;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/syu/bt/App_Bt$32;


# direct methods
.method constructor <init>(Lcom/syu/bt/App_Bt$32;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/App_Bt$32$1;->this$1:Lcom/syu/bt/App_Bt$32;

    .line 3065
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3069
    iget-object v0, p0, Lcom/syu/bt/App_Bt$32$1;->this$1:Lcom/syu/bt/App_Bt$32;

    invoke-static {v0}, Lcom/syu/bt/App_Bt$32;->access$0(Lcom/syu/bt/App_Bt$32;)Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-boolean v0, v0, Lcom/syu/bt/App_Bt;->bPopBtShow:Z

    if-nez v0, :cond_1

    .line 3070
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3071
    const-string v0, "mTxtFloat A"

    invoke-static {v0}, Lcom/syu/bt/util/BTUtil;->writeLogToFile(Ljava/lang/String;)V

    .line 3072
    iget-object v0, p0, Lcom/syu/bt/App_Bt$32$1;->this$1:Lcom/syu/bt/App_Bt$32;

    invoke-static {v0}, Lcom/syu/bt/App_Bt$32;->access$0(Lcom/syu/bt/App_Bt$32;)Lcom/syu/bt/App_Bt;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/syu/bt/App_Bt;->popBt(ZZ)V

    .line 3082
    :goto_0
    return-void

    .line 3075
    :cond_0
    sput-boolean v1, Lcom/syu/bt/App_Bt;->bShowFloatBtn_p:Z

    .line 3076
    iget-object v0, p0, Lcom/syu/bt/App_Bt$32$1;->this$1:Lcom/syu/bt/App_Bt$32;

    invoke-static {v0}, Lcom/syu/bt/App_Bt$32;->access$0(Lcom/syu/bt/App_Bt$32;)Lcom/syu/bt/App_Bt;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/syu/bt/App_Bt;->popBt(ZZ)V

    .line 3077
    const-string v0, "mTxtFloat B"

    invoke-static {v0}, Lcom/syu/bt/util/BTUtil;->writeLogToFile(Ljava/lang/String;)V

    goto :goto_0

    .line 3080
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/App_Bt$32$1;->this$1:Lcom/syu/bt/App_Bt$32;

    invoke-static {v0}, Lcom/syu/bt/App_Bt$32;->access$0(Lcom/syu/bt/App_Bt$32;)Lcom/syu/bt/App_Bt;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/syu/bt/App_Bt;->popBt(ZZ)V

    goto :goto_0
.end method
