.class Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$InputS;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputS"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$InputS;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public read([BII)I
    .locals 4

    .line 2
    new-array v0, p3, [B

    .line 3
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$InputS;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    invoke-virtual {v1, v0, p3}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;->read([BI)I

    move-result p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    add-int v2, p2, v1

    .line 4
    aget-byte v3, v0, v1

    aput-byte v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return p3
.end method
