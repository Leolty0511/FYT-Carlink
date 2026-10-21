.class public Lcom/syu/bt/util/MyCircleDialog;
.super Landroid/app/Dialog;
.source "MyCircleDialog.java"


# instance fields
.field activity:Landroid/app/Activity;

.field frameAnim:Landroid/graphics/drawable/AnimationDrawable;

.field ll:Landroid/widget/LinearLayout;

.field tvMessage:Landroid/widget/TextView;

.field x_dialog:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;II)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "offX"    # I
    .param p3, "offY"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x2

    .line 28
    const-string v1, "Dialog"

    invoke-static {p1, v1}, Lcom/lsec/core/util/FuncUtils;->getIdStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 26
    const/4 v1, 0x0

    iput v1, p0, Lcom/syu/bt/util/MyCircleDialog;->x_dialog:F

    .line 29
    iput-object p1, p0, Lcom/syu/bt/util/MyCircleDialog;->activity:Landroid/app/Activity;

    .line 31
    invoke-virtual {p0}, Lcom/syu/bt/util/MyCircleDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 32
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x3e99999a    # 0.3f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 33
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 34
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 35
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 56
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 57
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 58
    invoke-virtual {p0}, Lcom/syu/bt/util/MyCircleDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 62
    invoke-virtual {p0}, Lcom/syu/bt/util/MyCircleDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "loading_dialog_bg"

    invoke-virtual {v2, v3, v4, v4}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    const-string v1, "gdy7"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 00 MyCircleDialog lp.width = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0}, Lcom/syu/bt/util/MyCircleDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "fade_anim_style"

    invoke-static {p1, v2}, Lcom/lsec/core/util/FuncUtils;->getIdStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "offX"    # I
    .param p3, "offY"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x2

    .line 71
    const-string v1, "Dialog"

    invoke-static {p1, v1}, Lcom/lsec/core/util/FuncUtils;->getIdStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 26
    const/4 v1, 0x0

    iput v1, p0, Lcom/syu/bt/util/MyCircleDialog;->x_dialog:F

    .line 74
    invoke-virtual {p0}, Lcom/syu/bt/util/MyCircleDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 75
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x3e99999a    # 0.3f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 76
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 78
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 79
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 80
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 81
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 82
    const-string v1, "gdy7"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 11 MyCircleDialog lp.width = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lcom/syu/bt/util/MyCircleDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 84
    invoke-virtual {p0}, Lcom/syu/bt/util/MyCircleDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "loading_dialog_bg"

    invoke-virtual {v2, v3, v4, v4}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    invoke-virtual {p0}, Lcom/syu/bt/util/MyCircleDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "fade_anim_style"

    invoke-static {p1, v2}, Lcom/lsec/core/util/FuncUtils;->getIdStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 88
    return-void
.end method


