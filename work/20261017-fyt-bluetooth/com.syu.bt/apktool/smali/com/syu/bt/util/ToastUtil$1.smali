.class Lcom/syu/bt/util/ToastUtil$1;
.super Ljava/lang/Object;
.source "ToastUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/util/ToastUtil;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/util/ToastUtil;


# direct methods
.method constructor <init>(Lcom/syu/bt/util/ToastUtil;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0x320

    const/16 v8, 0x50

    const/16 v7, 0x1e

    const/4 v6, 0x0

    const/16 v5, 0x32

    .line 35
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v2, v2, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/syu/bt/util/ToastUtil;->mTextView:Landroid/widget/TextView;

    .line 37
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v0, v0, Lcom/syu/bt/util/ToastUtil;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "toast_bg"

    iget-object v3, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v3, v3, Lcom/syu/bt/util/ToastUtil;->mapDrawables:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 38
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v0, v0, Lcom/syu/bt/util/ToastUtil;->mTextView:Landroid/widget/TextView;

    const/high16 v1, 0x44160000    # 600.0f

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget v2, v2, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 39
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v0, v0, Lcom/syu/bt/util/ToastUtil;->mTextView:Landroid/widget/TextView;

    const/high16 v1, 0x43b40000    # 360.0f

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget v2, v2, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 41
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v0, v0, Lcom/syu/bt/util/ToastUtil;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 42
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v0, v0, Lcom/syu/bt/util/ToastUtil;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    :goto_0
    sget-object v0, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v1, "TZY_NEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v0

    aget v0, v0, v6

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_4

    .line 54
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v0, v0, Lcom/syu/bt/util/ToastUtil;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v7, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 55
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v0, v0, Lcom/syu/bt/util/ToastUtil;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 56
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v0, v0, Lcom/syu/bt/util/ToastUtil;->mTextView:Landroid/widget/TextView;

    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget v2, v2, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 79
    :goto_1
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    new-instance v1, Landroid/widget/Toast;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v2, v2, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/syu/bt/util/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 80
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v0, v0, Lcom/syu/bt/util/ToastUtil;->mToast:Landroid/widget/Toast;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 81
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v0, v0, Lcom/syu/bt/util/ToastUtil;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sget-object v2, Lcom/syu/bt/App_Bt;->ToastUtil_XY:[I

    aget v2, v2, v6

    const/high16 v3, 0x42700000    # 60.0f

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget v4, v4, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 82
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v0, v0, Lcom/syu/bt/util/ToastUtil;->mToast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v1, v1, Lcom/syu/bt/util/ToastUtil;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 83
    return-void

    .line 44
    :cond_0
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v1, "TZY_NEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v1, "TZY_OEM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    sget-object v0, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v1, "BT_23NEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v0, v0, Lcom/syu/bt/util/ToastUtil;->mTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 47
    :cond_2
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bAI_JZ2:Z

    if-eqz v0, :cond_3

    .line 48
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v0, v0, Lcom/syu/bt/util/ToastUtil;->mTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 50
    :cond_3
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v0, v0, Lcom/syu/bt/util/ToastUtil;->mTextView:Landroid/widget/TextView;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 57
    :cond_4
    sget-object v0, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v1, "BT_23NEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 59
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    if-le v0, v9, :cond_5

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v0

    aget v0, v0, v6

    if-le v0, v9, :cond_5

    .line 60
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v0, v0, Lcom/syu/bt/util/ToastUtil;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v5, v8, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 61
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v0, v0, Lcom/syu/bt/util/ToastUtil;->mTextView:Landroid/widget/TextView;

    const/high16 v1, 0x42340000    # 45.0f

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget v2, v2, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_1

    .line 64
    :cond_5
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v0, v0, Lcom/syu/bt/util/ToastUtil;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v7, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 65
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v0, v0, Lcom/syu/bt/util/ToastUtil;->mTextView:Landroid/widget/TextView;

    const/high16 v1, 0x420c0000    # 35.0f

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget v2, v2, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_1

    .line 68
    :cond_6
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    if-le v0, v9, :cond_7

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v0

    aget v0, v0, v6

    if-le v0, v9, :cond_7

    .line 69
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v0, v0, Lcom/syu/bt/util/ToastUtil;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v5, v8, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 70
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v0, v0, Lcom/syu/bt/util/ToastUtil;->mTextView:Landroid/widget/TextView;

    const/high16 v1, 0x42340000    # 45.0f

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget v2, v2, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_1

    .line 73
    :cond_7
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v0, v0, Lcom/syu/bt/util/ToastUtil;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v7, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 74
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil$1;->this$0:Lcom/syu/bt/util/ToastUtil;

    iget-object v0, v0, Lcom/syu/bt/util/ToastUtil;->mTextView:Landroid/widget/TextView;

    const/high16 v1, 0x420c0000    # 35.0f

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget v2, v2, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_1
.end method
