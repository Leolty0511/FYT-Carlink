.class public Lcom/android/internal/app/HeavyWeightSwitcherActivity$a;
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
    iput-object p1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$a;->a:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$a;->a:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    iget v0, v0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    iget-object p1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$a;->a:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
