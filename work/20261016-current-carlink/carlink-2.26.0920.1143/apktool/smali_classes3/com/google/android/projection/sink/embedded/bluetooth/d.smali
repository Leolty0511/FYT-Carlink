.class public final synthetic Lcom/google/android/projection/sink/embedded/bluetooth/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

.field public final synthetic c:Ljava/nio/ByteBuffer;

.field public final synthetic d:Ljava/nio/ByteBuffer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/d;->b:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    iput-object p2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/d;->c:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lcom/google/android/projection/sink/embedded/bluetooth/d;->d:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/d;->c:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/d;->d:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/d;->b:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    invoke-static {v2, v0, v1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->a(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    return-void
.end method
