.class Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$1;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$1;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    const-string v1, "AT#QI"

    invoke-static {v0, v1}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->access$000(Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;Ljava/lang/String;)I

    return-void
.end method
