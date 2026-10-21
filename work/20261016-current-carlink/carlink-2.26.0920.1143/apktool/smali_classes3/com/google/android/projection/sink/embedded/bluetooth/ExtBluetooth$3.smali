.class Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$3;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->asyncWrite(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$3;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    iput-object p2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$3;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$3;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$3;->val$str:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->access$000(Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;Ljava/lang/String;)I

    return-void
.end method
