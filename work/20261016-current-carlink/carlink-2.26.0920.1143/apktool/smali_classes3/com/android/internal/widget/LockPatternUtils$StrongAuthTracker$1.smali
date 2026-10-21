.class Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$1;
.super Landroid/app/trust/IStrongAuthTracker$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$1;->this$0:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    invoke-direct {p0}, Landroid/app/trust/IStrongAuthTracker$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStrongAuthRequiredChanged(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$1;->this$0:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->access$100(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
