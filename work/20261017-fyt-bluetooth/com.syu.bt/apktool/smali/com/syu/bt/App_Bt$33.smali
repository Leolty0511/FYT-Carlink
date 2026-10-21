.class Lcom/syu/bt/App_Bt$33;
.super Ljava/lang/Object;
.source "App_Bt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/App_Bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/App_Bt;


# direct methods
.method constructor <init>(Lcom/syu/bt/App_Bt;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/App_Bt$33;->this$0:Lcom/syu/bt/App_Bt;

    .line 3149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3152
    const-string v0, "gdy77"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 000 mRunnable_HideFloatBtn bShowFloatBtn_p = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bShowFloatBtn_p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3153
    sput-boolean v3, Lcom/syu/bt/App_Bt;->bShowFloatBtn_p:Z

    .line 3154
    iget-object v0, p0, Lcom/syu/bt/App_Bt$33;->this$0:Lcom/syu/bt/App_Bt;

    iget-boolean v0, v0, Lcom/syu/bt/App_Bt;->bFloatViewShow:Z

    if-eqz v0, :cond_3

    .line 3155
    iget-object v0, p0, Lcom/syu/bt/App_Bt$33;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 3156
    iget-object v0, p0, Lcom/syu/bt/App_Bt$33;->this$0:Lcom/syu/bt/App_Bt;

    iput-boolean v3, v0, Lcom/syu/bt/App_Bt;->bFloatViewShow:Z

    .line 3157
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bShowBtInNaviFloatBtn:Z

    if-eqz v0, :cond_0

    .line 3158
    iget-object v0, p0, Lcom/syu/bt/App_Bt$33;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->removeNotify_PopBt()V

    .line 3160
    :cond_0
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/syu/bt/App_Bt$33;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 3163
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/App_Bt$33;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v0}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3164
    iget-object v0, p0, Lcom/syu/bt/App_Bt$33;->this$0:Lcom/syu/bt/App_Bt;

    iget v0, v0, Lcom/syu/bt/App_Bt;->posx:I

    iget-object v1, p0, Lcom/syu/bt/App_Bt$33;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v0, v1, :cond_2

    .line 3165
    iget-object v0, p0, Lcom/syu/bt/App_Bt$33;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, p0, Lcom/syu/bt/App_Bt$33;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v0, Lcom/syu/bt/App_Bt;->posx:I

    .line 3166
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v1, "float_x"

    iget-object v2, p0, Lcom/syu/bt/App_Bt$33;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v2}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/util/MySharePreference2;->saveIntValue(Ljava/lang/String;I)V

    .line 3169
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/App_Bt$33;->this$0:Lcom/syu/bt/App_Bt;

    iget v0, v0, Lcom/syu/bt/App_Bt;->posy:I

    iget-object v1, p0, Lcom/syu/bt/App_Bt$33;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v0, v1, :cond_3

    .line 3171
    iget-object v0, p0, Lcom/syu/bt/App_Bt$33;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, p0, Lcom/syu/bt/App_Bt$33;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, v0, Lcom/syu/bt/App_Bt;->posy:I

    .line 3172
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v1, "float_y"

    iget-object v2, p0, Lcom/syu/bt/App_Bt$33;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v2}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/util/MySharePreference2;->saveIntValue(Ljava/lang/String;I)V

    .line 3176
    :cond_3
    return-void
.end method
