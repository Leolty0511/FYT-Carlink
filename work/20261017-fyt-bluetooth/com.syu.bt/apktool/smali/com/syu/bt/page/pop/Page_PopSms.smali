.class public Lcom/syu/bt/page/pop/Page_PopSms;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_PopSms.java"


# instance fields
.field vInfo:Lcom/lsec/core/frame/ctrl/JText;

.field vNext:Lcom/lsec/core/frame/ctrl/JText;

.field vNumber:Lcom/lsec/core/frame/ctrl/JText;

.field vTime:Lcom/lsec/core/frame/ctrl/JText;

.field value:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 1
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    .line 24
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 26
    return-void
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 131
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 141
    :pswitch_0
    sget-object v1, Lcom/syu/bt/App_Bt;->myHandle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopSms;->value:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopSms;->value:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 146
    :cond_1
    sget-object v1, Lcom/syu/bt/App_Bt;->myHandle:Ljava/util/List;

    sget-object v2, Lcom/syu/bt/App_Bt;->myHandle:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/syu/bt/App_Bt;->handleSMS:Ljava/lang/String;

    .line 147
    sget-object v1, Lcom/syu/bt/App_Bt;->myHandle:Ljava/util/List;

    sget-object v2, Lcom/syu/bt/App_Bt;->handleSMS:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 148
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    sget-object v2, Lcom/syu/bt/App_Bt;->handleSMS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/syu/app/ipc/Bt_IpcObj;->requestSMS(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopSms;->value:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    .line 155
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopSms;->value:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 157
    :cond_2
    sget-object v1, Lcom/syu/bt/App_Bt;->myHandle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 158
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/syu/bt/App_Bt;->popPhoneSMS(Z)V

    .line 159
    sput-boolean v2, Lcom/syu/bt/App_Bt;->bSms_Ctrl:Z

    .line 160
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v2, "sms_function"

    sget-boolean v3, Lcom/syu/bt/App_Bt;->bSms_Ctrl:Z

    invoke-virtual {v1, v2, v3}, Lcom/lsec/core/util/MySharePreference2;->saveBooleanValue(Ljava/lang/String;Z)V

    goto :goto_0

    .line 163
    :pswitch_2
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopSms;->value:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    .line 164
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopSms;->value:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 166
    :cond_3
    sget-object v1, Lcom/syu/bt/App_Bt;->myHandle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 167
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/syu/bt/App_Bt;->popPhoneSMS(Z)V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x6d
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public init()V
    .locals 3

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopSms;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopSms;->vTime:Lcom/lsec/core/frame/ctrl/JText;

    .line 33
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopSms;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopSms;->vNumber:Lcom/lsec/core/frame/ctrl/JText;

    .line 34
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopSms;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopSms;->vInfo:Lcom/lsec/core/frame/ctrl/JText;

    .line 35
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopSms;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopSms;->vNext:Lcom/lsec/core/frame/ctrl/JText;

    .line 37
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopSms;->vTime:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_0

    .line 39
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "TZY_NEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopSms;->vTime:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v2, v2, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopSms;->vNumber:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_1

    .line 44
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "TZY_NEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopSms;->vNumber:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v2, v2, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopSms;->vInfo:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_2

    .line 49
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "TZY_NEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopSms;->vInfo:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v2, v2, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/syu/bt/util/BTUtil;->getTypeFace_Regular(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopSms;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 54
    .local v0, "close":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v0, :cond_3

    .line 55
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 56
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_always"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_3
    :goto_0
    return-void

    .line 58
    :cond_4
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_closed"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateSms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopSms;->vTime:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopSms;->value:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopSms;->value:Landroid/animation/ValueAnimator;

    .line 68
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopSms;->value:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/syu/bt/page/pop/Page_PopSms$1;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/pop/Page_PopSms$1;-><init>(Lcom/syu/bt/page/pop/Page_PopSms;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 76
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopSms;->value:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 77
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopSms;->value:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/syu/bt/page/pop/Page_PopSms$2;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/pop/Page_PopSms$2;-><init>(Lcom/syu/bt/page/pop/Page_PopSms;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopSms;->value:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 103
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopSms;->value:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopSms;->vNumber:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopSms;->vNumber:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v0, p1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopSms;->vInfo:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopSms;->vInfo:Lcom/lsec/core/frame/ctrl/JText;

    const/4 v1, 0x0

    const v2, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setLineSpacing(FF)V

    .line 113
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopSms;->vInfo:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v0, p2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_3
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopSms;->updateSmsNum()V

    .line 118
    return-void

    .line 67
    :array_0
    .array-data 4
        0x3e8
        0x0
    .end array-data
.end method

.method public updateSmsNum()V
    .locals 5

    .prologue
    .line 121
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopSms;->vNext:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopSms;->vNext:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_next"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/syu/bt/App_Bt;->myHandle:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_0
    return-void
.end method
