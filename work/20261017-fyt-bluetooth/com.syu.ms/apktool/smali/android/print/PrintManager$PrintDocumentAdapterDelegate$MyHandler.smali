.class final Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_FINISH:I = 0x4

.field public static final MSG_LAYOUT:I = 0x2

.field public static final MSG_START:I = 0x1

.field public static final MSG_WRITE:I = 0x3


# instance fields
.field public final synthetic this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;


# direct methods
.method public constructor <init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$200(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 3
    iget-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {p1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$300(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {p1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$400(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Landroid/print/PrintDocumentAdapter;

    move-result-object p1

    .line 5
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$800(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Landroid/app/Activity;

    move-result-object v1

    .line 6
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$900(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)V

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/print/PrintDocumentAdapter;->onFinish()V

    :cond_1
    if-eqz v1, :cond_6

    .line 9
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_3
    iget-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {p1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$300(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 13
    :try_start_2
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$400(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Landroid/print/PrintDocumentAdapter;

    move-result-object v0

    .line 14
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$700(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    move-result-object v1

    .line 15
    iget-object v3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v3, v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$702(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    .line 16
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    .line 17
    iget-object v3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v3, v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$602(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;

    .line 18
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 19
    iget-object p1, v1, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->pages:[Landroid/print/PageRange;

    iget-object v3, v1, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->fd:Landroid/os/ParcelFileDescriptor;

    new-instance v4, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;

    iget-object v5, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    iget-object v6, v1, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->callback:Landroid/print/IWriteResultCallback;

    iget v1, v1, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->sequence:I

    invoke-direct {v4, v5, v6, v3, v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/IWriteResultCallback;Landroid/os/ParcelFileDescriptor;I)V

    invoke-virtual {v0, p1, v3, v2, v4}, Landroid/print/PrintDocumentAdapter;->onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 20
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 21
    :cond_4
    iget-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {p1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$300(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 22
    :try_start_4
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$400(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Landroid/print/PrintDocumentAdapter;

    move-result-object v3

    .line 23
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$500(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    move-result-object v0

    .line 24
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v1, v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$502(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    .line 25
    new-instance v6, Landroid/os/CancellationSignal;

    invoke-direct {v6}, Landroid/os/CancellationSignal;-><init>()V

    .line 26
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v1, v6}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$602(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;

    .line 27
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    .line 28
    iget-object v4, v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;->oldAttributes:Landroid/print/PrintAttributes;

    iget-object v5, v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;->newAttributes:Landroid/print/PrintAttributes;

    new-instance v7, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;

    iget-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    iget-object v1, v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;->callback:Landroid/print/ILayoutResultCallback;

    iget v2, v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;->sequence:I

    invoke-direct {v7, p1, v1, v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/ILayoutResultCallback;I)V

    iget-object v8, v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;->metadata:Landroid/os/Bundle;

    invoke-virtual/range {v3 .. v8}, Landroid/print/PrintDocumentAdapter;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 29
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 30
    :cond_5
    iget-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {p1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$300(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 31
    :try_start_6
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$400(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Landroid/print/PrintDocumentAdapter;

    move-result-object v0

    .line 32
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v0, :cond_6

    .line 33
    invoke-virtual {v0}, Landroid/print/PrintDocumentAdapter;->onStart()V

    :cond_6
    :goto_0
    return-void

    :catchall_3
    move-exception v0

    .line 34
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method
