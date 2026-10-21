.class public Lcom/syu/bt/Act_Bt$RunnableShowLoading;
.super Ljava/lang/Object;
.source "Act_Bt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/Act_Bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunnableShowLoading"
.end annotation


# instance fields
.field private msg:Ljava/lang/String;

.field final synthetic this$0:Lcom/syu/bt/Act_Bt;


# direct methods
.method public constructor <init>(Lcom/syu/bt/Act_Bt;Ljava/lang/String;)V
    .locals 0
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1856
    iput-object p1, p0, Lcom/syu/bt/Act_Bt$RunnableShowLoading;->this$0:Lcom/syu/bt/Act_Bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1857
    iput-object p2, p0, Lcom/syu/bt/Act_Bt$RunnableShowLoading;->msg:Ljava/lang/String;

    .line 1858
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/syu/bt/Act_Bt$RunnableShowLoading;->this$0:Lcom/syu/bt/Act_Bt;

    iget-object v0, v0, Lcom/syu/bt/Act_Bt;->uiUtil:Lcom/syu/bt/util/UIUtil;

    iget-object v1, p0, Lcom/syu/bt/Act_Bt$RunnableShowLoading;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/UIUtil;->showLoading(Ljava/lang/String;)V

    .line 1863
    return-void
.end method
