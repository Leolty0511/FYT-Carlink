.class public Lcom/android/internal/content/NativeLibraryHelper$Handle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/NativeLibraryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Handle"
.end annotation


# instance fields
.field final apkDir:Ljava/lang/String;

.field final apkHandles:[J

.field final debuggable:Z

.field final extractNativeLibs:Z

.field private volatile mClosed:Z

.field private final mGuard:Ldalvik/system/CloseGuard;

.field final multiArch:Z

.field final pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>([JZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    .line 11
    .line 12
    iput-boolean p2, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->multiArch:Z

    .line 13
    .line 14
    iput-boolean p3, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->extractNativeLibs:Z

    .line 15
    .line 16
    iput-boolean p4, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->debuggable:Z

    .line 17
    .line 18
    iput-object p5, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->pkgName:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p6, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkDir:Ljava/lang/String;

    .line 21
    .line 22
    const-string p1, "close"

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static create(Landroid/content/pm/PackageParser$Package;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .locals 8

    .line 10
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    :goto_0
    move-object v7, v0

    .line 12
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->getAllCodePaths()Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v3, v0

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const/high16 v5, 0x10000000

    and-int/2addr v5, v0

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move v4, v5

    move v5, v1

    invoke-static/range {v2 .. v7}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/util/List;ZZZLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/pm/PackageParser$PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .locals 7

    .line 13
    iget-object v0, p0, Landroid/content/pm/PackageParser$PackageLite;->codePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "/system/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/PackageParser$PackageLite;->codePath:Ljava/lang/String;

    const-string v1, "/vendor/"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/PackageParser$PackageLite;->codePath:Ljava/lang/String;

    const-string v1, "/oem/"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageParser$PackageLite;->codePath:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    move-object v6, v0

    .line 17
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$PackageLite;->getAllCodePaths()Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/pm/PackageParser$PackageLite;->multiArch:Z

    iget-boolean v3, p0, Landroid/content/pm/PackageParser$PackageLite;->extractNativeLibs:Z

    iget-boolean v4, p0, Landroid/content/pm/PackageParser$PackageLite;->debuggable:Z

    iget-object v5, p0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/util/List;ZZZLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, v0}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Landroid/content/pm/PackageParser$PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to parse package: "

    .line 4
    invoke-static {v2, p0}, Landroid/accessibilityservice/c;->i(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-direct {v1, p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static create(Ljava/util/List;ZZZLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/content/NativeLibraryHelper$Handle;"
        }
    .end annotation

    .line 18
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 19
    new-array v2, v0, [J

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    .line 20
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 21
    invoke-static {v4}, Lcom/android/internal/content/NativeLibraryHelper;->access$000(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v2, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    :goto_1
    if-ge v1, v3, :cond_0

    .line 22
    aget-wide p0, v2, v1

    invoke-static {p0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->access$100(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 23
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unable to open APK: "

    .line 24
    invoke-static {p1, v4}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 26
    :cond_2
    new-instance p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/content/NativeLibraryHelper$Handle;-><init>([JZZZLjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->apkHandles:[J

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-wide v3, v0, v2

    .line 8
    .line 9
    invoke-static {v3, v4}, Lcom/android/internal/content/NativeLibraryHelper;->access$100(J)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    .line 16
    .line 17
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mClosed:Z

    .line 22
    .line 23
    return-void
.end method

.method public finalize()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mGuard:Ldalvik/system/CloseGuard;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 6
    .line 7
    .line 8
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/content/NativeLibraryHelper$Handle;->mClosed:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 21
    .line 22
    .line 23
    throw v0
.end method
