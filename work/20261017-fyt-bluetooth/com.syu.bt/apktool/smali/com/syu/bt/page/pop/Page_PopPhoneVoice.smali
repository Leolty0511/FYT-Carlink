.class public Lcom/syu/bt/page/pop/Page_PopPhoneVoice;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_PopPhoneVoice.java"


# instance fields
.field public Txt:Lcom/lsec/core/frame/ctrl/JText;

.field animDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field public vAni:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 1
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    .line 23
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 24
    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopPhoneVoice;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopPhoneVoice;->vAni:Landroid/widget/ImageView;

    .line 29
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopPhoneVoice;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopPhoneVoice;->Txt:Lcom/lsec/core/frame/ctrl/JText;

    .line 31
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopPhoneVoice;->vAni:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopPhoneVoice;->vAni:Landroid/widget/ImageView;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "voice_anim"

    invoke-virtual {v1, v2, v3, v3}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 34
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopPhoneVoice;->vAni:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopPhoneVoice;->animDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 36
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->pause()V

    .line 54
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopPhoneVoice;->animDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopPhoneVoice;->animDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 56
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/lsec/core/frame/page/MyPage;->resume()V

    .line 41
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopPhoneVoice;->animDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopPhoneVoice;->animDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 45
    :cond_0
    return-void
.end method
