.class Lcom/android/internal/content/FileSystemProvider$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/content/FileSystemProvider;->addFolderToMediaStore(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/android/internal/content/FileSystemProvider;

.field final synthetic val$visibleFolder:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/android/internal/content/FileSystemProvider;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/content/FileSystemProvider$1;->this$0:Lcom/android/internal/content/FileSystemProvider;

    iput-object p2, p0, Lcom/android/internal/content/FileSystemProvider$1;->val$visibleFolder:Ljava/io/File;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/content/FileSystemProvider$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .line 2
    iget-object p1, p0, Lcom/android/internal/content/FileSystemProvider$1;->val$visibleFolder:Ljava/io/File;

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/content/FileSystemProvider$1;->this$0:Lcom/android/internal/content/FileSystemProvider;

    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "external"

    .line 5
    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getDirectoryUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 6
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "_data"

    .line 7
    iget-object v5, p0, Lcom/android/internal/content/FileSystemProvider$1;->val$visibleFolder:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
