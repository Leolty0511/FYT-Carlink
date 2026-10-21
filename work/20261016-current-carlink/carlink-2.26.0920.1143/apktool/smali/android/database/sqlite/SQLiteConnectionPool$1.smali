.class Landroid/database/sqlite/SQLiteConnectionPool$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/database/sqlite/SQLiteConnectionPool;->waitForConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/database/sqlite/SQLiteConnectionPool;

.field final synthetic val$nonce:I

.field final synthetic val$waiter:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;I)V
    .locals 0

    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    iput-object p2, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->val$waiter:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput p3, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->val$nonce:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->access$000(Landroid/database/sqlite/SQLiteConnectionPool;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->val$waiter:Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 9
    .line 10
    iget v2, v1, Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    .line 11
    .line 12
    iget v3, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->val$nonce:I

    .line 13
    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool$1;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 17
    .line 18
    invoke-static {v2, v1}, Landroid/database/sqlite/SQLiteConnectionPool;->access$100(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1
.end method
