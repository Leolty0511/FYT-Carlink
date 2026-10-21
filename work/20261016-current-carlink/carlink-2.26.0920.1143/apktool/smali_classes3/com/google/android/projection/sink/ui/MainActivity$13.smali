.class Lcom/google/android/projection/sink/ui/MainActivity$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/GalReceiver$AudioFocusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/ui/MainActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$13;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusRequest(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$13;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$3000(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/audio/AudioFocusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->handleAudioFocusRequest(I)V

    return-void
.end method
