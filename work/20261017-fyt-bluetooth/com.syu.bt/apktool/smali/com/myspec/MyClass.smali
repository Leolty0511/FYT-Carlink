.class public Lcom/myspec/MyClass;
.super Ljava/lang/Object;
.source "MyClass.java"


# static fields
.field private static mInstance:Lcom/myspec/MyClass;


# instance fields
.field public bPopPhoneTip:Z

.field public mRunnable_hidePopPhoneTip:Ljava/lang/Runnable;

.field public mRunnable_popPhoneTip:Ljava/lang/Runnable;

.field mapDrawables:Ljava/util/HashMap;
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

.field private stateActivite:I

.field v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, -0x4e8

    iput v0, p0, Lcom/myspec/MyClass;->stateActivite:I

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/myspec/MyClass;->mapDrawables:Ljava/util/HashMap;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myspec/MyClass;->bPopPhoneTip:Z

    .line 73
    new-instance v0, Lcom/myspec/MyClass$1;

    invoke-direct {v0, p0}, Lcom/myspec/MyClass$1;-><init>(Lcom/myspec/MyClass;)V

    iput-object v0, p0, Lcom/myspec/MyClass;->mRunnable_popPhoneTip:Ljava/lang/Runnable;

    .line 104
    new-instance v0, Lcom/myspec/MyClass$2;

    invoke-direct {v0, p0}, Lcom/myspec/MyClass$2;-><init>(Lcom/myspec/MyClass;)V

    iput-object v0, p0, Lcom/myspec/MyClass;->mRunnable_hidePopPhoneTip:Ljava/lang/Runnable;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/myspec/MyClass;I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/myspec/MyClass;->stateActivite:I

    return-void
.end method

.method static synthetic access$1(Lcom/myspec/MyClass;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/myspec/MyClass;->stateActivite:I

    return v0
.end method

.method public static getInstance()Lcom/myspec/MyClass;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/myspec/MyClass;->mInstance:Lcom/myspec/MyClass;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/myspec/MyClass;

    invoke-direct {v0}, Lcom/myspec/MyClass;-><init>()V

    sput-object v0, Lcom/myspec/MyClass;->mInstance:Lcom/myspec/MyClass;

    .line 33
    :cond_0
    sget-object v0, Lcom/myspec/MyClass;->mInstance:Lcom/myspec/MyClass;

    return-object v0
.end method


# virtual methods
.method public destCust()V
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bSpeValue:Z

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/myspec/MyClass;->popTip(Z)V

    .line 70
    :cond_0
    return-void
.end method

.method public initCust()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 37
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->is7862()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/syu/bt/App_Bt;->bSpeValue:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/myspec/MyClass;->bPopPhoneTip:Z

    if-nez v1, :cond_1

    .line 38
    const-string v1, "sys.lsec.needsetinfo"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 39
    .local v0, "activestep":Z
    invoke-virtual {p0, v0}, Lcom/myspec/MyClass;->popTip(Z)V

    .line 65
    .end local v0    # "activestep":Z
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bSpeValue:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/myspec/MyClass;->bPopPhoneTip:Z

    if-nez v1, :cond_0

    sget v1, Lcom/lsec/core/frame/app/MyApplication;->mIdPlatForm:I

    const/16 v2, 0x28

    if-ne v1, v2, :cond_0

    .line 41
    new-instance v1, Lcom/myspec/MyClass$3;

    invoke-direct {v1, p0}, Lcom/myspec/MyClass$3;-><init>(Lcom/myspec/MyClass;)V

    .line 63
    const-wide/16 v2, 0x0

    .line 41
    invoke-static {v4, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public isMainThread()Z
    .locals 2

    .prologue
    .line 122
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public popTip(Z)V
    .locals 2
    .param p1, "bPop"    # Z

    .prologue
    .line 127
    iget-object v1, p0, Lcom/myspec/MyClass;->mRunnable_popPhoneTip:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 128
    iget-object v1, p0, Lcom/myspec/MyClass;->mRunnable_hidePopPhoneTip:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz p1, :cond_1

    .line 132
    iget-object v0, p0, Lcom/myspec/MyClass;->mRunnable_popPhoneTip:Ljava/lang/Runnable;

    .line 136
    :goto_0
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/myspec/MyClass;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 142
    :cond_0
    :goto_1
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/myspec/MyClass;->mRunnable_hidePopPhoneTip:Ljava/lang/Runnable;

    goto :goto_0

    .line 140
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    goto :goto_1
.end method
