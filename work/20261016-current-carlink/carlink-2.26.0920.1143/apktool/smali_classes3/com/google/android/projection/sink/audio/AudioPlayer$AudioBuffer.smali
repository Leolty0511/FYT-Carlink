.class Lcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/audio/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioBuffer"
.end annotation


# instance fields
.field public payload:[B

.field public presentationTimeUs:J

.field final synthetic this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;


# direct methods
.method private constructor <init>(Lcom/google/android/projection/sink/audio/AudioPlayer;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;->this$0:Lcom/google/android/projection/sink/audio/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;->presentationTimeUs:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/sink/audio/AudioPlayer;Lcom/google/android/projection/sink/audio/AudioPlayer$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/audio/AudioPlayer$AudioBuffer;-><init>(Lcom/google/android/projection/sink/audio/AudioPlayer;)V

    return-void
.end method
