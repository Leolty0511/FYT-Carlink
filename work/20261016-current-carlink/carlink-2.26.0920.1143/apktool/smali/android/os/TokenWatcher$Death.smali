.class Landroid/os/TokenWatcher$Death;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/TokenWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Death"
.end annotation


# instance fields
.field tag:Ljava/lang/String;

.field final synthetic this$0:Landroid/os/TokenWatcher;

.field token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/TokenWatcher;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/os/TokenWatcher$Death;->this$0:Landroid/os/TokenWatcher;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/os/TokenWatcher$Death;->tag:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Landroid/os/TokenWatcher$Death;->this$0:Landroid/os/TokenWatcher;

    iget-object v1, p0, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/TokenWatcher;->cleanup(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public finalize()V
    .locals 3

    .line 1
    const-string v0, "cleaning up leaked reference: "

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroid/os/TokenWatcher$Death;->this$0:Landroid/os/TokenWatcher;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/os/TokenWatcher;->access$200(Landroid/os/TokenWatcher;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroid/os/TokenWatcher$Death;->tag:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroid/os/TokenWatcher$Death;->this$0:Landroid/os/TokenWatcher;

    .line 31
    .line 32
    iget-object v1, p0, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/os/TokenWatcher;->release(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 43
    .line 44
    .line 45
    throw v0
.end method
