.class public Lcom/android/internal/os/storage/ExternalStorageFormatter;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field public static final i:Landroid/content/ComponentName;


# instance fields
.field public a:Landroid/os/storage/StorageVolume;

.field public b:Landroid/os/storage/IMountService;

.field public c:Landroid/os/storage/StorageManager;

.field public d:Landroid/os/PowerManager$WakeLock;

.field public e:Landroid/app/ProgressDialog;

.field public f:Z

.field public g:Z

.field public h:Landroid/os/storage/StorageEventListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->i:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->b:Landroid/os/storage/IMountService;

    .line 3
    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->c:Landroid/os/storage/StorageManager;

    .line 4
    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->e:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->f:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->g:Z

    .line 7
    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$a;

    invoke-direct {v0, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$a;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->h:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method public static synthetic a(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->f:Z

    return p0
.end method

.method public static synthetic b(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->g:Z

    return p0
.end method


# virtual methods
.method public c(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 2
    iget-boolean p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->g:Z

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MASTER_CLEAR"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public d()Landroid/os/storage/IMountService;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->b:Landroid/os/storage/IMountService;

    if-nez v0, :cond_1

    const-string v0, "mount"

    .line 2
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->b:Landroid/os/storage/IMountService;

    goto :goto_0

    :cond_0
    const-string v0, "ExternalStorageFormatter"

    const-string v1, "Can\'t get mount service"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->b:Landroid/os/storage/IMountService;

    return-object v0
.end method

.method public e(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->e:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->e:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->e:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 5
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 6
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->e:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->a:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->c:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "mounted"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ExternalStorageFormatter"

    if-nez v1, :cond_a

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v1, "nofs"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "unmountable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "bad_removal"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x10404d6

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->c(I)V

    goto/16 :goto_5

    :cond_3
    const-string v1, "checking"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x10404d7

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->c(I)V

    goto/16 :goto_5

    :cond_4
    const-string/jumbo v1, "removed"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v0, 0x10404d8

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->c(I)V

    goto/16 :goto_5

    :cond_5
    const-string/jumbo v1, "shared"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v0, 0x10404d9

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->c(I)V

    goto/16 :goto_5

    :cond_6
    const v1, 0x10404da

    .line 12
    invoke-virtual {p0, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->c(I)V

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown storage state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_5

    :cond_7
    :goto_1
    const v0, 0x10404d4

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->e(I)V

    .line 16
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->d()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->a:Landroid/os/storage/StorageVolume;

    if-nez v1, :cond_8

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    :goto_2
    if-eqz v0, :cond_9

    .line 18
    new-instance v2, Lcom/android/internal/os/storage/ExternalStorageFormatter$b;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter$b;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_5

    :cond_9
    const-string v0, "Unable to locate IMountService"

    .line 19
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_a
    :goto_3
    const v0, 0x10404d3

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->e(I)V

    .line 21
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->d()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->a:Landroid/os/storage/StorageVolume;

    if-nez v1, :cond_b

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_b
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    :goto_4
    const/4 v3, 0x1

    .line 23
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->f:Z

    invoke-interface {v0, v1, v3, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v1, "Failed talking with mount service"

    .line 24
    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->d()Landroid/os/storage/IMountService;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->a:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_0
    :try_start_0
    invoke-interface {p1, v0}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "ExternalStorageFormatter"

    const-string v1, "Failed talking with mount service"

    .line 4
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    :goto_1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->c:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "storage"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->c:Landroid/os/storage/StorageManager;

    .line 4
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->h:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    :cond_0
    const-string v0, "power"

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ExternalStorageFormatter"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->d:Landroid/os/PowerManager$WakeLock;

    .line 6
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->c:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->h:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    .line 2
    iput-boolean p3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->f:Z

    :cond_0
    const/4 p2, 0x0

    const-string v0, "always_reset"

    .line 3
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    iput-boolean p3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->g:Z

    :cond_1
    const-string/jumbo p2, "storage_volume"

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageVolume;

    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->a:Landroid/os/storage/StorageVolume;

    .line 6
    iget-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->e:Landroid/app/ProgressDialog;

    if-nez p1, :cond_3

    .line 7
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->e:Landroid/app/ProgressDialog;

    .line 8
    invoke-virtual {p1, p3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 9
    iget-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->e:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 10
    iget-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->e:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d3

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 11
    iget-boolean p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->g:Z

    if-nez p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->e:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->f()V

    .line 14
    iget-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->e:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_3
    const/4 p1, 0x3

    return p1
.end method
