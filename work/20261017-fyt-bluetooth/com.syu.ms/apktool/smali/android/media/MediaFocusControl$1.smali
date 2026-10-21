.class Landroid/media/MediaFocusControl$1;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method public constructor <init>(Landroid/media/MediaFocusControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/MediaFocusControl$1;->this$0:Landroid/media/MediaFocusControl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 1
    invoke-static {}, Landroid/media/MediaFocusControl;->access$2300()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p1, p0, Landroid/media/MediaFocusControl$1;->this$0:Landroid/media/MediaFocusControl;

    invoke-static {p1, p2}, Landroid/media/MediaFocusControl;->access$2402(Landroid/media/MediaFocusControl;Z)Z

    .line 3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    if-nez p1, :cond_2

    .line 4
    :cond_1
    invoke-static {}, Landroid/media/MediaFocusControl;->access$2300()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 5
    :try_start_1
    iget-object p2, p0, Landroid/media/MediaFocusControl$1;->this$0:Landroid/media/MediaFocusControl;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/media/MediaFocusControl;->access$2402(Landroid/media/MediaFocusControl;Z)Z

    .line 6
    monitor-exit p1

    :cond_2
    :goto_0
    return-void

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2
.end method
