.class final Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;
.super Landroid/app/usage/ICacheQuotaService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/CacheQuotaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CacheQuotaServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/usage/CacheQuotaService;


# direct methods
.method private constructor <init>(Landroid/app/usage/CacheQuotaService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;->this$0:Landroid/app/usage/CacheQuotaService;

    invoke-direct {p0}, Landroid/app/usage/ICacheQuotaService$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/usage/CacheQuotaService;Landroid/app/usage/CacheQuotaService$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;-><init>(Landroid/app/usage/CacheQuotaService;)V

    return-void
.end method


# virtual methods
.method public computeCacheQuotaHints(Landroid/os/RemoteCallback;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallback;",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;->this$0:Landroid/app/usage/CacheQuotaService;

    .line 6
    .line 7
    invoke-static {p2}, Landroid/app/usage/CacheQuotaService;->access$100(Landroid/app/usage/CacheQuotaService;)Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p2, p0, Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;->this$0:Landroid/app/usage/CacheQuotaService;

    .line 17
    .line 18
    invoke-static {p2}, Landroid/app/usage/CacheQuotaService;->access$100(Landroid/app/usage/CacheQuotaService;)Landroid/os/Handler;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method
