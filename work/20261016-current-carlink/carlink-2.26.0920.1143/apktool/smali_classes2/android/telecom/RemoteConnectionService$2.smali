.class Landroid/telecom/RemoteConnectionService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConnectionService;


# direct methods
.method public constructor <init>(Landroid/telecom/RemoteConnectionService;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/RemoteConnectionService$2;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$2;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/telecom/RemoteConnection;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection;->setDestroyed()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$2;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 32
    .line 33
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$700(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Landroid/telecom/RemoteConference;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/telecom/RemoteConference;->setDestroyed()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$2;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 62
    .line 63
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$2;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 71
    .line 72
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$700(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$2;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 80
    .line 81
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$200(Landroid/telecom/RemoteConnectionService;)Ljava/util/Set;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$2;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 89
    .line 90
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$600(Landroid/telecom/RemoteConnectionService;)Lcom/android/internal/telecom/IConnectionService;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$2;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 99
    .line 100
    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->access$1100(Landroid/telecom/RemoteConnectionService;)Landroid/os/IBinder$DeathRecipient;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const/4 v2, 0x0

    .line 105
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 106
    .line 107
    .line 108
    return-void
.end method
