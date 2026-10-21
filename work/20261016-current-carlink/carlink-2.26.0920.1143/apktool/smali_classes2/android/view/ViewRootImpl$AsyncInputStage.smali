.class abstract Landroid/view/ViewRootImpl$AsyncInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AsyncInputStage"
.end annotation


# static fields
.field protected static final DEFER:I = 0x3


# instance fields
.field private mQueueHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private mQueueLength:I

.field private mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private final mTraceCounter:Ljava/lang/String;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mTraceCounter:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method private dequeue(Landroid/view/ViewRootImpl$QueuedInputEvent;Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 4
    .line 5
    iput-object v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 9
    .line 10
    iput-object v0, p2, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 11
    .line 12
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 13
    .line 14
    if-ne v0, p1, :cond_1

    .line 15
    .line 16
    iput-object p2, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 17
    .line 18
    :cond_1
    const/4 p2, 0x0

    .line 19
    iput-object p2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 20
    .line 21
    iget p1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    .line 22
    .line 23
    add-int/lit8 p1, p1, -0x1

    .line 24
    .line 25
    iput p1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    .line 26
    .line 27
    const-wide/16 v0, 0x4

    .line 28
    .line 29
    iget-object p2, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mTraceCounter:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0, v1, p2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private enqueue(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 6
    .line 7
    iput-object p1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput-object p1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 11
    .line 12
    iput-object p1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 13
    .line 14
    :goto_0
    iget p1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    .line 15
    .line 16
    add-int/lit8 p1, p1, 0x1

    .line 17
    .line 18
    iput p1, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    .line 19
    .line 20
    const-wide/16 v0, 0x4

    .line 21
    .line 22
    iget-object v2, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mTraceCounter:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/ViewRootImpl$QueuedInputEvent;I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$AsyncInputStage;->defer(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;->apply(Landroid/view/ViewRootImpl$QueuedInputEvent;I)V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method

.method public defer(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$AsyncInputStage;->enqueue(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, ": mQueueLength="

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueLength:I

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 23
    .line 24
    .line 25
    invoke-super {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 6
    .line 7
    iget-object v0, p0, Landroid/view/ViewRootImpl$AsyncInputStage;->mQueueHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/InputEvent;->getDeviceId()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-eqz v0, :cond_2

    .line 24
    .line 25
    if-eq v0, p1, :cond_2

    .line 26
    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    iget-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/view/InputEvent;->getDeviceId()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-ne v1, v2, :cond_1

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    move v3, v2

    .line 39
    :cond_1
    iget-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 40
    .line 41
    move-object v4, v2

    .line 42
    move-object v2, v0

    .line 43
    move-object v0, v4

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    if-eqz v3, :cond_4

    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$AsyncInputStage;->enqueue(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    return-void

    .line 53
    :cond_4
    if-eqz v0, :cond_5

    .line 54
    .line 55
    iget-object v0, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 56
    .line 57
    invoke-direct {p0, p1, v2}, Landroid/view/ViewRootImpl$AsyncInputStage;->dequeue(Landroid/view/ViewRootImpl$QueuedInputEvent;Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 58
    .line 59
    .line 60
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 61
    .line 62
    .line 63
    move-object p1, v2

    .line 64
    :goto_1
    move-object v2, v0

    .line 65
    :goto_2
    if-eqz v2, :cond_8

    .line 66
    .line 67
    iget-object v0, v2, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/view/InputEvent;->getDeviceId()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-ne v1, v0, :cond_7

    .line 74
    .line 75
    iget v0, v2, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 76
    .line 77
    and-int/lit8 v0, v0, 0x2

    .line 78
    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_6
    iget-object v0, v2, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 83
    .line 84
    invoke-direct {p0, v2, p1}, Landroid/view/ViewRootImpl$AsyncInputStage;->dequeue(Landroid/view/ViewRootImpl$QueuedInputEvent;Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 85
    .line 86
    .line 87
    invoke-super {p0, v2}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_7
    iget-object p1, v2, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 92
    .line 93
    move-object v4, v2

    .line 94
    move-object v2, p1

    .line 95
    move-object p1, v4

    .line 96
    goto :goto_2

    .line 97
    :cond_8
    :goto_3
    return-void
.end method
