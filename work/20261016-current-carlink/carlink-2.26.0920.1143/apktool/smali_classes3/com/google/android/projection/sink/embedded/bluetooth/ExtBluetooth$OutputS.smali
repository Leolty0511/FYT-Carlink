.class Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$OutputS;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutputS"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$OutputS;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public write([B)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$OutputS;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->write([BI)I

    return-void
.end method
