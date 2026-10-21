.class Landroid/telecom/RemoteConnectionService$1$1;
.super Landroid/telecom/RemoteConference$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConnectionService$1;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/telecom/RemoteConnectionService$1;

.field final synthetic val$callId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/telecom/RemoteConnectionService$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/RemoteConnectionService$1$1;->this$1:Landroid/telecom/RemoteConnectionService$1;

    iput-object p2, p0, Landroid/telecom/RemoteConnectionService$1$1;->val$callId:Ljava/lang/String;

    invoke-direct {p0}, Landroid/telecom/RemoteConference$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Landroid/telecom/RemoteConference;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/telecom/RemoteConnectionService$1$1;->this$1:Landroid/telecom/RemoteConnectionService$1;

    .line 2
    .line 3
    iget-object p1, p1, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 4
    .line 5
    invoke-static {p1}, Landroid/telecom/RemoteConnectionService;->access$700(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1$1;->val$callId:Ljava/lang/String;

    .line 10
    .line 11
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroid/telecom/RemoteConnectionService$1$1;->this$1:Landroid/telecom/RemoteConnectionService$1;

    .line 15
    .line 16
    iget-object p1, p1, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 17
    .line 18
    invoke-static {p1}, Landroid/telecom/RemoteConnectionService;->access$800(Landroid/telecom/RemoteConnectionService;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
