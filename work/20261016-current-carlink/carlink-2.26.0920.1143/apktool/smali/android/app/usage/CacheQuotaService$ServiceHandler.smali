.class final Landroid/app/usage/CacheQuotaService$ServiceHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/CacheQuotaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final MSG_SEND_LIST:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/app/usage/CacheQuotaService;


# direct methods
.method public constructor <init>(Landroid/app/usage/CacheQuotaService;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/app/usage/CacheQuotaService$ServiceHandler;->this$0:Landroid/app/usage/CacheQuotaService;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const-string p1, "Handling unknown message: "

    .line 7
    .line 8
    const-string v1, "CacheQuotaService"

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Landroid/app/m;->A(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Landroid/util/Pair;

    .line 17
    .line 18
    iget-object v0, p0, Landroid/app/usage/CacheQuotaService$ServiceHandler;->this$0:Landroid/app/usage/CacheQuotaService;

    .line 19
    .line 20
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Ljava/util/List;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/app/usage/CacheQuotaService;->onComputeCacheQuotaHints(Ljava/util/List;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Landroid/os/Bundle;

    .line 29
    .line 30
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string/jumbo v2, "requests"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Landroid/os/RemoteCallback;

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method
