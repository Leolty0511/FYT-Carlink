.class Landroid/os/AsyncTask$SerialExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/AsyncTask$SerialExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/AsyncTask$SerialExecutor;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/AsyncTask$SerialExecutor;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Landroid/os/AsyncTask$SerialExecutor$1;->this$0:Landroid/os/AsyncTask$SerialExecutor;

    iput-object p2, p0, Landroid/os/AsyncTask$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/AsyncTask$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/os/AsyncTask$SerialExecutor$1;->this$0:Landroid/os/AsyncTask$SerialExecutor;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/AsyncTask$SerialExecutor;->scheduleNext()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    iget-object v1, p0, Landroid/os/AsyncTask$SerialExecutor$1;->this$0:Landroid/os/AsyncTask$SerialExecutor;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/os/AsyncTask$SerialExecutor;->scheduleNext()V

    .line 16
    .line 17
    .line 18
    throw v0
.end method
