.class Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->handleStartRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$4;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->access$500()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "Did not start projection: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$4;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-static {p1, v0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->access$600(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$4;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 1
    .param p1    # Ljava/lang/Void;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$4;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;->access$600(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;Z)V

    return-void
.end method
