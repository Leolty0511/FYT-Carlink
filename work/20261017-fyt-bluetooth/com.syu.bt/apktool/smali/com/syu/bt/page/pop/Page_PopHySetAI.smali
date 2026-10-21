.class public Lcom/syu/bt/page/pop/Page_PopHySetAI;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_PopHySetAI.java"


# instance fields
.field actBt:Lcom/syu/bt/Act_Bt;

.field btn_minus:Lcom/lsec/core/frame/ctrl/JButton;

.field btn_plus:Lcom/lsec/core/frame/ctrl/JButton;

.field public iHySet:I

.field public iHySet_p:I

.field public iMoveStar:I

.field public iMoveTxtWidth:I

.field public iMoveWidth:I

.field isPlus:Z

.field private mRunBtnTouch:Ljava/lang/Runnable;

.field private mRunSetHy:Ljava/lang/Runnable;

.field moveView:Lcom/lsec/core/frame/ctrl/JButton;

.field setView:Landroid/view/View;

.field set_0:Lcom/lsec/core/frame/ctrl/JButton;

.field set_1:Lcom/lsec/core/frame/ctrl/JButton;

.field set_2:Lcom/lsec/core/frame/ctrl/JButton;

.field tvHySet:Lcom/lsec/core/frame/ctrl/JText;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 5
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    const/16 v4, 0xc8

    const/4 v3, 0x0

    .line 54
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v1}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 48
    iput v3, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iMoveWidth:I

    .line 49
    iput v3, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iMoveTxtWidth:I

    .line 50
    iput v3, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iMoveStar:I

    .line 51
    iput v3, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    .line 52
    iput v4, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet_p:I

    .line 200
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->isPlus:Z

    .line 201
    new-instance v1, Lcom/syu/bt/page/pop/Page_PopHySetAI$1;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/pop/Page_PopHySetAI$1;-><init>(Lcom/syu/bt/page/pop/Page_PopHySetAI;)V

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->mRunBtnTouch:Ljava/lang/Runnable;

    .line 303
    new-instance v1, Lcom/syu/bt/page/pop/Page_PopHySetAI$2;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/pop/Page_PopHySetAI$2;-><init>(Lcom/syu/bt/page/pop/Page_PopHySetAI;)V

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->mRunSetHy:Ljava/lang/Runnable;

    .line 55
    iput-object p2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->actBt:Lcom/syu/bt/Act_Bt;

    .line 56
    iget-object v1, p2, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x2725

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 58
    .local v0, "pageDlg":Lcom/lsec/core/frame/ctrl/JPage;
    const/16 v1, 0x2871

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->moveView:Lcom/lsec/core/frame/ctrl/JButton;

    .line 59
    const/16 v1, 0x286e

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->setView:Landroid/view/View;

    .line 60
    const/16 v1, 0x2872

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    .line 61
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JText;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iMoveTxtWidth:I

    .line 64
    :cond_0
    const-string v1, "persist.btaec.delay"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    .line 65
    const-string v1, "persist.btaec.delay_p"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet_p:I

    .line 66
    const-string v1, "hy"

    const-string v2, " 00 Page_PopHySetAI init "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/16 v1, 0x286b

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->set_0:Lcom/lsec/core/frame/ctrl/JButton;

    .line 68
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->set_0:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->set_0:Lcom/lsec/core/frame/ctrl/JButton;

    new-instance v2, Lcom/syu/bt/page/pop/Page_PopHySetAI$3;

    invoke-direct {v2, p0}, Lcom/syu/bt/page/pop/Page_PopHySetAI$3;-><init>(Lcom/syu/bt/page/pop/Page_PopHySetAI;)V

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :cond_1
    const/16 v1, 0x286c

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->set_1:Lcom/lsec/core/frame/ctrl/JButton;

    .line 80
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->set_1:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->set_1:Lcom/lsec/core/frame/ctrl/JButton;

    new-instance v2, Lcom/syu/bt/page/pop/Page_PopHySetAI$4;

    invoke-direct {v2, p0}, Lcom/syu/bt/page/pop/Page_PopHySetAI$4;-><init>(Lcom/syu/bt/page/pop/Page_PopHySetAI;)V

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :cond_2
    const/16 v1, 0x286d

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->set_2:Lcom/lsec/core/frame/ctrl/JButton;

    .line 90
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->set_2:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v1, :cond_3

    .line 91
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->set_2:Lcom/lsec/core/frame/ctrl/JButton;

    new-instance v2, Lcom/syu/bt/page/pop/Page_PopHySetAI$5;

    invoke-direct {v2, p0}, Lcom/syu/bt/page/pop/Page_PopHySetAI$5;-><init>(Lcom/syu/bt/page/pop/Page_PopHySetAI;)V

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :cond_3
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->set_0:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v1, :cond_4

    .line 102
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->set_0:Lcom/lsec/core/frame/ctrl/JButton;

    new-instance v2, Lcom/syu/bt/page/pop/Page_PopHySetAI$6;

    invoke-direct {v2, p0}, Lcom/syu/bt/page/pop/Page_PopHySetAI$6;-><init>(Lcom/syu/bt/page/pop/Page_PopHySetAI;)V

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    :cond_4
    const/16 v1, 0x286f

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->btn_minus:Lcom/lsec/core/frame/ctrl/JButton;

    .line 112
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->btn_minus:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v1, :cond_5

    .line 113
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->btn_minus:Lcom/lsec/core/frame/ctrl/JButton;

    new-instance v2, Lcom/syu/bt/page/pop/Page_PopHySetAI$7;

    invoke-direct {v2, p0}, Lcom/syu/bt/page/pop/Page_PopHySetAI$7;-><init>(Lcom/syu/bt/page/pop/Page_PopHySetAI;)V

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 139
    :cond_5
    const/16 v1, 0x2870

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->btn_plus:Lcom/lsec/core/frame/ctrl/JButton;

    .line 140
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->btn_plus:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v1, :cond_6

    .line 141
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->btn_plus:Lcom/lsec/core/frame/ctrl/JButton;

    new-instance v2, Lcom/syu/bt/page/pop/Page_PopHySetAI$8;

    invoke-direct {v2, p0}, Lcom/syu/bt/page/pop/Page_PopHySetAI$8;-><init>(Lcom/syu/bt/page/pop/Page_PopHySetAI;)V

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 167
    :cond_6
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->moveView:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v1, :cond_7

    .line 168
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->moveView:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JButton;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iMoveWidth:I

    .line 169
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->moveView:Lcom/lsec/core/frame/ctrl/JButton;

    new-instance v2, Lcom/syu/bt/page/pop/Page_PopHySetAI$9;

    invoke-direct {v2, p0}, Lcom/syu/bt/page/pop/Page_PopHySetAI$9;-><init>(Lcom/syu/bt/page/pop/Page_PopHySetAI;)V

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 198
    :cond_7
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopHySetAI;->showHySet()V

    .line 199
    return-void
