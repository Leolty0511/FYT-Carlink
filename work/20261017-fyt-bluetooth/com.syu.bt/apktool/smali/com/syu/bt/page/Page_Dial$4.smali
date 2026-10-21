.class Lcom/syu/bt/page/Page_Dial$4;
.super Ljava/lang/Object;
.source "Page_Dial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/Page_Dial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Dial;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/Page_Dial;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/Page_Dial$4;->this$0:Lcom/syu/bt/page/Page_Dial;

    .line 2626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2629
    iget-object v0, p0, Lcom/syu/bt/page/Page_Dial$4;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-virtual {v0}, Lcom/syu/bt/page/Page_Dial;->initTime()V

    .line 2630
    return-void
.end method
