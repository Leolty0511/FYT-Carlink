.class public Lcom/syu/bt/util/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field private static sInstance:Lcom/syu/bt/util/ToastUtil;


# instance fields
.field mMsg:Ljava/lang/String;

.field mTextView:Landroid/widget/TextView;

.field mToast:Landroid/widget/Toast;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/syu/bt/util/ToastUtil;->sInstance:Lcom/syu/bt/util/ToastUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/util/ToastUtil;->mapDrawables:Ljava/util/HashMap;

    .line 32
    const/4 v0, 0x0

    new-instance v1, Lcom/syu/bt/util/ToastUtil$1;

    invoke-direct {v1, p0}, Lcom/syu/bt/util/ToastUtil$1;-><init>(Lcom/syu/bt/util/ToastUtil;)V

    invoke-static {v0, v1}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 85
    return-void
.end method

.method public static getInstance()Lcom/syu/bt/util/ToastUtil;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/syu/bt/util/ToastUtil;->sInstance:Lcom/syu/bt/util/ToastUtil;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/syu/bt/util/ToastUtil;

    invoke-direct {v0}, Lcom/syu/bt/util/ToastUtil;-><init>()V

    sput-object v0, Lcom/syu/bt/util/ToastUtil;->sInstance:Lcom/syu/bt/util/ToastUtil;

    .line 24
    :cond_0
    sget-object v0, Lcom/syu/bt/util/ToastUtil;->sInstance:Lcom/syu/bt/util/ToastUtil;

    return-object v0
.end method


# virtual methods
.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/syu/bt/util/ToastUtil;->mMsg:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/syu/bt/util/ToastUtil;->mMsg:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/syu/bt/util/ToastUtil;->mMsg:Ljava/lang/String;

    .line 92
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/syu/bt/util/ToastUtil$2;

    invoke-direct {v1, p0}, Lcom/syu/bt/util/ToastUtil$2;-><init>(Lcom/syu/bt/util/ToastUtil;)V

    invoke-static {v0, v1}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 99
    return-void
.end method
