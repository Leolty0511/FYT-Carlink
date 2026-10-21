.class Lcom/syu/bt/App_Bt$48;
.super Ljava/lang/Object;
.source "App_Bt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/App_Bt;->simulateKey(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/App_Bt;

.field private final synthetic val$keyCode:I


# direct methods
.method constructor <init>(Lcom/syu/bt/App_Bt;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/App_Bt$48;->this$0:Lcom/syu/bt/App_Bt;

    iput p2, p0, Lcom/syu/bt/App_Bt$48;->val$keyCode:I

    .line 2843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2847
    :try_start_0
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    .line 2848
    .local v0, "inst":Landroid/app/Instrumentation;
    iget v1, p0, Lcom/syu/bt/App_Bt$48;->val$keyCode:I

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2852
    .end local v0    # "inst":Landroid/app/Instrumentation;
    :goto_0
    return-void

    .line 2849
    :catch_0
    move-exception v1

    goto :goto_0
.end method
