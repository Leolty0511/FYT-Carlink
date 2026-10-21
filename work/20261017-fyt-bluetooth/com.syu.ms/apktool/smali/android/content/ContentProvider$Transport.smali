.class Landroid/content/ContentProvider$Transport;
.super Landroid/content/ContentProviderNative;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Transport"
.end annotation


# instance fields
.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mReadOp:I

.field public mWriteOp:I

.field public final synthetic this$0:Landroid/content/ContentProvider;


# direct methods
.method public constructor <init>(Landroid/content/ContentProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-direct {p0}, Landroid/content/ContentProviderNative;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 4
    iput p1, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    return-void
.end method

.method private enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    const-string v0, "App op not allowed"

    if-eqz p3, :cond_1

    const/16 v1, 0x77

    .line 1
    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    return-void

    .line 5
    :cond_2
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->enforceReadPermissionInner(Landroid/net/Uri;)V

    .line 2
    iget p2, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->enforceWritePermissionInner(Landroid/net/Uri;)V

    .line 2
    iget p2, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProviderOperation;

    .line 2
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->isReadOperation()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "App op not allowed"

    if-eqz v2, :cond_2

    .line 3
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    new-instance p1, Landroid/content/OperationApplicationException;

    invoke-direct {p1, v4, v3}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 5
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->isWriteOperation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    new-instance p1, Landroid/content/OperationApplicationException;

    invoke-direct {p1, v4, v3}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 8
    :cond_4
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object p2

    :catchall_0
    move-exception p2

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw p2
.end method

.method public bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return p2

    :catchall_0
    move-exception p2

    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw p2
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object p2

    :catchall_0
    move-exception p2

    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw p2
.end method

.method public canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object p2

    :catchall_0
    move-exception p2

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw p2
.end method

.method public createCancellationSignal()Landroid/os/ICancellationSignal;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p3, p4}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return p2

    :catchall_0
    move-exception p2

    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw p2
.end method

.method public getContentProvider()Landroid/content/ContentProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentProvider;->rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p3}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object p2

    :catchall_0
    move-exception p2

    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw p2
.end method

.method public openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object p4

    invoke-virtual {v0, p2, p3, p4}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object p2

    :catchall_0
    move-exception p2

    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw p2
.end method

.method public openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object p4

    invoke-virtual {v0, p2, p3, p4}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object p2

    :catchall_0
    move-exception p2

    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw p2
.end method

.method public openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1

    const-string v0, "r"

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object p5

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object p2

    :catchall_0
    move-exception p2

    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw p2
.end method

.method public query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .locals 8

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p7}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v7

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentProvider;->rejectQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p7}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object p2

    :catchall_0
    move-exception p2

    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw p2
.end method

.method public uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object p2

    :catchall_0
    move-exception p2

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw p2
.end method

.method public update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return p2

    :catchall_0
    move-exception p2

    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw p2
.end method
