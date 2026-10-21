.class Landroid/app/KeyguardManager$1;
.super Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/KeyguardManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;


# direct methods
.method public constructor <init>(Landroid/app/KeyguardManager;Landroid/app/KeyguardManager$KeyguardDismissCallback;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Landroid/app/KeyguardManager$1;->this$0:Landroid/app/KeyguardManager;

    iput-object p2, p0, Landroid/app/KeyguardManager$1;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    iput-object p3, p0, Landroid/app/KeyguardManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$activity:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$activity:Landroid/app/Activity;

    .line 14
    .line 15
    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v1, p0, Landroid/app/KeyguardManager$1;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroid/app/k;

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-direct {v2, v1, v3}, Landroid/app/k;-><init>(Landroid/app/KeyguardManager$KeyguardDismissCallback;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public onDismissError()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$activity:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$activity:Landroid/app/Activity;

    .line 14
    .line 15
    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v1, p0, Landroid/app/KeyguardManager$1;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroid/app/k;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-direct {v2, v1, v3}, Landroid/app/k;-><init>(Landroid/app/KeyguardManager$KeyguardDismissCallback;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public onDismissSucceeded()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$activity:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroid/app/KeyguardManager$1;->val$activity:Landroid/app/Activity;

    .line 14
    .line 15
    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v1, p0, Landroid/app/KeyguardManager$1;->val$callback:Landroid/app/KeyguardManager$KeyguardDismissCallback;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroid/app/k;

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    invoke-direct {v2, v1, v3}, Landroid/app/k;-><init>(Landroid/app/KeyguardManager$KeyguardDismissCallback;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
