.class Lcom/syu/bt/App_Bt$32;
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
    iput-object p1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    .line 2865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/syu/bt/App_Bt$32;)Lcom/syu/bt/App_Bt;
    .locals 1

    .prologue
    .line 2865
    iget-object v0, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v4, 0x11

    const/16 v9, 0xd0

    const/16 v8, 0x320

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2869
    const-string v1, "gdy77"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 00 mRunnable_ShowFloatButton bFloatViewShow = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-boolean v3, v3, Lcom/syu/bt/App_Bt;->bFloatViewShow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bFloatViewShow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-boolean v3, v3, Lcom/syu/bt/App_Bt;->bFloatViewShow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2870
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-virtual {v1}, Lcom/syu/bt/App_Bt;->isAppTop()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2871
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-boolean v1, v1, Lcom/syu/bt/App_Bt;->bFloatViewShow:Z

    if-eqz v1, :cond_1

    .line 3146
    :cond_0
    :goto_0
    return-void

    .line 2875
    :cond_1
    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 2876
    const-string v1, "gdy77"

    const-string v2, " 11 App_BT   "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    if-nez v1, :cond_1c

    .line 2878
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    new-instance v2, Landroid/widget/TextView;

    sget-object v3, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    .line 2879
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_NEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2880
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "YL_3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2881
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "YL_BT_1920"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2882
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_8581"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2883
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_NEW_YX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/syu/bt/App_Bt;->bShowFloat:Z

    if-eqz v1, :cond_8

    .line 2884
    :cond_2
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 2885
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2886
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    const/high16 v3, 0x41b80000    # 23.0f

    invoke-virtual {v2, v3}, Lcom/syu/bt/App_Bt;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2888
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "TZY_OEM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2889
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    const/16 v2, 0x50

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2897
    :goto_1
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v1

    aget v1, v1, v6

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_7

    .line 2898
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "bt2000_icon_tzy"

    iget-object v4, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2902
    :goto_2
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v3, "float_x"

    invoke-virtual {v2, v3, v6}, Lcom/lsec/core/util/MySharePreference2;->getIntValue(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/syu/bt/App_Bt;->posx:I

    .line 2903
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v3, "float_y"

    invoke-virtual {v2, v3, v6}, Lcom/lsec/core/util/MySharePreference2;->getIntValue(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/syu/bt/App_Bt;->posy:I

    .line 2956
    :goto_3
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-static {v1, v2}, Lcom/syu/bt/App_Bt;->access$0(Lcom/syu/bt/App_Bt;Landroid/view/WindowManager$LayoutParams;)V

    .line 2957
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x7ea

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2958
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x128

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2963
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2964
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x3f4ccccd    # 0.8f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 2965
    const-string v1, "gdy77"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 00 mRunnable_ShowFloatButton getWindowManeger()[0] = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v3

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2966
    const-string v3, " getWindowManeger()[1] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v3

    aget v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2965
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bShowBtInNaviFloatBtn:Z

    if-eqz v1, :cond_11

    .line 2968
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    const/high16 v3, 0x42700000    # 60.0f

    invoke-virtual {v2, v3}, Lcom/syu/bt/App_Bt;->dp2px(F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2969
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    const/high16 v3, 0x42700000    # 60.0f

    invoke-virtual {v2, v3}, Lcom/syu/bt/App_Bt;->dp2px(F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2970
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0xa

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2971
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0xa

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2972
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x55

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3064
    :cond_3
    :goto_4
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3065
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    new-instance v2, Lcom/syu/bt/App_Bt$32$1;

    invoke-direct {v2, p0}, Lcom/syu/bt/App_Bt$32$1;-><init>(Lcom/syu/bt/App_Bt$32;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3085
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    new-instance v2, Lcom/syu/bt/App_Bt$32$2;

    invoke-direct {v2, p0}, Lcom/syu/bt/App_Bt$32$2;-><init>(Lcom/syu/bt/App_Bt$32;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3138
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iput-boolean v7, v1, Lcom/syu/bt/App_Bt;->bFloatViewShow:Z

    .line 3139
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bShowBtInNaviFloatBtn:Z

    if-eqz v1, :cond_4

    .line 3140
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v1}, Lcom/syu/app/ipc/Bt_IpcObj;->addNotify_PopBt()V

    .line 3142
    :cond_4
    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v3}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2891
    :cond_5
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v1

    aget v1, v1, v6

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_6

    .line 2892
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    const/16 v2, 0x49

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 2894
    :cond_6
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    const/16 v2, 0x35

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 2900
    :cond_7
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "bt_icon_tzy"

    iget-object v4, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 2905
    :cond_8
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_23NEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2906
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 2907
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2908
    const-string v1, "gdy77"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 22 App_BT Bt.sPhoneNumber getWindowManeger = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v3

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v1

    aget v1, v1, v7

    const/16 v2, 0x514

    if-le v1, v2, :cond_9

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v1

    aget v1, v1, v6

    const/16 v2, 0x514

    if-le v1, v2, :cond_9

    .line 2910
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2911
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    const/16 v2, 0x8c

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2931
    :goto_5
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/syu/bt/util/BTUtil;->getHeadIco(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2932
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_b

    .line 2933
    const-string v1, "gdy77"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 33 App_BT defaultPhone bmp != null Bt.sPhoneNumber = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/syu/bt/util/BTUtil;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 2912
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_9
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v1

    aget v1, v1, v7

    if-le v1, v8, :cond_a

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v1

    aget v1, v1, v6

    if-le v1, v8, :cond_a

    .line 2913
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2914
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    const/16 v2, 0x8c

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_5

    .line 2916
    :cond_a
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2917
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    const/16 v2, 0x46

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_5

    .line 2936
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_b
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "btpop_user_icon"

    iget-object v4, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 2938
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_c
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_YX1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2939
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2940
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 2941
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2942
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    const/16 v2, 0x2d

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2943
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "bt_icon_tzy"

    iget-object v4, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 2944
    :cond_d
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "SYU-XN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "SYU-XN-KY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2945
    :cond_e
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2946
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 2947
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2948
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    const/16 v2, 0x8c

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2949
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "btpop_user_icon"

    iget-object v4, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 2951
    :cond_f
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bShowBtInNaviFloatBtn:Z

    if-eqz v1, :cond_10

    .line 2952
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "bt_icon4"

    iget-object v4, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 2954
    :cond_10
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "bt_icon"

    iget-object v4, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 2973
    :cond_11
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v1

    if-nez v1, :cond_12

    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_NEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2974
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "YL_3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2975
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "YL_BT_1920"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2976
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_8581"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2977
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_NEW_YX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2978
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bShowFloat:Z

    if-eqz v1, :cond_15

    .line 2980
    :cond_12
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "TZY_OEM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2981
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    const/high16 v3, 0x42f00000    # 120.0f

    invoke-virtual {v2, v3}, Lcom/syu/bt/App_Bt;->dp2px(F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2982
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    const/high16 v3, 0x430c0000    # 140.0f

    invoke-virtual {v2, v3}, Lcom/syu/bt/App_Bt;->dp2px(F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2992
    :goto_6
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget v2, v2, Lcom/syu/bt/App_Bt;->posx:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2993
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget v2, v2, Lcom/syu/bt/App_Bt;->posy:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2994
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x53

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2996
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_4

    .line 2984
    :cond_13
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v1

    aget v1, v1, v6

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_14

    .line 2985
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    const/high16 v3, 0x43480000    # 200.0f

    invoke-virtual {v2, v3}, Lcom/syu/bt/App_Bt;->dp2px(F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2986
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    const/high16 v3, 0x43480000    # 200.0f

    invoke-virtual {v2, v3}, Lcom/syu/bt/App_Bt;->dp2px(F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_6

    .line 2988
    :cond_14
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    const/high16 v3, 0x430c0000    # 140.0f

    invoke-virtual {v2, v3}, Lcom/syu/bt/App_Bt;->dp2px(F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2989
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    const/high16 v3, 0x430c0000    # 140.0f

    invoke-virtual {v2, v3}, Lcom/syu/bt/App_Bt;->dp2px(F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_6

    .line 2997
    :cond_15
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_23NEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2998
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v1

    aget v1, v1, v7

    if-le v1, v8, :cond_17

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v1

    aget v1, v1, v6

    if-le v1, v8, :cond_17

    .line 2999
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v9, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3000
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v9, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3009
    :goto_7
    const-string v1, "gdy77"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 11 mRunnable_ShowFloatButton Bt.sPhoneNumber = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  getWindowManeger = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v3

    aget v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v3

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x53

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3012
    sget v1, Lcom/syu/bt/App_Bt;->barHeight:I

    if-lez v1, :cond_3

    const-string v1, "6318"

    sget-object v2, Lcom/syu/bt/App_Bt;->mStrPlatForm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "6321"

    sget-object v2, Lcom/syu/bt/App_Bt;->mStrPlatForm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3014
    :cond_16
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_23NEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3017
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v2}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    sget v3, Lcom/syu/bt/App_Bt;->barHeight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_4

    .line 3001
    :cond_17
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v1

    aget v1, v1, v7

    const/16 v2, 0x5dc

    if-le v1, v2, :cond_18

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v1

    aget v1, v1, v6

    const/16 v2, 0x5dc

    if-le v1, v2, :cond_18

    .line 3002
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x138

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3003
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x138

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_7

    .line 3006
    :cond_18
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x64

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3007
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x64

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_7

    .line 3020
    :cond_19
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "SYU-XN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "SYU-XN-KY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 3021
    :cond_1a
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v9, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3022
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v9, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3023
    const-string v1, "gdy77"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 11 mRunnable_ShowFloatButton Bt.sPhoneNumber = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  lpFloat.width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v3}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3024
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x53

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_4

    .line 3026
    :cond_1b
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-virtual {v2, v3}, Lcom/syu/bt/App_Bt;->dp2px(F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3027
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-virtual {v2, v3}, Lcom/syu/bt/App_Bt;->dp2px(F)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3028
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3029
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3030
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x53

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_4

    .line 3032
    :cond_1c
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_23NEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3033
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/syu/bt/util/BTUtil;->getHeadIco(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3034
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1e

    .line 3035
    const-string v1, "gdy77"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 33 App_BT defaultPhone bmp != null Bt.sPhoneNumber = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/syu/bt/util/BTUtil;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3043
    :goto_8
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v1

    aget v1, v1, v7

    if-le v1, v8, :cond_20

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v1

    aget v1, v1, v6

    if-le v1, v8, :cond_20

    .line 3044
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v9, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3045
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v9, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3054
    :goto_9
    sget v1, Lcom/syu/bt/App_Bt;->barHeight:I

    if-lez v1, :cond_3

    const-string v1, "6318"

    sget-object v2, Lcom/syu/bt/App_Bt;->mStrPlatForm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "6321"

    sget-object v2, Lcom/syu/bt/App_Bt;->mStrPlatForm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3056
    :cond_1d
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_23NEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "SYU-XN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    goto/16 :goto_4

    .line 3038
    :cond_1e
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v1

    aget v1, v1, v7

    if-le v1, v8, :cond_1f

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v1

    aget v1, v1, v6

    if-le v1, v8, :cond_1f

    .line 3039
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "btpop_user_icon"

    iget-object v4, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 3041
    :cond_1f
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mTxtFloat:Landroid/widget/TextView;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "btpop_user_icon_108"

    iget-object v4, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 3046
    :cond_20
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v1

    aget v1, v1, v7

    const/16 v2, 0x5dc

    if-le v1, v2, :cond_21

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v1

    aget v1, v1, v6

    const/16 v2, 0x5dc

    if-le v1, v2, :cond_21

    .line 3047
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x138

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3048
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x138

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_9

    .line 3051
    :cond_21
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x64

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3052
    iget-object v1, p0, Lcom/syu/bt/App_Bt$32;->this$0:Lcom/syu/bt/App_Bt;

    invoke-static {v1}, Lcom/syu/bt/App_Bt;->access$1(Lcom/syu/bt/App_Bt;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x64

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_9
.end method