# virtual methods
.method public getTxt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/syu/bt/util/MyCircleDialog;->tvMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/syu/bt/util/MyCircleDialog;->tvMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDialog(Ljava/lang/CharSequence;IILandroid/graphics/Typeface;)V
    .locals 11
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "textColor"    # I
    .param p3, "textSize"    # I
    .param p4, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 91
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->ll:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 92
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 93
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->ll:Landroid/widget/LinearLayout;

    .line 96
    :cond_0
    const-string v7, "ggg"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " --- 00 showDialog message "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->activity:Landroid/app/Activity;

    if-eqz v7, :cond_d

    .line 99
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/syu/bt/util/MyCircleDialog;->activity:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->ll:Landroid/widget/LinearLayout;

    .line 103
    :goto_0
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->ll:Landroid/widget/LinearLayout;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 104
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->ll:Landroid/widget/LinearLayout;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 105
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 108
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->activity:Landroid/app/Activity;

    if-eqz v7, :cond_e

    .line 109
    new-instance v1, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->activity:Landroid/app/Activity;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 114
    .local v1, "iv":Landroid/widget/ImageView;
    :goto_1
    const/4 v6, 0x1

    .line 115
    .local v6, "showTxt":Z
    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "TZY_NEW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "TZY_OEM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "TZY_BT_1920"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 116
    :cond_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v8, "bt_download"

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 117
    const/4 v6, 0x0

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "Anim":Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v7

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, 0x7d0

    if-ne v7, v8, :cond_f

    .line 120
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v8, "loading2000_anim"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "Anim":Landroid/graphics/drawable/AnimationDrawable;
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 125
    .restart local v0    # "Anim":Landroid/graphics/drawable/AnimationDrawable;
    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 138
    :goto_3
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 141
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->frameAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 143
    :cond_2
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 144
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v7

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, 0x7d0

    if-ne v7, v8, :cond_13

    .line 145
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v7, 0xf0

    const/16 v8, 0xf0

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 167
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    :goto_4
    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "TZY_NEW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "TZY_OEM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 168
    :cond_4
    const/4 v7, 0x0

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 169
    const/4 v7, 0x0

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 170
    const/4 v7, 0x0

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 176
    :goto_5
    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "BT_23NEW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 184
    const/16 v4, 0x32

    .line 185
    .local v4, "margin":I
    const/16 v5, 0x64

    .line 186
    .local v5, "margin_bottom":I
    const-string v7, "gdy7"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " 11 showDialog width = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v9

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v9

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v7

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, 0x320

    if-le v7, v8, :cond_5

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v7

    const/4 v8, 0x1

    aget v7, v7, v8

    const/16 v8, 0x320

    if-gt v7, v8, :cond_6

    .line 188
    :cond_5
    const/16 v4, 0x14

    .line 189
    const/16 v5, 0x32

    .line 193
    :cond_6
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 194
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 195
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 196
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 197
    const/4 v7, 0x1

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 199
    const-string v7, "gdy7"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " 11 showDialog leftMargin = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v4    # "margin":I
    .end local v5    # "margin_bottom":I
    :cond_7
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "TZY_UI5"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    if-eqz v6, :cond_a

    .line 205
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->activity:Landroid/app/Activity;

    if-eqz v7, :cond_1a

    .line 206
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/syu/bt/util/MyCircleDialog;->activity:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->tvMessage:Landroid/widget/TextView;

    .line 209
    :goto_6
    if-eqz p4, :cond_8

    .line 210
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->tvMessage:Landroid/widget/TextView;

    invoke-virtual {v7, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 212
    :cond_8
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->tvMessage:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V

    .line 213
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->tvMessage:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 214
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->tvMessage:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 215
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->tvMessage:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->requestFocus()Z

    .line 216
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->tvMessage:Landroid/widget/TextView;

    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->tvMessage:Landroid/widget/TextView;

    sget-object v8, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 218
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->tvMessage:Landroid/widget/TextView;

    const/4 v8, 0x0

    int-to-float v9, p3

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 219
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->tvMessage:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 220
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->tvMessage:Landroid/widget/TextView;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->tvMessage:Landroid/widget/TextView;

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "TZY_NEW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "TZY_OEM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 223
    :cond_9
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 224
    .local v3, "lpTxt":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v7

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, 0x7d0

    if-ne v7, v8, :cond_1b

    .line 225
    const/16 v7, -0x64

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 229
    :goto_7
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->ll:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/syu/bt/util/MyCircleDialog;->tvMessage:Landroid/widget/TextView;

    invoke-virtual {v7, v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    .end local v3    # "lpTxt":Landroid/widget/LinearLayout$LayoutParams;
    :cond_a
    :goto_8
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->frameAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v7, :cond_b

    .line 244
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->frameAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 246
    :cond_b
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->activity:Landroid/app/Activity;

    if-eqz v7, :cond_c

    .line 247
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v7}, Lcom/syu/bt/util/MyCircleDialog;->setContentView(Landroid/view/View;)V

    .line 248
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v7}, Lcom/syu/bt/util/MyCircleDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 251
    :cond_c
    const-string v7, "POP"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "x_dialog"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/syu/bt/util/MyCircleDialog;->x_dialog:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "LEFT:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/syu/bt/util/MyCircleDialog;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/syu/bt/util/MyCircleDialog;->setCanceledOnTouchOutside(Z)V

    .line 253
    new-instance v7, Lcom/syu/bt/util/MyCircleDialog$1;

    invoke-direct {v7, p0}, Lcom/syu/bt/util/MyCircleDialog$1;-><init>(Lcom/syu/bt/util/MyCircleDialog;)V

    invoke-virtual {p0, v7}, Lcom/syu/bt/util/MyCircleDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 267
    return-void

    .line 101
    .end local v0    # "Anim":Landroid/graphics/drawable/AnimationDrawable;
    .end local v1    # "iv":Landroid/widget/ImageView;
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "showTxt":Z
    :cond_d
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v8

    iget-object v8, v8, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v8, v8, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->ll:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    .line 111
    :cond_e
    new-instance v1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v7, v7, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v1    # "iv":Landroid/widget/ImageView;
    goto/16 :goto_1

    .line 122
    .restart local v0    # "Anim":Landroid/graphics/drawable/AnimationDrawable;
    .restart local v6    # "showTxt":Z
    :cond_f
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v8, "loading_anim"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "Anim":Landroid/graphics/drawable/AnimationDrawable;
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .restart local v0    # "Anim":Landroid/graphics/drawable/AnimationDrawable;
    goto/16 :goto_2

    .line 127
    .end local v0    # "Anim":Landroid/graphics/drawable/AnimationDrawable;
    :cond_10
    const/4 v0, 0x0

    .line 128
    .restart local v0    # "Anim":Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v7

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, 0x7d0

    if-ne v7, v8, :cond_11

    .line 129
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v8, "loading2000_anim_list"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "Anim":Landroid/graphics/drawable/AnimationDrawable;
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 131
    .restart local v0    # "Anim":Landroid/graphics/drawable/AnimationDrawable;
    :cond_11
    if-nez v0, :cond_12

    .line 132
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v8, "loading_anim_list"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .end local v0    # "Anim":Landroid/graphics/drawable/AnimationDrawable;
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 134
    .restart local v0    # "Anim":Landroid/graphics/drawable/AnimationDrawable;
    :cond_12
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 146
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_13
    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "TZY_NEW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v7

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, 0x7d0

    if-ne v7, v8, :cond_15

    .line 147
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v8, "bt_download"

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 148
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v7, 0x221

    const/16 v8, 0xda

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 149
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    goto/16 :goto_4

    .line 150
    :cond_14
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v7, 0x118

    const/16 v8, 0x118

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 152
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    goto/16 :goto_4

    :cond_15
    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "BT_23NEW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 154
    const-string v7, "gdy7"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " 11 showDialog width = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v9

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v7

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, 0x780

    if-lt v7, v8, :cond_16

    .line 157
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v7, 0xc8

    const/16 v8, 0xc8

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    goto/16 :goto_4

    .line 158
    :cond_16
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v7

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, 0x500

    if-ge v7, v8, :cond_17

    .line 159
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v7, 0x64

    const/16 v8, 0x64

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 160
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    goto/16 :goto_4

    .line 162
    :cond_17
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v7, 0x96

    const/16 v8, 0x96

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 163
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    goto/16 :goto_4

    :cond_18
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v7

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, 0x7d0

    if-ne v7, v8, :cond_3

    .line 164
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v7, 0xf0

    const/16 v8, 0xf0

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    goto/16 :goto_4

    .line 172
    :cond_19
    const/16 v7, 0x14

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 173
    const/16 v7, 0x14

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 174
    const/4 v7, 0x5

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_5

    .line 208
    :cond_1a
    new-instance v7, Landroid/widget/TextView;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v8

    iget-object v8, v8, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v8, v8, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->tvMessage:Landroid/widget/TextView;

    goto/16 :goto_6

    .line 227
    .restart local v3    # "lpTxt":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1b
    const/16 v7, -0x41

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto/16 :goto_7

    .line 230
    .end local v3    # "lpTxt":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1c
    sget-object v7, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "BT_23NEW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 231
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 232
    .restart local v3    # "lpTxt":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v7

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, 0x320

    if-le v7, v8, :cond_1d

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v7

    const/4 v8, 0x1

    aget v7, v7, v8

    const/16 v8, 0x320

    if-gt v7, v8, :cond_1e

    .line 233
    :cond_1d
    const/16 v7, -0x1e

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 236
    :goto_9
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->ll:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/syu/bt/util/MyCircleDialog;->tvMessage:Landroid/widget/TextView;

    invoke-virtual {v7, v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_8

    .line 235
    :cond_1e
    const/16 v7, -0x41

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_9

    .line 238
    .end local v3    # "lpTxt":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1f
    iget-object v7, p0, Lcom/syu/bt/util/MyCircleDialog;->ll:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/syu/bt/util/MyCircleDialog;->tvMessage:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_8
.end method

.method public showTxt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/syu/bt/util/MyCircleDialog;->tvMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/syu/bt/util/MyCircleDialog;->tvMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :cond_0
    return-void
.end method
