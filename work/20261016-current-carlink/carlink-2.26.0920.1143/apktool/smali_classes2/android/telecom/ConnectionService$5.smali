.class Landroid/telecom/ConnectionService$5;
.super Lcom/android/internal/telecom/RemoteServiceCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/ConnectionService;->onAdapterAttached()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionService;


# direct methods
.method public constructor <init>(Landroid/telecom/ConnectionService;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/ConnectionService$5;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0}, Lcom/android/internal/telecom/RemoteServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/telecom/ConnectionService$5;->this$0:Landroid/telecom/ConnectionService;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/telecom/ConnectionService;->access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/telecom/ConnectionService$5$2;

    .line 8
    .line 9
    const-string v2, "oAA.qRCS.oE"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v1, p0, v2, v3}, Landroid/telecom/ConnectionService$5$2;-><init>(Landroid/telecom/ConnectionService$5;Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/telecom/Logging/Runnable;->prepare()Ljava/lang/Runnable;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onResult(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/telecom/ConnectionService$5;->this$0:Landroid/telecom/ConnectionService;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/telecom/ConnectionService;->access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v7, Landroid/telecom/ConnectionService$5$1;

    .line 8
    .line 9
    const-string v3, "oAA.qRCS.oR"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    move-object v1, v7

    .line 13
    move-object v2, p0

    .line 14
    move-object v5, p1

    .line 15
    move-object v6, p2

    .line 16
    invoke-direct/range {v1 .. v6}, Landroid/telecom/ConnectionService$5$1;-><init>(Landroid/telecom/ConnectionService$5;Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v7}, Landroid/telecom/Logging/Runnable;->prepare()Ljava/lang/Runnable;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method
