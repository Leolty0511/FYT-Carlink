.class Lcom/syu/bt/page/pop/Page_PopBtRing$2$1;
.super Ljava/lang/Object;
.source "Page_PopBtRing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/pop/Page_PopBtRing$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/syu/bt/page/pop/Page_PopBtRing$2;

.field private final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/pop/Page_PopBtRing$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopBtRing$2$1;->this$1:Lcom/syu/bt/page/pop/Page_PopBtRing$2;

    iput-object p2, p0, Lcom/syu/bt/page/pop/Page_PopBtRing$2$1;->val$fileName:Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopBtRing$2$1;->this$1:Lcom/syu/bt/page/pop/Page_PopBtRing$2;

    invoke-static {v1}, Lcom/syu/bt/page/pop/Page_PopBtRing$2;->access$0(Lcom/syu/bt/page/pop/Page_PopBtRing$2;)Lcom/syu/bt/page/pop/Page_PopBtRing;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/page/pop/Page_PopBtRing;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v1}, Lcom/syu/bt/Act_Bt;->getPageSet()Lcom/syu/bt/page/Page_Set;

    move-result-object v0

    .line 118
    .local v0, "pageSet":Lcom/syu/bt/page/Page_Set;
    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopBtRing$2$1;->val$fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/syu/bt/page/Page_Set;->updateRingName(Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method
