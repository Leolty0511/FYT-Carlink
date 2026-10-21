.class Lcom/syu/bt/page/Page_Set$11;
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
    iput-object p1, p0, Lcom/syu/bt/page/Page_Set$11;->this$0:Lcom/syu/bt/page/Page_Set;

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchOff()V
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set$11;->this$0:Lcom/syu/bt/page/Page_Set;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Set;->setAutoAnswer(Z)V

    .line 533
    return-void
.end method

.method public onSwitchOn()V
    .locals 2

    .prologue
    .line 526
    const-string v0, "sms"

    const-string v1, " 00 mSB2 != null   "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/syu/bt/page/Page_Set$11;->this$0:Lcom/syu/bt/page/Page_Set;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Set;->setAutoAnswer(Z)V

    .line 528
    return-void
.end method
