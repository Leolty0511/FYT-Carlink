.class public Lcom/android/internal/os/storage/ExternalStorageFormatter$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/os/storage/IMountService;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/android/internal/os/storage/ExternalStorageFormatter;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$b;->c:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iput-object p2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$b;->a:Landroid/os/storage/IMountService;

    iput-object p3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$b;->a:Landroid/os/storage/IMountService;

    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$b;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$b;->c:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const v2, 0x10404d5

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    :goto_0
    const-string v1, "android.intent.action.MASTER_CLEAR"

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$b;->c:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-static {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->a(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$b;->c:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 5
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$b;->c:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$b;->c:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-static {v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->b(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$b;->c:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 8
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$b;->a:Landroid/os/storage/IMountService;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$b;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "ExternalStorageFormatter"

    const-string v2, "Failed talking with mount service"

    .line 9
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    :goto_1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$b;->c:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
