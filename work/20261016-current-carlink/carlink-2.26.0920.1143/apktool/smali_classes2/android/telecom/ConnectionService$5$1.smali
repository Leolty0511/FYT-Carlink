.class Landroid/telecom/ConnectionService$5$1;
.super Landroid/telecom/Logging/Runnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/ConnectionService$5;->onResult(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/telecom/ConnectionService$5;

.field final synthetic val$componentNames:Ljava/util/List;

.field final synthetic val$services:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/telecom/ConnectionService$5;Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/ConnectionService$5$1;->this$1:Landroid/telecom/ConnectionService$5;

    iput-object p4, p0, Landroid/telecom/ConnectionService$5$1;->val$componentNames:Ljava/util/List;

    iput-object p5, p0, Landroid/telecom/ConnectionService$5$1;->val$services:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Landroid/telecom/Logging/Runnable;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public loggedRun()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Landroid/telecom/ConnectionService$5$1;->val$componentNames:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Landroid/telecom/ConnectionService$5$1;->val$services:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Landroid/telecom/ConnectionService$5$1;->this$1:Landroid/telecom/ConnectionService$5;

    .line 20
    .line 21
    iget-object v2, v2, Landroid/telecom/ConnectionService$5;->this$0:Landroid/telecom/ConnectionService;

    .line 22
    .line 23
    invoke-static {v2}, Landroid/telecom/ConnectionService;->access$3600(Landroid/telecom/ConnectionService;)Landroid/telecom/RemoteConnectionManager;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, p0, Landroid/telecom/ConnectionService$5$1;->val$componentNames:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroid/content/ComponentName;

    .line 34
    .line 35
    iget-object v4, p0, Landroid/telecom/ConnectionService$5$1;->val$services:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Landroid/os/IBinder;

    .line 42
    .line 43
    invoke-static {v4}, Lcom/android/internal/telecom/IConnectionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionService;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v2, v3, v4}, Landroid/telecom/RemoteConnectionManager;->addConnectionService(Landroid/content/ComponentName;Lcom/android/internal/telecom/IConnectionService;)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v1, p0, Landroid/telecom/ConnectionService$5$1;->this$1:Landroid/telecom/ConnectionService$5;

    .line 54
    .line 55
    iget-object v1, v1, Landroid/telecom/ConnectionService$5;->this$0:Landroid/telecom/ConnectionService;

    .line 56
    .line 57
    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$3700(Landroid/telecom/ConnectionService;)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v2, "remote connection services found: "

    .line 63
    .line 64
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Landroid/telecom/ConnectionService$5$1;->val$services:Ljava/util/List;

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    new-array v0, v0, [Ljava/lang/Object;

    .line 77
    .line 78
    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method
