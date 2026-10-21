.class Lcom/google/android/projection/protocol/GalReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/protocol/GalReceiver;->highLatencyCallback([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/protocol/GalReceiver;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/protocol/GalReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/protocol/GalReceiver$1;->this$0:Lcom/google/android/projection/protocol/GalReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/GalReceiver$1;->this$0:Lcom/google/android/projection/protocol/GalReceiver;

    invoke-static {v0}, Lcom/google/android/projection/protocol/GalReceiver;->access$000(Lcom/google/android/projection/protocol/GalReceiver;)Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;->onPoorWirelessNetworkConnectivity()V

    return-void
.end method
