.class public Lcom/lsec/core/util/SingleDoubleClickListener;
.super Ljava/lang/Object;
.source "SingleDoubleClickListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/util/SingleDoubleClickListener$MyClickCallBack;,
        Lcom/lsec/core/util/SingleDoubleClickListener$Runnable_Touch;
    }
.end annotation


# static fields
.field private static timeout:I


# instance fields
.field private clickCount:I

.field private handler:Landroid/os/Handler;

.field private myClickCallBack:Lcom/lsec/core/util/SingleDoubleClickListener$MyClickCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/16 v0, 0x190

    sput v0, Lcom/lsec/core/util/SingleDoubleClickListener;->timeout:I

    return-void
.end method

.method public constructor <init>(Lcom/lsec/core/util/SingleDoubleClickListener$MyClickCallBack;)V
    .locals 1
    .param p1, "myClickCallBack"    # Lcom/lsec/core/util/SingleDoubleClickListener$MyClickCallBack;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/lsec/core/util/SingleDoubleClickListener;->clickCount:I

    .line 21
    iput-object p1, p0, Lcom/lsec/core/util/SingleDoubleClickListener;->myClickCallBack:Lcom/lsec/core/util/SingleDoubleClickListener$MyClickCallBack;

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/util/SingleDoubleClickListener;->handler:Landroid/os/Handler;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/lsec/core/util/SingleDoubleClickListener;)I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/lsec/core/util/SingleDoubleClickListener;->clickCount:I

    return v0
.end method

.method static synthetic access$1(Lcom/lsec/core/util/SingleDoubleClickListener;)Lcom/lsec/core/util/SingleDoubleClickListener$MyClickCallBack;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lsec/core/util/SingleDoubleClickListener;->myClickCallBack:Lcom/lsec/core/util/SingleDoubleClickListener$MyClickCallBack;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lsec/core/util/SingleDoubleClickListener;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/lsec/core/util/SingleDoubleClickListener;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lsec/core/util/SingleDoubleClickListener;I)V
    .locals 0

    .prologue
    .line 10
    iput p1, p0, Lcom/lsec/core/util/SingleDoubleClickListener;->clickCount:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 46
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget v0, p0, Lcom/lsec/core/util/SingleDoubleClickListener;->clickCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lsec/core/util/SingleDoubleClickListener;->clickCount:I

    .line 48
    iget-object v0, p0, Lcom/lsec/core/util/SingleDoubleClickListener;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/lsec/core/util/SingleDoubleClickListener$Runnable_Touch;

    invoke-direct {v1, p0, p1}, Lcom/lsec/core/util/SingleDoubleClickListener$Runnable_Touch;-><init>(Lcom/lsec/core/util/SingleDoubleClickListener;Landroid/view/View;)V

    sget v2, Lcom/lsec/core/util/SingleDoubleClickListener;->timeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
