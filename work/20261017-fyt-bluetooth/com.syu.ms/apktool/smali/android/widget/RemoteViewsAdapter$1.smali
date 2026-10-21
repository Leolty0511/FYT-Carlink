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
.field public final synthetic this$0:Landroid/widget/RemoteViewsAdapter;

.field public final synthetic val$key:Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViewsAdapter;Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;)V
    .locals 0

    .line 1
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

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/widget/RemoteViewsAdapter;->access$1500()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$1;->val$key:Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Landroid/widget/RemoteViewsAdapter;->access$1500()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$1;->val$key:Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-static {}, Landroid/widget/RemoteViewsAdapter;->access$1600()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$1;->val$key:Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Landroid/widget/RemoteViewsAdapter;->access$1600()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$1;->val$key:Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
