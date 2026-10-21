.class Landroid/widget/RemoteViewsAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RemoteViewsAdapter;

.field final synthetic val$key:Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViewsAdapter;Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$1;->this$0:Landroid/widget/RemoteViewsAdapter;

    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter$1;->val$key:Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/widget/RemoteViewsAdapter;->access$1500()Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {}, Landroid/widget/RemoteViewsAdapter;->access$1500()Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$1;->val$key:Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-static {}, Landroid/widget/RemoteViewsAdapter;->access$1500()Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$1;->val$key:Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-static {}, Landroid/widget/RemoteViewsAdapter;->access$1600()Ljava/util/HashMap;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$1;->val$key:Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-static {}, Landroid/widget/RemoteViewsAdapter;->access$1600()Ljava/util/HashMap;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$1;->val$key:Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :cond_1
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw v1
.end method
