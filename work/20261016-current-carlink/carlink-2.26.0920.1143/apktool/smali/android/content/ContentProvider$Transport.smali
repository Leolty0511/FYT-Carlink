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
.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mReadOp:I

.field mWriteOp:I

.field final synthetic this$0:Landroid/content/ContentProvider;


# direct methods
.method public constructor <init>(Landroid/content/ContentProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/ContentProviderNative;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 8
    .line 9
    const/4 p1, -0x1

    .line 10
    iput p1, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 11
    .line 12
    iput p1, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    .line 13
    .line 14
    return-void
.end method

.method private enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    const-string v0, "App op not allowed"

    .line 2
    .line 3
    if-eqz p3, :cond_1

    .line 4
    .line 5
    const/16 v1, 0x77

    .line 6
    .line 7
    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    const/4 v1, -0x1

    .line 12
    if-eq p3, v1, :cond_1

    .line 13
    .line 14
    invoke-direct {p0, p1, p2, p4}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-direct {p0, p1, p2, p4}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    :cond_2
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method private enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1, p3}, Landroid/content/ContentProvider;->enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    return p2

    .line 10
    :cond_0
    iget p2, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 11
    .line 12
    const/4 p3, -0x1

    .line 13
    if-eq p2, p3, :cond_1

    .line 14
    .line 15
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 16
    .line 17
    invoke-virtual {p3, p2, p1}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method private enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1, p3}, Landroid/content/ContentProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    return p2

    .line 10
    :cond_0
    iget p2, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    .line 11
    .line 12
    const/4 p3, -0x1

    .line 13
    if-eq p2, p3, :cond_1

    .line 14
    .line 15
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 16
    .line 17
    invoke-virtual {p3, p2, p1}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    return p1
.end method


# virtual methods
.method public applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 9
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
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    const/4 v4, -0x2

    .line 10
    if-ge v3, v0, :cond_5

    .line 11
    .line 12
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    check-cast v5, Landroid/content/ContentProviderOperation;

    .line 17
    .line 18
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    iget-object v7, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 23
    .line 24
    invoke-static {v7, v6}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v6}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    aput v7, v1, v3

    .line 32
    .line 33
    if-eq v7, v4, :cond_0

    .line 34
    .line 35
    new-instance v4, Landroid/content/ContentProviderOperation;

    .line 36
    .line 37
    const/4 v7, 0x1

    .line 38
    invoke-direct {v4, v5, v7}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation;Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-object v5, v4

    .line 45
    :cond_0
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->isReadOperation()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const-string v7, "App op not allowed"

    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    invoke-direct {p0, p1, v6, v8}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    new-instance p1, Landroid/content/OperationApplicationException;

    .line 62
    .line 63
    invoke-direct {p1, v7, v2}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_2
    :goto_1
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->isWriteOperation()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_4

    .line 72
    .line 73
    invoke-direct {p0, p1, v6, v8}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-nez v4, :cond_3

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    new-instance p1, Landroid/content/OperationApplicationException;

    .line 81
    .line 82
    invoke-direct {p1, v7, v2}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 90
    .line 91
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 96
    .line 97
    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    if-eqz p2, :cond_7

    .line 102
    .line 103
    :goto_3
    array-length v0, p2

    .line 104
    if-ge v2, v0, :cond_7

    .line 105
    .line 106
    aget v0, v1, v2

    .line 107
    .line 108
    if-eq v0, v4, :cond_6

    .line 109
    .line 110
    new-instance v0, Landroid/content/ContentProviderResult;

    .line 111
    .line 112
    aget-object v3, p2, v2

    .line 113
    .line 114
    aget v5, v1, v2

    .line 115
    .line 116
    invoke-direct {v0, v3, v5}, Landroid/content/ContentProviderResult;-><init>(Landroid/content/ContentProviderResult;I)V

    .line 117
    .line 118
    .line 119
    aput-object v0, p2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_7
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 125
    .line 126
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    return-object p2

    .line 130
    :catchall_0
    move-exception p2

    .line 131
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 132
    .line 133
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    throw p2
.end method

