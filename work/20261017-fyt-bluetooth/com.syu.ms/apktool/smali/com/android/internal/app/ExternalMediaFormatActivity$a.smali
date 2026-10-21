.class public Lcom/android/internal/app/ExternalMediaFormatActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ExternalMediaFormatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/internal/app/ExternalMediaFormatActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ExternalMediaFormatActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/ExternalMediaFormatActivity$a;->a:Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "got action "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ExternalMediaFormatActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.intent.action.MEDIA_REMOVED"

    if-eq p1, p2, :cond_0

    const-string p2, "android.intent.action.MEDIA_CHECKING"

    if-eq p1, p2, :cond_0

    const-string p2, "android.intent.action.MEDIA_MOUNTED"

    if-eq p1, p2, :cond_0

    const-string p2, "android.intent.action.MEDIA_SHARED"

    if-ne p1, p2, :cond_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/internal/app/ExternalMediaFormatActivity$a;->a:Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
