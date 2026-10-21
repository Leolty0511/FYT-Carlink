.class Landroid/os/CommonTimeConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CommonTimeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/os/CommonTimeConfig;


# direct methods
.method public constructor <init>(Landroid/os/CommonTimeConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/os/CommonTimeConfig$1;->this$0:Landroid/os/CommonTimeConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/CommonTimeConfig$1;->this$0:Landroid/os/CommonTimeConfig;

    invoke-static {v0}, Landroid/os/CommonTimeConfig;->access$000(Landroid/os/CommonTimeConfig;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/os/CommonTimeConfig$1;->this$0:Landroid/os/CommonTimeConfig;

    invoke-static {v1}, Landroid/os/CommonTimeConfig;->access$100(Landroid/os/CommonTimeConfig;)Landroid/os/CommonTimeConfig$OnServerDiedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Landroid/os/CommonTimeConfig$1;->this$0:Landroid/os/CommonTimeConfig;

    invoke-static {v1}, Landroid/os/CommonTimeConfig;->access$100(Landroid/os/CommonTimeConfig;)Landroid/os/CommonTimeConfig$OnServerDiedListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/CommonTimeConfig$OnServerDiedListener;->onServerDied()V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
