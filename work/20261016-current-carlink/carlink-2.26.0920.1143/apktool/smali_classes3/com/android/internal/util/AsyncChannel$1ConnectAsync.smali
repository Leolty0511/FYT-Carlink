.class final Lcom/android/internal/util/AsyncChannel$1ConnectAsync;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConnectAsync"
.end annotation


# instance fields
.field mDstClassName:Ljava/lang/String;

.field mDstPackageName:Ljava/lang/String;

.field mSrcCtx:Landroid/content/Context;

.field mSrcHdlr:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/AsyncChannel;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;->this$0:Lcom/android/internal/util/AsyncChannel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;->mSrcCtx:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;->mSrcHdlr:Landroid/os/Handler;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;->mDstPackageName:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;->mDstClassName:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;->this$0:Lcom/android/internal/util/AsyncChannel;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;->mSrcCtx:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;->mSrcHdlr:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;->mDstPackageName:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;->mDstClassName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->connectSrcHandlerToPackageSync(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/internal/util/AsyncChannel$1ConnectAsync;->this$0:Lcom/android/internal/util/AsyncChannel;

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/android/internal/util/AsyncChannel;->access$000(Lcom/android/internal/util/AsyncChannel;I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
