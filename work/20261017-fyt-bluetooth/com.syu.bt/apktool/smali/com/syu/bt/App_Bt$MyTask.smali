.class Lcom/syu/bt/App_Bt$MyTask;
.super Ljava/util/TimerTask;
.source "App_Bt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/App_Bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/App_Bt;


# direct methods
.method constructor <init>(Lcom/syu/bt/App_Bt;)V
    .locals 0

    .prologue
    .line 2271
    iput-object p1, p0, Lcom/syu/bt/App_Bt$MyTask;->this$0:Lcom/syu/bt/App_Bt;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2273
    sget v0, Lcom/syu/bt/App_Bt;->iTimerCnt:I

    if-lez v0, :cond_0

    .line 2274
    sget v0, Lcom/syu/bt/App_Bt;->iTimerCnt:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/syu/bt/App_Bt;->iTimerCnt:I

    .line 2276
    :cond_0
    sget v0, Lcom/syu/bt/App_Bt;->iTimerCnt:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    .line 2277
    iget-object v0, p0, Lcom/syu/bt/App_Bt$MyTask;->this$0:Lcom/syu/bt/App_Bt;

    iget-boolean v0, v0, Lcom/syu/bt/App_Bt;->bPopBtRingSet:Z

    if-eqz v0, :cond_1

    .line 2278
    iget-object v0, p0, Lcom/syu/bt/App_Bt$MyTask;->this$0:Lcom/syu/bt/App_Bt;

    invoke-virtual {v0, v2}, Lcom/syu/bt/App_Bt;->popBtRingSet(Z)V

    .line 2280
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/App_Bt$MyTask;->this$0:Lcom/syu/bt/App_Bt;

    iget-boolean v0, v0, Lcom/syu/bt/App_Bt;->bPopPhoneMicSet:Z

    if-eqz v0, :cond_2

    .line 2281
    iget-object v0, p0, Lcom/syu/bt/App_Bt$MyTask;->this$0:Lcom/syu/bt/App_Bt;

    invoke-virtual {v0, v2}, Lcom/syu/bt/App_Bt;->popPhoneMicSet(Z)V

    .line 2283
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/App_Bt$MyTask;->this$0:Lcom/syu/bt/App_Bt;

    iget-boolean v0, v0, Lcom/syu/bt/App_Bt;->bPopBtAvMicSet:Z

    if-eqz v0, :cond_3

    .line 2284
    iget-object v0, p0, Lcom/syu/bt/App_Bt$MyTask;->this$0:Lcom/syu/bt/App_Bt;

    invoke-virtual {v0, v2}, Lcom/syu/bt/App_Bt;->popBtAvMicSet(Z)V

    .line 2286
    :cond_3
    return-void
.end method
