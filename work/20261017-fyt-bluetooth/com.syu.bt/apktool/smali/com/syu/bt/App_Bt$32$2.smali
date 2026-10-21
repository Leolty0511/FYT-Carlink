.class Lcom/syu/bt/App_Bt$32$2;
.super Ljava/lang/Object;
.source "App_Bt.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/App_Bt$32;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastDownTime:I

.field lastX:I

.field lastY:I

.field final synthetic this$1:Lcom/syu/bt/App_Bt$32;


# direct methods
.method constructor <init>(Lcom/syu/bt/App_Bt$32;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/App_Bt$32$2;->this$1:Lcom/syu/bt/App_Bt$32;

    .line 3085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3093
    const/4 v3, 0x0

    .line 3094
    .local v3, "ret":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 3134
    :cond_0
    :goto_0
    return v3

    .line 3096
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, p0, Lcom/syu/bt/App_Bt$32$2;->lastDownTime:I

    .line 3097
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/syu/bt/App_Bt$32$2;->lastX:I

    .line 3098
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/syu/bt/App_Bt$32$2;->lastY:I

    .line 3099
    const/4 v3, 0x1

    .line 3100
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "BT_NEW"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "YL_BT_1920"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3101
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "YL_3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-boolean v6, Lcom/syu/bt/App_Bt;->bShowFloat:Z

    if-nez v6, :cond_1

    .line 3102
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "BT_8581"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "BT_NEW_YX"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3103
    :cond_1
    iget-object v6, p0, Lcom/syu/bt/App_Bt$32$2;->this$1:Lcom/syu/bt/App_Bt$32;

    invoke-static {v6}, Lcom/syu/bt/App_Bt$32;->access$0(Lcom/syu/bt/App_Bt$32;)Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/syu/bt/App_Bt$32$2;->this$1:Lcom/syu/bt/App_Bt$32;

    invoke-static {v7}, Lcom/syu/bt/App_Bt$32;->access$0(Lcom/syu/bt/App_Bt$32;)Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v8, "bt_icon_tzy_p"

    iget-object v9, p0, Lcom/syu/bt/App_Bt$32$2;->this$1:Lcom/syu/bt/App_Bt$32;

    invoke-static {v9}, Lcom/syu/bt/App_Bt$32;->access$0(Lcom/syu/bt/App_Bt$32;)Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/syu/bt/App_Bt$32$2;->this$1:Lcom/syu/bt/App_Bt$32;

    invoke-static {v10}, Lcom/syu/bt/App_Bt$32;->access$0(Lcom/syu/bt/App_Bt$32;)Lcom/syu/bt/App_Bt;

    move-result-object v10

    iget-object v10, v10, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v7, v8, v9, v10}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3108
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    .line 3109
    .local v4, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .line 3110
    .local v5, "y":F
    iget v6, p0, Lcom/syu/bt/App_Bt$32$2;->lastX:I

    int-to-float v6, v6

    sub-float v6, v4, v6

    float-to-int v1, v6

    .line 3111
    .local v1, "ix":I
    iget v6, p0, Lcom/syu/bt/App_Bt$32$2;->lastY:I

    int-to-float v6, v6

    sub-float v6, v5, v6

    float-to-int v2, v6

    .line 3112
    .local v2, "iy":I
    iget-object v6, p0, Lcom/syu/bt/App_Bt$32$2;->this$1:Lcom/syu/bt/App_Bt$32;

    invoke-static {v6}, Lcom/syu/bt/App_Bt$32;->access$0(Lcom/syu/bt/App_Bt$32;)Lcom/syu/bt/App_Bt;

    move-result-object v6

    invoke-static {v6}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v7, v1

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3113
    iget-object v6, p0, Lcom/syu/bt/App_Bt$32$2;->this$1:Lcom/syu/bt/App_Bt$32;

    invoke-static {v6}, Lcom/syu/bt/App_Bt$32;->access$0(Lcom/syu/bt/App_Bt$32;)Lcom/syu/bt/App_Bt;

    move-result-object v6

    invoke-static {v6}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v7, v2

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3114
    float-to-int v6, v4

    iput v6, p0, Lcom/syu/bt/App_Bt$32$2;->lastX:I

    .line 3115
    float-to-int v6, v5

    iput v6, p0, Lcom/syu/bt/App_Bt$32$2;->lastY:I

    .line 3116
    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/syu/bt/App_Bt$32$2;->this$1:Lcom/syu/bt/App_Bt$32;

    invoke-static {v7}, Lcom/syu/bt/App_Bt$32;->access$0(Lcom/syu/bt/App_Bt$32;)Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/syu/bt/App_Bt$32$2;->this$1:Lcom/syu/bt/App_Bt$32;

    invoke-static {v8}, Lcom/syu/bt/App_Bt$32;->access$0(Lcom/syu/bt/App_Bt$32;)Lcom/syu/bt/App_Bt;

    move-result-object v8

    invoke-static {v8}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 3119
    .end local v1    # "ix":I
    .end local v2    # "iy":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_2
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "BT_NEW"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "YL_BT_1920"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3120
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "YL_3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-boolean v6, Lcom/syu/bt/App_Bt;->bShowFloat:Z

    if-nez v6, :cond_2

    .line 3121
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "BT_8581"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "BT_NEW_YX"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3122
    :cond_2
    iget-object v6, p0, Lcom/syu/bt/App_Bt$32$2;->this$1:Lcom/syu/bt/App_Bt$32;

    invoke-static {v6}, Lcom/syu/bt/App_Bt$32;->access$0(Lcom/syu/bt/App_Bt$32;)Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/syu/bt/App_Bt$32$2;->this$1:Lcom/syu/bt/App_Bt$32;

    invoke-static {v7}, Lcom/syu/bt/App_Bt$32;->access$0(Lcom/syu/bt/App_Bt$32;)Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v8, "bt_icon_tzy"

    iget-object v9, p0, Lcom/syu/bt/App_Bt$32$2;->this$1:Lcom/syu/bt/App_Bt$32;

    invoke-static {v9}, Lcom/syu/bt/App_Bt$32;->access$0(Lcom/syu/bt/App_Bt$32;)Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/syu/bt/App_Bt$32$2;->this$1:Lcom/syu/bt/App_Bt$32;

    invoke-static {v10}, Lcom/syu/bt/App_Bt$32;->access$0(Lcom/syu/bt/App_Bt$32;)Lcom/syu/bt/App_Bt;

    move-result-object v10

    iget-object v10, v10, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v7, v8, v9, v10}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3124
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v0, v6

    .line 3125
    .local v0, "currentTime":I
    iget v6, p0, Lcom/syu/bt/App_Bt$32$2;->lastDownTime:I

    sub-int v6, v0, v6

    const/16 v7, 0x12c

    if-ge v6, v7, :cond_0

    .line 3127
    iget-object v6, p0, Lcom/syu/bt/App_Bt$32$2;->this$1:Lcom/syu/bt/App_Bt$32;

    invoke-static {v6}, Lcom/syu/bt/App_Bt$32;->access$0(Lcom/syu/bt/App_Bt$32;)Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->performClick()Z

    goto/16 :goto_0

    .line 3094
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
