.class public Lcom/syu/bt/page/pop/Page_PopCODEC;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_PopCODEC.java"


# instance fields
.field actBt:Lcom/syu/bt/Act_Bt;

.field btn_codec0:Lcom/lsec/core/frame/ctrl/JButton;

.field btn_codec1:Lcom/lsec/core/frame/ctrl/JButton;

.field btn_codec2:Lcom/lsec/core/frame/ctrl/JButton;

.field btn_codec3:Lcom/lsec/core/frame/ctrl/JButton;

.field public iCodec:I

.field private mRunDismiss:Ljava/lang/Runnable;

.field private mRunSetCodec:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 6
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v1}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 44
    iput v3, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->iCodec:I

    .line 167
    new-instance v1, Lcom/syu/bt/page/pop/Page_PopCODEC$1;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/pop/Page_PopCODEC$1;-><init>(Lcom/syu/bt/page/pop/Page_PopCODEC;)V

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->mRunSetCodec:Ljava/lang/Runnable;

    .line 175
    new-instance v1, Lcom/syu/bt/page/pop/Page_PopCODEC$2;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/pop/Page_PopCODEC$2;-><init>(Lcom/syu/bt/page/pop/Page_PopCODEC;)V

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->mRunDismiss:Ljava/lang/Runnable;

    .line 47
    iput-object p2, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->actBt:Lcom/syu/bt/Act_Bt;

    .line 48
    iget-object v1, p2, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x272f

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 49
    .local v0, "pageDlg":Lcom/lsec/core/frame/ctrl/JPage;
    const-string v1, "persist.blinkbt.a2dp.codec"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->iCodec:I

    .line 50
    const-string v1, "hy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 00 Page_PopHySet init iCodec = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->iCodec:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/16 v1, 0x28c8

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->btn_codec0:Lcom/lsec/core/frame/ctrl/JButton;

    .line 52
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->btn_codec0:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->btn_codec0:Lcom/lsec/core/frame/ctrl/JButton;

    new-instance v2, Lcom/syu/bt/page/pop/Page_PopCODEC$3;

    invoke-direct {v2, p0}, Lcom/syu/bt/page/pop/Page_PopCODEC$3;-><init>(Lcom/syu/bt/page/pop/Page_PopCODEC;)V

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 75
    :cond_0
    const/16 v1, 0x28c9

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->btn_codec1:Lcom/lsec/core/frame/ctrl/JButton;

    .line 76
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->btn_codec1:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->btn_codec1:Lcom/lsec/core/frame/ctrl/JButton;

    new-instance v2, Lcom/syu/bt/page/pop/Page_PopCODEC$4;

    invoke-direct {v2, p0}, Lcom/syu/bt/page/pop/Page_PopCODEC$4;-><init>(Lcom/syu/bt/page/pop/Page_PopCODEC;)V

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 99
    :cond_1
    const/16 v1, 0x28ca

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->btn_codec2:Lcom/lsec/core/frame/ctrl/JButton;

    .line 100
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->btn_codec2:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->btn_codec2:Lcom/lsec/core/frame/ctrl/JButton;

    new-instance v2, Lcom/syu/bt/page/pop/Page_PopCODEC$5;

    invoke-direct {v2, p0}, Lcom/syu/bt/page/pop/Page_PopCODEC$5;-><init>(Lcom/syu/bt/page/pop/Page_PopCODEC;)V

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 123
    :cond_2
    const/16 v1, 0x28cb

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->btn_codec3:Lcom/lsec/core/frame/ctrl/JButton;

    .line 124
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->btn_codec3:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v1, :cond_3

    .line 125
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->btn_codec3:Lcom/lsec/core/frame/ctrl/JButton;

    new-instance v2, Lcom/syu/bt/page/pop/Page_PopCODEC$6;

    invoke-direct {v2, p0}, Lcom/syu/bt/page/pop/Page_PopCODEC$6;-><init>(Lcom/syu/bt/page/pop/Page_PopCODEC;)V

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 146
    :cond_3
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopCODEC;->showCodec()V

    .line 147
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->btn_codec0:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v1, :cond_4

    .line 148
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->btn_codec0:Lcom/lsec/core/frame/ctrl/JButton;

    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->mRunDismiss:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Lcom/lsec/core/frame/ctrl/JButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    :cond_4
    return-void
.end method


# virtual methods
.method public showCodec()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 152
    const-string v0, "pop"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 11 showCodec iCodec = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->iCodec:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->btn_codec0:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_0

    .line 154
    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->btn_codec0:Lcom/lsec/core/frame/ctrl/JButton;

    iget v0, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->iCodec:I

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->btn_codec1:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_1

    .line 156
    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->btn_codec1:Lcom/lsec/core/frame/ctrl/JButton;

    iget v0, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->iCodec:I

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->btn_codec2:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_2

    .line 158
    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->btn_codec2:Lcom/lsec/core/frame/ctrl/JButton;

    iget v0, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->iCodec:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_7

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->btn_codec3:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_3

    .line 160
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->btn_codec3:Lcom/lsec/core/frame/ctrl/JButton;

    iget v3, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->iCodec:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    :goto_3
    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->setFocus(Z)V

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->btn_codec0:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v0, :cond_4

    .line 162
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->btn_codec0:Lcom/lsec/core/frame/ctrl/JButton;

    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->mRunSetCodec:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 163
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->btn_codec0:Lcom/lsec/core/frame/ctrl/JButton;

    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopCODEC;->mRunSetCodec:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 154
    goto :goto_0

    :cond_6
    move v0, v2

    .line 156
    goto :goto_1

    :cond_7
    move v0, v2

    .line 158
    goto :goto_2

    :cond_8
    move v1, v2

    .line 160
    goto :goto_3
.end method
