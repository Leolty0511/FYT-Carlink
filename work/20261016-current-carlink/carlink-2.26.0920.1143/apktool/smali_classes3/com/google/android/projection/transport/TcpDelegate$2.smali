.class Lcom/google/android/projection/transport/TcpDelegate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/transport/TcpDelegate;->tryOpen(Landroid/os/Parcelable;Lcom/google/android/projection/transport/TransportFactory$Callback;)Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/transport/TcpDelegate;

.field final synthetic val$thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/transport/TcpDelegate;Ljava/lang/Thread;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/transport/TcpDelegate$2;->this$0:Lcom/google/android/projection/transport/TcpDelegate;

    iput-object p2, p0, Lcom/google/android/projection/transport/TcpDelegate$2;->val$thread:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/transport/TcpDelegate$2;->this$0:Lcom/google/android/projection/transport/TcpDelegate;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/projection/transport/TcpDelegate;->access$102(Lcom/google/android/projection/transport/TcpDelegate;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/projection/transport/TcpDelegate$2;->val$thread:Ljava/lang/Thread;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/projection/transport/TcpDelegate$2;->val$thread:Ljava/lang/Thread;

    .line 13
    .line 14
    const-wide/16 v1, 0x1f4

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
