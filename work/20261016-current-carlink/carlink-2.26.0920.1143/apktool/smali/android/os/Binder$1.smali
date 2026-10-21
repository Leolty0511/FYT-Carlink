.class Landroid/os/Binder$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/Binder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/Binder;

.field final synthetic val$args:[Ljava/lang/String;

.field final synthetic val$fd:Ljava/io/FileDescriptor;

.field final synthetic val$pw:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Landroid/os/Binder;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/os/Binder$1;->this$0:Landroid/os/Binder;

    iput-object p3, p0, Landroid/os/Binder$1;->val$fd:Ljava/io/FileDescriptor;

    iput-object p4, p0, Landroid/os/Binder$1;->val$pw:Ljava/io/PrintWriter;

    iput-object p5, p0, Landroid/os/Binder$1;->val$args:[Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/Binder$1;->this$0:Landroid/os/Binder;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/os/Binder$1;->val$fd:Ljava/io/FileDescriptor;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/os/Binder$1;->val$pw:Ljava/io/PrintWriter;

    .line 6
    .line 7
    iget-object v3, p0, Landroid/os/Binder$1;->val$args:[Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroid/os/Binder$1;->val$pw:Ljava/io/PrintWriter;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    iget-object v1, p0, Landroid/os/Binder$1;->val$pw:Ljava/io/PrintWriter;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 22
    .line 23
    .line 24
    throw v0
.end method
