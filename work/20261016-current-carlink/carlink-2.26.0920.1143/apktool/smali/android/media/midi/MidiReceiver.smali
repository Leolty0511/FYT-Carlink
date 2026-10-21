.class public abstract Landroid/media/midi/MidiReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mMaxMessageSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Landroid/media/midi/MidiReceiver;->mMaxMessageSize:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Landroid/media/midi/MidiReceiver;->mMaxMessageSize:I

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/midi/MidiReceiver;->onFlush()V

    return-void
.end method

.method public final getMaxMessageSize()I
    .locals 1

    iget v0, p0, Landroid/media/midi/MidiReceiver;->mMaxMessageSize:I

    return v0
.end method

.method public onFlush()V
    .locals 0

    return-void
.end method

.method public abstract onSend([BIIJ)V
.end method

.method public send([BII)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    return-void
.end method

.method public send([BIIJ)V
    .locals 8

    .line 2
    invoke-virtual {p0}, Landroid/media/midi/MidiReceiver;->getMaxMessageSize()I

    move-result v0

    :goto_0
    if-lez p3, :cond_1

    if-le p3, v0, :cond_0

    move v7, v0

    goto :goto_1

    :cond_0
    move v7, p3

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, v7

    move-wide v5, p4

    .line 3
    invoke-virtual/range {v1 .. v6}, Landroid/media/midi/MidiReceiver;->onSend([BIIJ)V

    add-int/2addr p2, v7

    sub-int/2addr p3, v7

    goto :goto_0

    :cond_1
    return-void
.end method
