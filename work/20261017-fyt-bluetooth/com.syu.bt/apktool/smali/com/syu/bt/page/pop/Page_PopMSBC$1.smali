.class Lcom/syu/bt/page/pop/Page_PopMSBC$1;
.super Ljava/lang/Object;
.source "Page_PopMSBC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/pop/Page_PopMSBC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/pop/Page_PopMSBC;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/pop/Page_PopMSBC;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopMSBC$1;->this$0:Lcom/syu/bt/page/pop/Page_PopMSBC;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 120
    const-string v0, "persist.blinkbt.msbc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopMSBC$1;->this$0:Lcom/syu/bt/page/pop/Page_PopMSBC;

    iget v2, v2, Lcom/syu/bt/page/pop/Page_PopMSBC;->iMsbc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/syu/bt/page/Page_Set;->updateMsbc()V

    .line 122
    return-void
.end method
