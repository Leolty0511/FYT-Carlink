.class final Lcom/android/internal/widget/LockPatternChecker$4;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternChecker;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZJILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field private mThrottleTimeout:I

.field final synthetic val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

.field final synthetic val$challenge:J

.field final synthetic val$isPattern:Z

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$userId:I

.field final synthetic val$utils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZJILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$password:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$isPattern:Z

    iput-wide p4, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$challenge:J

    iput p6, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$userId:I

    iput-object p7, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$4;->doInBackground([Ljava/lang/Void;)[B

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)[B
    .locals 6

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$password:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$isPattern:Z

    iget-wide v3, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$challenge:J

    iget v5, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$userId:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtils;->verifyTiedProfileChallenge(Ljava/lang/String;ZJI)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/LockPatternChecker$4;->mThrottleTimeout:I

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$4;->onPostExecute([B)V

    return-void
.end method

.method public onPostExecute([B)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

    iget v1, p0, Lcom/android/internal/widget/LockPatternChecker$4;->mThrottleTimeout:I

    invoke-interface {v0, p1, v1}, Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;->onVerified([BI)V

    return-void
.end method
