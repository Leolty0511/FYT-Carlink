.class public final Lcom/android/internal/midi/MidiDispatcher;
.super Landroid/media/midi/MidiReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;
    }
.end annotation


# instance fields
.field private final mFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

.field private final mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/midi/MidiReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSender:Landroid/media/midi/MidiSender;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/internal/midi/MidiDispatcher;-><init>(Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    new-instance v0, Lcom/android/internal/midi/MidiDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/midi/MidiDispatcher$1;-><init>(Lcom/android/internal/midi/MidiDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/midi/MidiDispatcher;->mSender:Landroid/media/midi/MidiSender;

    .line 5
    iput-object p1, p0, Lcom/android/internal/midi/MidiDispatcher;->mFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/internal/midi/MidiDispatcher;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method


# virtual methods
.method public getReceiverCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSender()Landroid/media/midi/MidiSender;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/midi/MidiDispatcher;->mSender:Landroid/media/midi/MidiSender;

    return-object v0
.end method

.method public onFlush()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/media/midi/MidiReceiver;

    .line 18
    .line 19
    :try_start_0
    invoke-virtual {v1}, Landroid/media/midi/MidiReceiver;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v2

    .line 24
    iget-object v3, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/internal/midi/MidiDispatcher;->mFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    iget-object v3, p0, Lcom/android/internal/midi/MidiDispatcher;->mFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

    .line 34
    .line 35
    invoke-interface {v3, v1, v2}, Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;->onReceiverFailure(Landroid/media/midi/MidiReceiver;Ljava/io/IOException;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method

.method public onSend([BIIJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/media/midi/MidiReceiver;

    .line 18
    .line 19
    move-object v2, v1

    .line 20
    move-object v3, p1

    .line 21
    move v4, p2

    .line 22
    move v5, p3

    .line 23
    move-wide v6, p4

    .line 24
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v2

    .line 29
    iget-object v3, p0, Lcom/android/internal/midi/MidiDispatcher;->mReceivers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    .line 31
    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    iget-object v3, p0, Lcom/android/internal/midi/MidiDispatcher;->mFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

    .line 35
    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/internal/midi/MidiDispatcher;->mFailureHandler:Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;

    .line 39
    .line 40
    invoke-interface {v3, v1, v2}, Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;->onReceiverFailure(Landroid/media/midi/MidiReceiver;Ljava/io/IOException;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method
