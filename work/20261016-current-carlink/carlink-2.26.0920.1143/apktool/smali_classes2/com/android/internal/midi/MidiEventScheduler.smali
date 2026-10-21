.class public Lcom/android/internal/midi/MidiEventScheduler;
.super Lcom/android/internal/midi/EventScheduler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;,
        Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;
    }
.end annotation


# static fields
.field private static final POOL_EVENT_SIZE:I = 0x10

.field private static final TAG:Ljava/lang/String; = "MidiEventScheduler"


# instance fields
.field private mReceiver:Landroid/media/midi/MidiReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/internal/midi/EventScheduler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/android/internal/midi/MidiEventScheduler$SchedulingReceiver;-><init>(Lcom/android/internal/midi/MidiEventScheduler;Lcom/android/internal/midi/MidiEventScheduler$1;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/internal/midi/MidiEventScheduler;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic access$100(Lcom/android/internal/midi/MidiEventScheduler;[BIIJ)Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/midi/MidiEventScheduler;->createScheduledEvent([BIIJ)Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    move-result-object p0

    return-object p0
.end method

.method private createScheduledEvent([BIIJ)Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    .locals 8

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    if-le p3, v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    .line 6
    .line 7
    const/4 v7, 0x0

    .line 8
    move-object v1, v0

    .line 9
    move-object v2, p1

    .line 10
    move v3, p2

    .line 11
    move v4, p3

    .line 12
    move-wide v5, p4

    .line 13
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;-><init>([BIIJLcom/android/internal/midi/MidiEventScheduler$1;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/midi/EventScheduler;->removeEventfromPool()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    new-instance v1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-direct {v1, v0, v2}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;-><init>(ILcom/android/internal/midi/MidiEventScheduler$1;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    move-object v0, v1

    .line 32
    iget-object v1, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 36
    .line 37
    .line 38
    iput p3, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    .line 39
    .line 40
    invoke-virtual {v0, p4, p5}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->setTimestamp(J)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-object v0
.end method


# virtual methods
.method public addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    .line 9
    .line 10
    array-length v0, v0

    .line 11
    const/16 v1, 0x10

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-super {p0, p1}, Lcom/android/internal/midi/EventScheduler;->addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public getReceiver()Landroid/media/midi/MidiReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/midi/MidiEventScheduler;->mReceiver:Landroid/media/midi/MidiReceiver;

    return-object v0
.end method
