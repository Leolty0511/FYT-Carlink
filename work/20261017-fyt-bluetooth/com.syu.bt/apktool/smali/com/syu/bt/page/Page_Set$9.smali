.class Lcom/syu/bt/page/Page_Set$9;
.super Ljava/lang/Object;
.source "Page_Set.java"

# interfaces
.implements Lcom/syu/bt/ctrl/JSwitchButon2$OnSwitchStateLisenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/Page_Set;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Set;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/Page_Set;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/Page_Set$9;->this$0:Lcom/syu/bt/page/Page_Set;

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchOff()V
    .locals 2

    .prologue
    .line 490
    const-string v0, "gdy"

    .line 491
    const-string v1, " 00  Set_Switch_CarplayAutoLink2 onSwitchOff  "

    .line 490
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->setCarLinkAutoConnect(Z)V

    .line 493
    return-void
.end method

.method public onSwitchOn()V
    .locals 2

    .prologue
    .line 483
    const-string v0, "gdy"

    .line 484
    const-string v1, " 00  Set_Switch_CarplayAutoLink2 onSwitchOn  "

    .line 483
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->setCarLinkAutoConnect(Z)V

    .line 486
    return-void
.end method
