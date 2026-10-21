.class Landroid/app/ActivityThread$DropBoxReporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llibcore/io/DropBox$Reporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DropBoxReporter"
.end annotation


# instance fields
.field private dropBox:Landroid/os/DropBoxManager;

.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method public constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityThread$DropBoxReporter;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized ensureInitialized()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$DropBoxReporter;->dropBox:Landroid/os/DropBoxManager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroid/app/ActivityThread$DropBoxReporter;->this$0:Landroid/app/ActivityThread;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "dropbox"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/os/DropBoxManager;

    .line 19
    .line 20
    iput-object v0, p0, Landroid/app/ActivityThread$DropBoxReporter;->dropBox:Landroid/os/DropBoxManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    :cond_0
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    monitor-exit p0

    .line 26
    throw v0
.end method


# virtual methods
.method public addData(Ljava/lang/String;[BI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/ActivityThread$DropBoxReporter;->ensureInitialized()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/ActivityThread$DropBoxReporter;->dropBox:Landroid/os/DropBoxManager;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/DropBoxManager;->addData(Ljava/lang/String;[BI)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public addText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/ActivityThread$DropBoxReporter;->ensureInitialized()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/app/ActivityThread$DropBoxReporter;->dropBox:Landroid/os/DropBoxManager;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
