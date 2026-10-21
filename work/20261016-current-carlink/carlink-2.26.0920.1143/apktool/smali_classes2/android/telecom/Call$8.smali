.class Landroid/telecom/Call$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/Call;->fireCallDestroyed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Call;

.field final synthetic val$call:Landroid/telecom/Call;

.field final synthetic val$callback:Landroid/telecom/Call$Callback;

.field final synthetic val$record:Landroid/telecom/CallbackRecord;


# direct methods
.method public constructor <init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/CallbackRecord;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    iput-object p2, p0, Landroid/telecom/Call$8;->val$callback:Landroid/telecom/Call$Callback;

    iput-object p3, p0, Landroid/telecom/Call$8;->val$call:Landroid/telecom/Call;

    iput-object p4, p0, Landroid/telecom/Call$8;->val$record:Landroid/telecom/CallbackRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/telecom/Call$8;->val$callback:Landroid/telecom/Call$Callback;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/telecom/Call$8;->val$call:Landroid/telecom/Call;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/telecom/Call$Callback;->onCallDestroyed(Landroid/telecom/Call;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    :goto_0
    iget-object v1, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_1
    iget-object v2, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    .line 15
    .line 16
    invoke-static {v2}, Landroid/telecom/Call;->access$100(Landroid/telecom/Call;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v3, p0, Landroid/telecom/Call$8;->val$record:Landroid/telecom/CallbackRecord;

    .line 21
    .line 22
    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    .line 26
    .line 27
    invoke-static {v2}, Landroid/telecom/Call;->access$100(Landroid/telecom/Call;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    .line 39
    .line 40
    invoke-static {v1}, Landroid/telecom/Call;->access$200(Landroid/telecom/Call;)Landroid/telecom/Phone;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v2, p0, Landroid/telecom/Call$8;->val$call:Landroid/telecom/Call;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/telecom/Phone;->internalRemoveCall(Landroid/telecom/Call;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    if-nez v0, :cond_1

    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    throw v0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    throw v0
.end method
