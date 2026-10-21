.class public Lcom/android/internal/app/HeavyWeightSwitcherActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/HeavyWeightSwitcherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/internal/app/HeavyWeightSwitcherActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/HeavyWeightSwitcherActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$b;->a:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityManager;->finishHeavyWeightApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$b;->a:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    iget-boolean p1, v0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->b:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, v0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->a:Landroid/content/IntentSender;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x2000000

    const/high16 v5, 0x2000000

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->a:Landroid/content/IntentSender;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "HeavyWeightSwitcherActivity"

    const-string v1, "Failure starting"

    .line 5
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$b;->a:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
