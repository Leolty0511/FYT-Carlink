.class Lcom/google/android/projection/sink/ui/MainActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/ui/MainActivity;->startConnectionEstablishing(Lcom/google/android/projection/protocol/Transport;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/ui/MainActivity;

.field final synthetic val$transport:Lcom/google/android/projection/protocol/Transport;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/MainActivity;Lcom/google/android/projection/protocol/Transport;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$3;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    iput-object p2, p0, Lcom/google/android/projection/sink/ui/MainActivity$3;->val$transport:Lcom/google/android/projection/protocol/Transport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$3;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$500(Lcom/google/android/projection/sink/ui/MainActivity;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$3;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity$3;->val$transport:Lcom/google/android/projection/protocol/Transport;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/projection/sink/ui/MainActivity;->onConnected(Lcom/google/android/projection/protocol/Transport;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
