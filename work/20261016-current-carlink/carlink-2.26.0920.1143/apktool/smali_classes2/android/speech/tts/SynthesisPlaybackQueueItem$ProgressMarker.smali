.class Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/SynthesisPlaybackQueueItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressMarker"
.end annotation


# instance fields
.field public final end:I

.field public final frames:I

.field public final start:I

.field final synthetic this$0:Landroid/speech/tts/SynthesisPlaybackQueueItem;


# direct methods
.method public constructor <init>(Landroid/speech/tts/SynthesisPlaybackQueueItem;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->this$0:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->frames:I

    .line 7
    .line 8
    iput p3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->start:I

    .line 9
    .line 10
    iput p4, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ProgressMarker;->end:I

    .line 11
    .line 12
    return-void
.end method
