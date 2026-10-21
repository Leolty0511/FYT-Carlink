.class Lcom/syu/bt/App_Bt$29;
.super Ljava/lang/Object;
.source "App_Bt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/App_Bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/App_Bt;


# direct methods
.method constructor <init>(Lcom/syu/bt/App_Bt;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/App_Bt$29;->this$0:Lcom/syu/bt/App_Bt;

    .line 2819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2822
    iget-object v0, p0, Lcom/syu/bt/App_Bt$29;->this$0:Lcom/syu/bt/App_Bt;

    invoke-virtual {v0}, Lcom/syu/bt/App_Bt;->updatePhoneView()V

    .line 2823
    return-void
.end method
