.class Lcom/syu/bt/page/Page_Set$12;
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
    iput-object p1, p0, Lcom/syu/bt/page/Page_Set$12;->this$0:Lcom/syu/bt/page/Page_Set;

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchOff()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 550
    const-string v0, "sms"

    const-string v1, " 22 setSmsFunction(false)  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set$12;->this$0:Lcom/syu/bt/page/Page_Set;

    invoke-virtual {v0, v2}, Lcom/syu/bt/page/Page_Set;->setSmsFunction(Z)V

    .line 552
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/syu/bt/App_Bt;->popPhoneSMS(Z)V

    .line 553
    return-void
.end method

.method public onSwitchOn()V
    .locals 2

    .prologue
    .line 544
    const-string v0, "sms"

    const-string v1, " 11 setSmsFunction(true)  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set$12;->this$0:Lcom/syu/bt/page/Page_Set;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Set;->setSmsFunction(Z)V

    .line 546
    return-void
.end method
