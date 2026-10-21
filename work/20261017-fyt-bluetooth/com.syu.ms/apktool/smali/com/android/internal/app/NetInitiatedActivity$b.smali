.class public Lcom/android/internal/app/NetInitiatedActivity$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/NetInitiatedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/internal/app/NetInitiatedActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/NetInitiatedActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/NetInitiatedActivity$b;->a:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/internal/app/NetInitiatedActivity$b;->a:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-static {p1}, Lcom/android/internal/app/NetInitiatedActivity;->c(Lcom/android/internal/app/NetInitiatedActivity;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/internal/app/NetInitiatedActivity$b;->a:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-static {p1}, Lcom/android/internal/app/NetInitiatedActivity;->d(Lcom/android/internal/app/NetInitiatedActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/app/NetInitiatedActivity;->e(Lcom/android/internal/app/NetInitiatedActivity;I)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/android/internal/app/NetInitiatedActivity$b;->a:Lcom/android/internal/app/NetInitiatedActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
