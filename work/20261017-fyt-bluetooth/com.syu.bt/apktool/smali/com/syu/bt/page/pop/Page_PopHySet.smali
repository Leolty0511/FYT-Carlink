.class public Lcom/syu/bt/page/pop/Page_PopHySet;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_PopHySet.java"


# instance fields
.field actBt:Lcom/syu/bt/Act_Bt;

.field btn_minus:Lcom/lsec/core/frame/ctrl/JButton;

.field btn_plus:Lcom/lsec/core/frame/ctrl/JButton;

.field public iHySet:I

.field isPlus:Z

.field private mRunBtnTouch:Ljava/lang/Runnable;

.field private mRunSetHy:Ljava/lang/Runnable;

.field tvHySet:Lcom/lsec/core/frame/ctrl/JText;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 4
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v1}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 45
    iput v3, p0, Lcom/syu/bt/page/pop/Page_PopHySet;->iHySet:I

    .line 110
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/syu/bt/page/pop/Page_PopHySet;->isPlus:Z

    .line 111
    new-instance v1, Lcom/syu/bt/page/pop/Page_PopHySet$1;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/pop/Page_PopHySet$1;-><init>(Lcom/syu/bt/page/pop/Page_PopHySet;)V

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySet;->mRunBtnTouch:Ljava/lang/Runnable;

    .line 162
    new-instance v1, Lcom/syu/bt/page/pop/Page_PopHySet$2;

    invoke-direct {v1, p0}, Lcom/syu/bt/page/pop/Page_PopHySet$2;-><init>(Lcom/syu/bt/page/pop/Page_PopHySet;)V

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySet;->mRunSetHy:Ljava/lang/Runnable;

    .line 48
    iput-object p2, p0, Lcom/syu/bt/page/pop/Page_PopHySet;->actBt:Lcom/syu/bt/Act_Bt;

    .line 49
    iget-object v1, p2, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x2724

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 50
    .local v0, "pageDlg":Lcom/lsec/core/frame/ctrl/JPage;
    const/16 v1, 0x286a

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySet;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    .line 51
    const-string v1, "persist.btaec.delay"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/syu/bt/page/pop/Page_PopHySet;->iHySet:I

    .line 52
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopHySet;->showHySet()V

    .line 53
    const-string v1, "hy"

    const-string v2, " 00 Page_PopHySet init "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/16 v1, 0x2868

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySet;->btn_minus:Lcom/lsec/core/frame/ctrl/JButton;

    .line 55
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySet;->btn_minus:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySet;->btn_minus:Lcom/lsec/core/frame/ctrl/JButton;

    new-instance v2, Lcom/syu/bt/page/pop/Page_PopHySet$3;

    invoke-direct {v2, p0}, Lcom/syu/bt/page/pop/Page_PopHySet$3;-><init>(Lcom/syu/bt/page/pop/Page_PopHySet;)V

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 82
    :cond_0
    const/16 v1, 0x2869

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    iput-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySet;->btn_plus:Lcom/lsec/core/frame/ctrl/JButton;

    .line 83
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySet;->btn_plus:Lcom/lsec/core/frame/ctrl/JButton;

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySet;->btn_plus:Lcom/lsec/core/frame/ctrl/JButton;

    new-instance v2, Lcom/syu/bt/page/pop/Page_PopHySet$4;

    invoke-direct {v2, p0}, Lcom/syu/bt/page/pop/Page_PopHySet$4;-><init>(Lcom/syu/bt/page/pop/Page_PopHySet;)V

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    :cond_1
    return-void
.end method

.method static synthetic access$0(Lcom/syu/bt/page/pop/Page_PopHySet;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySet;->mRunBtnTouch:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public showHySet()V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySet;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySet;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/syu/bt/page/pop/Page_PopHySet;->iHySet:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySet;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySet;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySet;->mRunSetHy:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 158
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopHySet;->tvHySet:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopHySet;->mRunSetHy:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    :cond_1
    return-void
.end method
