.class Landroid/media/MediaScanner$MediaBulkDeleter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaBulkDeleter"
.end annotation


# instance fields
.field public final mBaseUri:Landroid/net/Uri;

.field public final mPackageName:Ljava/lang/String;

.field public final mProvider:Landroid/content/IContentProvider;

.field public whereArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public whereClause:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/IContentProvider;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    .line 4
    iput-object p1, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->mProvider:Landroid/content/IContentProvider;

    .line 5
    iput-object p2, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->mPackageName:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->mBaseUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public delete(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x64

    if-le p1, p2, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    :cond_1
    return-void
.end method

.method public flush()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    iget-object v1, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 4
    iget-object v1, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->mProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->mBaseUri:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method
