.class Lcom/android/internal/widget/LockPatternUtils$2;
.super Lcom/android/internal/widget/ICheckCredentialProgressCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternUtils;->wrapCallback(Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Lcom/android/internal/widget/ICheckCredentialProgressCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternUtils;

.field final synthetic val$callback:Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$2;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternUtils$2;->val$callback:Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;

    invoke-direct {p0}, Lcom/android/internal/widget/ICheckCredentialProgressCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCredentialVerified()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$2;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->access$000(Lcom/android/internal/widget/LockPatternUtils;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$2;->val$callback:Lcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/internal/widget/d;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lcom/android/internal/widget/d;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
