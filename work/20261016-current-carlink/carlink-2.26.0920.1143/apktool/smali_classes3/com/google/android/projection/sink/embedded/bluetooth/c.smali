.class public final synthetic Lcom/google/android/projection/sink/embedded/bluetooth/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/c;->a:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    iput-boolean p2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/c;->b:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/c;->a:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    iget-boolean v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/c;->b:Z

    invoke-static {v0, v1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->b(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;Z)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
