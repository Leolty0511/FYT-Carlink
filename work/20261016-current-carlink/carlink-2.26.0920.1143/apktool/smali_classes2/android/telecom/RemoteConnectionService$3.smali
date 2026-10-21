.class Landroid/telecom/RemoteConnectionService$3;
.super Landroid/telecom/RemoteConnection$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConnectionService;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConnectionService;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/RemoteConnectionService$3;->this$0:Landroid/telecom/RemoteConnectionService;

    iput-object p2, p0, Landroid/telecom/RemoteConnectionService$3;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Landroid/telecom/RemoteConnection$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Landroid/telecom/RemoteConnection;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/telecom/RemoteConnectionService$3;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$3;->val$id:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroid/telecom/RemoteConnectionService$3;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 13
    .line 14
    invoke-static {p1}, Landroid/telecom/RemoteConnectionService;->access$800(Landroid/telecom/RemoteConnectionService;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
