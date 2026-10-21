.class Lcom/syu/bt/page/pop/Page_PopCODEC$1;
.super Ljava/lang/Object;
.source "Page_PopCODEC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/pop/Page_PopCODEC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/pop/Page_PopCODEC;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/pop/Page_PopCODEC;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopCODEC$1;->this$0:Lcom/syu/bt/page/pop/Page_PopCODEC;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 170
    const-string v0, "persist.blinkbt.a2dp.codec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/syu/bt/page/pop/Page_PopCODEC$1;->this$0:Lcom/syu/bt/page/pop/Page_PopCODEC;

    iget v2, v2, Lcom/syu/bt/page/pop/Page_PopCODEC;->iCodec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/syu/bt/page/Page_Set;->updateCodec()V

    .line 172
    return-void
.end method
