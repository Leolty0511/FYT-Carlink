.class public abstract Lcom/lsec/core/frame/app/MyAct;
.super Ljava/lang/Object;
.source "MyAct.java"


# instance fields
.field public mDrawables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public myActivity:Lcom/lsec/core/frame/app/MyActivity;

.field public ui:Lcom/lsec/core/frame/app/MyUi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/app/MyAct;->mDrawables:Ljava/util/HashMap;

    .line 11
    return-void
.end method


# virtual methods
.method public addChild2Parent(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "viewParent"    # Landroid/view/ViewGroup;

    .prologue
    .line 60
    return-void
.end method

.method public doActionBeforeGoPage(I)V
    .locals 0
    .param p1, "idPageTo"    # I

    .prologue
    .line 56
    return-void
.end method

.method public doActionWhenGoPage(I)V
    .locals 0
    .param p1, "idPageTo"    # I

    .prologue
    .line 52
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 76
    iget-object v1, p0, Lcom/lsec/core/frame/app/MyAct;->ui:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bitmap_bk"

    iget-object v3, p0, Lcom/lsec/core/frame/app/MyAct;->mDrawables:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/lsec/core/frame/app/MyAct;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 77
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public abstract getMyApp()Lcom/lsec/core/frame/app/MyApp;
.end method

.method public getRightPage(I)I
    .locals 0
    .param p1, "idPageTo"    # I

    .prologue
    .line 47
    return p1
.end method

.method public abstract includePage(I)Z
.end method

.method public isTransparentPage(I)Z
    .locals 1
    .param p1, "idPageTo"    # I

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onCreate(Lcom/lsec/core/frame/app/MyActivity;)V
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;Lcom/lsec/core/frame/app/MyActivity;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "act"    # Lcom/lsec/core/frame/app/MyActivity;

    .prologue
    .line 32
    return-void
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 36
    return-void
.end method

.method public removeChildFromParent(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "viewParent"    # Landroid/view/ViewGroup;

    .prologue
    .line 64
    return-void
.end method

.method public setTransParentWindow(I)V
    .locals 2
    .param p1, "idPageTo"    # I

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/lsec/core/frame/app/MyAct;->isTransparentPage(I)Z

    move-result v0

    .line 68
    .local v0, "bTrans":Z
    iget-object v1, p0, Lcom/lsec/core/frame/app/MyAct;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/app/MyActivity;->setTransParentWindow(Z)V

    .line 69
    return-void
.end method
