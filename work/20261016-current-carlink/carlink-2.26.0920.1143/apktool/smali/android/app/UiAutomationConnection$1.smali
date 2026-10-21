.class Landroid/app/UiAutomationConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/UiAutomationConnection;->executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/UiAutomationConnection;

.field final synthetic val$process:Ljava/lang/Process;

.field final synthetic val$readFromProcess:Ljava/lang/Thread;

.field final synthetic val$sink:Landroid/os/ParcelFileDescriptor;

.field final synthetic val$source:Landroid/os/ParcelFileDescriptor;

.field final synthetic val$writeToProcess:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/app/UiAutomationConnection;Ljava/lang/Thread;Ljava/lang/Thread;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/lang/Process;)V
    .locals 0

    iput-object p1, p0, Landroid/app/UiAutomationConnection$1;->this$0:Landroid/app/UiAutomationConnection;

    iput-object p2, p0, Landroid/app/UiAutomationConnection$1;->val$writeToProcess:Ljava/lang/Thread;

    iput-object p3, p0, Landroid/app/UiAutomationConnection$1;->val$readFromProcess:Ljava/lang/Thread;

    iput-object p4, p0, Landroid/app/UiAutomationConnection$1;->val$sink:Landroid/os/ParcelFileDescriptor;

    iput-object p5, p0, Landroid/app/UiAutomationConnection$1;->val$source:Landroid/os/ParcelFileDescriptor;

    iput-object p6, p0, Landroid/app/UiAutomationConnection$1;->val$process:Ljava/lang/Process;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/app/UiAutomationConnection$1;->val$writeToProcess:Ljava/lang/Thread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroid/app/UiAutomationConnection$1;->val$readFromProcess:Ljava/lang/Thread;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const-string v0, "UiAutomationConnection"

    .line 17
    .line 18
    const-string v1, "At least one of the threads was interrupted"

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/app/UiAutomationConnection$1;->val$sink:Landroid/os/ParcelFileDescriptor;

    .line 24
    .line 25
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroid/app/UiAutomationConnection$1;->val$source:Landroid/os/ParcelFileDescriptor;

    .line 29
    .line 30
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroid/app/UiAutomationConnection$1;->val$process:Ljava/lang/Process;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 36
    .line 37
    .line 38
    return-void
.end method
