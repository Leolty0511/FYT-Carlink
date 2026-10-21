.class Lcom/android/internal/widget/LockPatternUtils$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternUtils;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$service:Landroid/os/IBinder;

.field final synthetic val$type:I


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/IBinder;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$1;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$service:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$type:I

    iput-object p4, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$service:Landroid/os/IBinder;

    invoke-static {p1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object p1

    .line 3
    :try_start_0
    iget v0, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$type:I

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$1;->val$password:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/os/storage/IStorageManager;->changeEncryptionPassword(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "LockPatternUtils"

    const-string v1, "Error changing encryption password"

    .line 4
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
