.class final Landroid/util/jar/StrictJarFile$EntryIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/jar/StrictJarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/zip/ZipEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final iterationHandle:J

.field private nextEntry:Ljava/util/zip/ZipEntry;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2, p3}, Landroid/util/jar/StrictJarFile;->access$000(JLjava/lang/String;)J

    .line 5
    .line 6
    .line 7
    move-result-wide p1

    .line 8
    iput-wide p1, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->iterationHandle:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->nextEntry:Ljava/util/zip/ZipEntry;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-wide v2, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->iterationHandle:J

    .line 8
    .line 9
    invoke-static {v2, v3}, Landroid/util/jar/StrictJarFile;->access$100(J)Ljava/util/zip/ZipEntry;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    :cond_1
    iput-object v0, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->nextEntry:Ljava/util/zip/ZipEntry;

    .line 18
    .line 19
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile$EntryIterator;->next()Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/zip/ZipEntry;
    .locals 2

    .line 2
    iget-object v0, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->nextEntry:Ljava/util/zip/ZipEntry;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->nextEntry:Ljava/util/zip/ZipEntry;

    return-object v0

    .line 4
    :cond_0
    iget-wide v0, p0, Landroid/util/jar/StrictJarFile$EntryIterator;->iterationHandle:J

    invoke-static {v0, v1}, Landroid/util/jar/StrictJarFile;->access$100(J)Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