.end method

.method static synthetic access$0(Lcom/syu/bt/page/pop/Page_PopHySetAI;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->mRunBtnTouch:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public showHySet()V
    .locals 5

    .prologue
    const/16 v4, 0x7d0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 244
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->set_0:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_0

    .line 245
    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->set_0:Lcom/lsec/core/frame/ctrl/JButton;

    iget v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->set_1:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_1

    .line 247
    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->set_1:Lcom/lsec/core/frame/ctrl/JButton;

    iget v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    if-eq v0, v4, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->set_2:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->set_2:Lcom/lsec/core/frame/ctrl/JButton;

    iget v3, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    if-ne v3, v4, :cond_7

    :goto_2
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->setView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->setView:Landroid/view/View;

    iget v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    if-eq v1, v4, :cond_8

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 254
    :cond_3
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_4

    .line 255
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 256
    const v0, 0xffff

    invoke-virtual {p0, v0}, Lcom/syu/bt/page/pop/Page_PopHySetAI;->textMove(I)V

    .line 257
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->mRunSetHy:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 258
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->mRunSetHy:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 260
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 245
    goto :goto_0

    :cond_6
    move v0, v2

    .line 247
    goto :goto_1

    :cond_7
    move v1, v2

    .line 249
    goto :goto_2

    .line 252
    :cond_8
    const/16 v2, 0x8

    goto :goto_3
.end method

.method public textMove(I)V
    .locals 7
    .param p1, "iMove"    # I

    .prologue
    const/4 v5, 0x1

    .line 263
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v2, :cond_3

    .line 264
    iget v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iMoveWidth:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->moveView:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v2, :cond_0

    .line 265
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->moveView:Lcom/lsec/core/frame/ctrl/JButton;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JButton;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iMoveWidth:I

    .line 266
    :cond_0
    iget v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iMoveTxtWidth:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v2, :cond_1

    .line 267
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JText;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iMoveTxtWidth:I

    .line 269
    :cond_1
    const-string v2, "move1"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 00 ActBt showMenuSel  imove = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " iMoveWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iMoveWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iMoveWidth:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iMoveTxtWidth:I

    if-nez v2, :cond_4

    .line 271
    :cond_2
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    new-instance v3, Lcom/syu/bt/page/pop/Page_PopHySetAI$10;

    invoke-direct {v3, p0}, Lcom/syu/bt/page/pop/Page_PopHySetAI$10;-><init>(Lcom/syu/bt/page/pop/Page_PopHySetAI;)V

    .line 277
    const-wide/16 v4, 0x1f4

    .line 271
    invoke-virtual {v2, v3, v4, v5}, Lcom/lsec/core/frame/ctrl/JText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    :cond_3
    :goto_0
    return-void

    .line 280
    :cond_4
    iget v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iMoveWidth:I

    iget v3, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iMoveTxtWidth:I

    sub-int v1, v2, v3

    .line 281
    .local v1, "moveWidth":I
    const v2, 0xffff

    if-ne p1, v2, :cond_5

    .line 282
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    mul-int/2addr v2, v1

    div-int/lit16 p1, v2, 0x7cf

    .line 295
    :goto_1
    const-string v2, "move1"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 11 ActBt showMenuSel  imove = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " iMoveWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iMoveWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    const-string v3, "translationX"

    new-array v4, v5, [F

    const/4 v5, 0x0

    int-to-float v6, p1

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 299
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 300
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 285
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_5
    if-gtz p1, :cond_8

    .line 286
    const/4 p1, 0x0

    .line 289
    :cond_6
    :goto_2
    mul-int/lit16 v2, p1, 0x7cf

    div-int/2addr v2, v1

    iput v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    .line 290
    iget v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    if-nez v2, :cond_7

    .line 291
    iput v5, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    .line 292
    :cond_7
    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/syu/bt/page/pop/Page_PopHySetAI;->iHySet:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 287
    :cond_8
    if-lt p1, v1, :cond_6

    .line 288
    move p1, v1

    goto :goto_2
.end method
