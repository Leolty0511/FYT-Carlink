.class Lcom/syu/bt/page/pop/Page_PopBt$1;
.super Ljava/lang/Object;
.source "Page_PopBt.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/pop/Page_PopBt;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/pop/Page_PopBt;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/pop/Page_PopBt;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopBt$1;->this$0:Lcom/syu/bt/page/pop/Page_PopBt;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v2, 0x42480000    # 50.0f

    const/4 v4, 0x0

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "y":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 179
    :goto_0
    return v4

    .line 156
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sput v1, Lcom/syu/bt/page/pop/Page_PopBt;->lld_y:F

    .line 157
    const-string v1, "lddd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " *** mBtn_ShowLDD ACTION_DOWN  lld_y = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/syu/bt/page/pop/Page_PopBt;->lld_y:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 161
    const-string v1, "lddd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " *** mBtn_ShowLDD ACTION_MOVE  y = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 165
    sget v1, Lcom/syu/bt/page/pop/Page_PopBt;->lld_y:F

    sub-float v1, v0, v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 166
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/syu/bt/App_Bt;->popBtNum(Z)V

    .line 171
    :cond_0
    :goto_1
    const-string v1, "lddd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " *** mBtn_ShowLDD ACTION_UP  y = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_1
    sget v1, Lcom/syu/bt/page/pop/Page_PopBt;->lld_y:F

    sub-float/2addr v1, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 168
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Lcom/syu/bt/App_Bt;->popBt(ZZ)V

    .line 169
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/syu/bt/App_Bt;->popShowLLD(Z)V

    goto :goto_1

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
