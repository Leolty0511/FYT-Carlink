.class Lcom/android/internal/midi/EventScheduler$FastEventQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/midi/EventScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FastEventQueue"
.end annotation


# instance fields
.field volatile mEventsAdded:J

.field volatile mEventsRemoved:J

.field volatile mFirst:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

.field volatile mLast:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

.field final synthetic this$0:Lcom/android/internal/midi/EventScheduler;


# direct methods
.method public constructor <init>(Lcom/android/internal/midi/EventScheduler;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->this$0:Lcom/android/internal/midi/EventScheduler;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mFirst:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mFirst:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mLast:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .line 11
    .line 12
    const-wide/16 p1, 0x1

    .line 13
    .line 14
    iput-wide p1, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsAdded:J

    .line 15
    .line 16
    const-wide/16 p1, 0x0

    .line 17
    .line 18
    iput-wide p1, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsRemoved:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->access$002(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mLast:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->access$002(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mLast:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .line 11
    .line 12
    iget-wide v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsAdded:J

    .line 13
    .line 14
    const-wide/16 v2, 0x1

    .line 15
    .line 16
    add-long/2addr v0, v2

    .line 17
    iput-wide v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsAdded:J

    .line 18
    .line 19
    return-void
.end method

.method public remove()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsRemoved:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    iput-wide v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsRemoved:J

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mFirst:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->access$000(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mFirst:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, v1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->access$002(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public size()I
    .locals 4

    iget-wide v0, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsAdded:J

    iget-wide v2, p0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->mEventsRemoved:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
