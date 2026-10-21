.class Lcom/syu/bt/page/Page_Callin_ShowCall$1;
.super Ljava/lang/Object;
.source "Page_Callin_ShowCall.java"

# interfaces
.implements Lcom/syu/bt/ctrl/SwipeCallingView$setEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/Page_Callin_ShowCall;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Callin_ShowCall;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/Page_Callin_ShowCall;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/Page_Callin_ShowCall$1;->this$0:Lcom/syu/bt/page/Page_Callin_ShowCall;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setEventLeft()V
    .locals 0

    .prologue
    .line 104
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->hang()V

    .line 105
    return-void
.end method

.method public setEventRight()V
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->dial()V

    .line 110
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall$1;->this$0:Lcom/syu/bt/page/Page_Callin_ShowCall;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mSwipeCalling2:Lcom/syu/bt/ctrl/SwipeCallingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/syu/bt/ctrl/SwipeCallingView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/syu/bt/page/Page_Callin_ShowCall$1;->this$0:Lcom/syu/bt/page/Page_Callin_ShowCall;

    iget-object v0, v0, Lcom/syu/bt/page/Page_Callin_ShowCall;->mSwipeCalling2:Lcom/syu/bt/ctrl/SwipeCallingView;

    invoke-virtual {v0}, Lcom/syu/bt/ctrl/SwipeCallingView;->removeDialView()V

    .line 112
    return-void
.end method
