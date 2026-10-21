.class public Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
.super Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/midi/MidiEventScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MidiEvent"
.end annotation


# instance fields
.field public count:I

.field public data:[B


# direct methods
.method private constructor <init>(I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;-><init>(J)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    .line 5
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    return-void
.end method

.method public synthetic constructor <init>(ILcom/android/internal/midi/MidiEventScheduler$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;-><init>(I)V

    return-void
.end method

.method private constructor <init>([BIIJ)V
    .locals 0

    .line 6
    invoke-direct {p0, p4, p5}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;-><init>(J)V

    const/4 p4, 0x0

    .line 7
    iput p4, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    .line 8
    new-array p5, p3, [B

    iput-object p5, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    .line 9
    invoke-static {p1, p2, p5, p4, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 10
    iput p3, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    return-void
.end method

.method public synthetic constructor <init>([BIIJLcom/android/internal/midi/MidiEventScheduler$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;-><init>([BIIJ)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "Event: "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v2, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    .line 5
    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Landroid/accessibilityservice/c;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    .line 13
    .line 14
    aget-byte v2, v2, v1

    .line 15
    .line 16
    const-string v3, ", "

    .line 17
    .line 18
    invoke-static {v0, v2, v3}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-object v0
.end method
