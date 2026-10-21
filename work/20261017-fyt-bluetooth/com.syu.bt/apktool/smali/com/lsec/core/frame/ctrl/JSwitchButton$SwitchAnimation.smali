.class Lcom/lsec/core/frame/ctrl/JSwitchButton$SwitchAnimation;
.super Ljava/lang/Object;
.source "JSwitchButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/frame/ctrl/JSwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lsec/core/frame/ctrl/JSwitchButton;


# direct methods
.method private constructor <init>(Lcom/lsec/core/frame/ctrl/JSwitchButton;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton$SwitchAnimation;->this$0:Lcom/lsec/core/frame/ctrl/JSwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lsec/core/frame/ctrl/JSwitchButton;Lcom/lsec/core/frame/ctrl/JSwitchButton$SwitchAnimation;)V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/lsec/core/frame/ctrl/JSwitchButton$SwitchAnimation;-><init>(Lcom/lsec/core/frame/ctrl/JSwitchButton;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 442
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton$SwitchAnimation;->this$0:Lcom/lsec/core/frame/ctrl/JSwitchButton;

    invoke-static {v0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->access$2(Lcom/lsec/core/frame/ctrl/JSwitchButton;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    :goto_0
    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton$SwitchAnimation;->this$0:Lcom/lsec/core/frame/ctrl/JSwitchButton;

    invoke-static {v0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->access$3(Lcom/lsec/core/frame/ctrl/JSwitchButton;)V

    .line 446
    const/4 v0, 0x1

    const-wide/16 v2, 0x10

    invoke-static {v0, p0, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto :goto_0
.end method
