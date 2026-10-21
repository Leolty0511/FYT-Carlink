.class Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;
.super Landroid/os/FileObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/FileSystemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectoryObserver"
.end annotation


# static fields
.field private static final NOTIFY_EVENTS:I = 0xfcc


# instance fields
.field private final mFile:Ljava/io/File;

.field private final mNotifyUri:Landroid/net/Uri;

.field private mRefCount:I

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0xfcc

    .line 6
    .line 7
    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mRefCount:I

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mFile:Ljava/io/File;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mResolver:Landroid/content/ContentResolver;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mNotifyUri:Landroid/net/Uri;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic access$000(Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mRefCount:I

    return p0
.end method

.method public static synthetic access$008(Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;)I
    .locals 2

    iget v0, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mRefCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mRefCount:I

    return v0
.end method

.method public static synthetic access$010(Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;)I
    .locals 2

    iget v0, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mRefCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mRefCount:I

    return v0
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2

    and-int/lit16 p1, p1, 0xfcc

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mNotifyUri:Landroid/net/Uri;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DirectoryObserver{file="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mFile:Ljava/io/File;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", ref="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mRefCount:I

    .line 23
    .line 24
    const-string/jumbo v2, "}"

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method