.method public bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 2
    .line 3
    invoke-static {v0, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 7
    .line 8
    invoke-static {v0, p2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 22
    .line 23
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 28
    .line 29
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 30
    .line 31
    .line 32
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 34
    .line 35
    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    return p2

    .line 39
    :catchall_0
    move-exception p2

    .line 40
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 41
    .line 42
    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    throw p2
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p4, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 6
    .line 7
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 12
    .line 13
    invoke-virtual {v0, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 18
    .line 19
    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    return-object p2

    .line 23
    :catchall_0
    move-exception p2

    .line 24
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 25
    .line 26
    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    throw p2
.end method

.method public canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 2
    .line 3
    invoke-static {v0, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0, p1, p2, v1}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 23
    .line 24
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 29
    .line 30
    invoke-virtual {v1, p2}, Landroid/content/ContentProvider;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {p2, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 39
    .line 40
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    return-object p2

    .line 44
    :catchall_0
    move-exception p2

    .line 45
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 46
    .line 47
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    throw p2
.end method

.method public createCancellationSignal()Landroid/os/ICancellationSignal;
    .locals 1

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 2
    .line 3
    invoke-static {v0, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 7
    .line 8
    invoke-static {v0, p2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 22
    .line 23
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 28
    .line 29
    invoke-virtual {v0, p2, p3, p4}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 34
    .line 35
    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    return p2

    .line 39
    :catchall_0
    move-exception p2

    .line 40
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 41
    .line 42
    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    throw p2
.end method

.method public getContentProvider()Landroid/content/ContentProvider;
    .locals 1

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

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

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 7
    .line 8
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 7
    .line 8
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 2
    .line 3
    invoke-static {v0, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 11
    .line 12
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0, p1, p2, v1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 24
    .line 25
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentProvider;->rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 31
    .line 32
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 37
    .line 38
    invoke-virtual {v1, p2, p3}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-static {p2, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 47
    .line 48
    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    return-object p2

    .line 52
    :catchall_0
    move-exception p2

    .line 53
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 54
    .line 55
    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    throw p2
.end method

.method public openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 2
    .line 3
    invoke-static {v0, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 7
    .line 8
    invoke-static {v0, p2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 17
    .line 18
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 23
    .line 24
    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    .line 25
    .line 26
    .line 27
    move-result-object p4

    .line 28
    invoke-virtual {v0, p2, p3, p4}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    .line 29
    .line 30
    .line 31
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 33
    .line 34
    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    return-object p2

    .line 38
    :catchall_0
    move-exception p2

    .line 39
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 40
    .line 41
    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    throw p2
.end method

.method public openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 2
    .line 3
    invoke-static {v0, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 7
    .line 8
    invoke-static {v0, p2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-direct {p0, p1, p2, p3, p5}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 13
    .line 14
    .line 15
    iget-object p5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 16
    .line 17
    invoke-static {p5, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :try_start_0
    iget-object p5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 22
    .line 23
    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    .line 24
    .line 25
    .line 26
    move-result-object p4

    .line 27
    invoke-virtual {p5, p2, p3, p4}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    .line 28
    .line 29
    .line 30
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 32
    .line 33
    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    return-object p2

    .line 37
    :catchall_0
    move-exception p2

    .line 38
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 39
    .line 40
    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    throw p2
.end method

.method public openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p4, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 6
    .line 7
    invoke-static {v0, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 11
    .line 12
    invoke-static {v0, p2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const-string/jumbo v0, "r"

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 24
    .line 25
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 30
    .line 31
    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    .line 32
    .line 33
    .line 34
    move-result-object p5

    .line 35
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    .line 36
    .line 37
    .line 38
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 40
    .line 41
    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    return-object p2

    .line 45
    :catchall_0
    move-exception p2

    .line 46
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 47
    .line 48
    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    throw p2
.end method

.method public query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 2
    .line 3
    invoke-static {v0, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 7
    .line 8
    invoke-static {v0, p2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    new-instance p2, Landroid/database/MatrixCursor;

    .line 23
    .line 24
    invoke-direct {p2, p3, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    return-object p2

    .line 28
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 29
    .line 30
    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    .line 31
    .line 32
    .line 33
    move-result-object p5

    .line 34
    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    if-nez p2, :cond_1

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_1
    new-instance p3, Landroid/database/MatrixCursor;

    .line 42
    .line 43
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-direct {p3, p2, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    return-object p3

    .line 51
    :cond_2
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 52
    .line 53
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 58
    .line 59
    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    .line 60
    .line 61
    .line 62
    move-result-object p5

    .line 63
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 64
    .line 65
    .line 66
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 68
    .line 69
    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    return-object p2

    .line 73
    :catchall_0
    move-exception p2

    .line 74
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 75
    .line 76
    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    throw p2
.end method

.method public refresh(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 2
    .line 3
    invoke-static {v0, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 20
    .line 21
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 26
    .line 27
    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    invoke-virtual {v0, p2, p3, p4}, Landroid/content/ContentProvider;->refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z

    .line 32
    .line 33
    .line 34
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 36
    .line 37
    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    return p2

    .line 41
    :catchall_0
    move-exception p2

    .line 42
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 43
    .line 44
    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    throw p2
.end method

.method public uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 2
    .line 3
    invoke-static {v0, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0, p1, p2, v1}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 23
    .line 24
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 29
    .line 30
    invoke-virtual {v1, p2}, Landroid/content/ContentProvider;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {p2, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 39
    .line 40
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    return-object p2

    .line 44
    :catchall_0
    move-exception p2

    .line 45
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 46
    .line 47
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    throw p2
.end method

.method public update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 2
    .line 3
    invoke-static {v0, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 7
    .line 8
    invoke-static {v0, p2}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 22
    .line 23
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 28
    .line 29
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 34
    .line 35
    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    return p2

    .line 39
    :catchall_0
    move-exception p2

    .line 40
    iget-object p3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 41
    .line 42
    invoke-static {p3, p1}, Landroid/content/ContentProvider;->access$200(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    throw p2
.end method
