.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_FORMAT_WHERE:Ljava/lang/String; = "_id=? AND format=?"

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field private static final PARENT_FORMAT_WHERE:Ljava/lang/String; = "parent=? AND format=?"

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final TAG:Ljava/lang/String; = "MtpPropertyGroup"


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private final mDatabase:Landroid/mtp/MtpDatabase;

.field private final mPackageName:Ljava/lang/String;

.field private final mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

.field private final mProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 3
    iput-object p2, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    .line 4
    iput-object p3, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    .line 6
    invoke-static {p4}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    .line 7
    array-length p1, p5

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    const-string p3, "_id"

    .line 9
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-array p3, p1, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object p3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p1, :cond_0

    .line 11
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v1, p5, p4

    invoke-direct {p0, v1, p2}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v1

    aput-object v1, v0, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 13
    new-array p4, p1, [Ljava/lang/String;

    iput-object p4, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    :goto_1
    if-ge p3, p1, :cond_1

    .line 14
    iget-object p4, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    aput-object p5, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    const-string/jumbo v0, "storage_id"

    const/4 v1, 0x4

    const/4 v2, 0x6

    const v3, 0xffff

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    const/4 v1, 0x0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported property "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MtpPropertyGroup"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_0
    const-string v0, "_display_name"

    goto :goto_0

    :sswitch_1
    const-string v0, "album_artist"

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "year"

    goto :goto_0

    :sswitch_3
    const-string v0, "composer"

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "track"

    goto :goto_3

    :sswitch_5
    const-string v0, "duration"

    goto :goto_2

    :sswitch_6
    const-string v0, "date_added"

    goto :goto_0

    :sswitch_7
    const-string v0, "description"

    goto :goto_0

    :sswitch_8
    move v1, v3

    goto :goto_1

    :sswitch_9
    const-string/jumbo v0, "title"

    goto :goto_0

    :sswitch_a
    const/16 v1, 0xa

    goto :goto_3

    :sswitch_b
    const-string v0, "parent"

    goto :goto_2

    :sswitch_c
    const-string v0, "date_modified"

    goto :goto_0

    :sswitch_d
    const-string v0, "_data"

    :goto_0
    move v1, v3

    goto :goto_3

    :sswitch_e
    const/16 v1, 0x8

    const-string v0, "_size"

    goto :goto_3

    :goto_1
    :sswitch_f
    move-object v0, v4

    goto :goto_3

    :sswitch_10
    const-string v0, "format"

    goto :goto_3

    :goto_2
    :sswitch_11
    move v1, v2

    :goto_3
    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v0, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-direct {v0, p0, p1, v1, p2}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    return-object v0

    .line 4
    :cond_0
    new-instance p2, Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v0, -0x1

    invoke-direct {p2, p0, p1, v1, v0}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    return-object p2

    nop

    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_11
        0xdc02 -> :sswitch_10
        0xdc03 -> :sswitch_f
        0xdc04 -> :sswitch_e
        0xdc07 -> :sswitch_d
        0xdc09 -> :sswitch_c
        0xdc0b -> :sswitch_b
        0xdc41 -> :sswitch_a
        0xdc44 -> :sswitch_9
        0xdc46 -> :sswitch_8
        0xdc48 -> :sswitch_7
        0xdc4e -> :sswitch_6
        0xdc89 -> :sswitch_5
        0xdc8b -> :sswitch_4
        0xdc8c -> :sswitch_8
        0xdc96 -> :sswitch_3
        0xdc99 -> :sswitch_2
        0xdc9a -> :sswitch_8
        0xdc9b -> :sswitch_1
        0xdce0 -> :sswitch_0
    .end sparse-switch
.end method

.method private native format_date_time(J)Ljava/lang/String;
.end method

.method private static nameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v2, v1, v0

    const/16 v3, 0xff

    if-le v2, v3, :cond_1

    add-int/lit16 v1, v0, 0xff

    .line 3
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private queryAudio(ILjava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v3}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v9, 0x1

    aput-object p2, v4, v9

    const-string v5, "_id=?"

    new-array p2, v9, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p2

    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 2
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_0
    :try_start_2
    const-string p2, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_0

    :catchall_1
    move-exception p2

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p2

    :catch_0
    move-object p1, v0

    :catch_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0
.end method

.method private queryGenre(I)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v4

    .line 2
    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    const-string p1, "_id"

    const-string v1, "name"

    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_0
    :try_start_2
    const-string v0, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    goto :goto_1

    :catch_1
    move-exception v1

    move-object p1, v0

    :goto_0
    :try_start_3
    const-string v2, "MtpPropertyGroup"

    const-string v3, "queryGenre exception"

    .line 6
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryLong(ILjava/lang/String;)Ljava/lang/Long;
    .locals 10

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v9, 0x1

    aput-object p2, v4, v9

    const-string v5, "_id=?"

    new-array p2, v9, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p2

    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 2
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Ljava/lang/Long;

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {p2, v1, v2}, Ljava/lang/Long;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    goto :goto_1

    :catchall_1
    move-exception p2

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p2

    :catch_0
    move-object p1, v0

    :catch_1
    if-eqz p1, :cond_2

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0
.end method

.method private queryString(ILjava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v9, 0x1

    aput-object p2, v4, v9

    const-string v5, "_id=?"

    new-array p2, v9, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p2

    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 2
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_0
    :try_start_2
    const-string p2, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_0

    :catchall_1
    move-exception p2

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p2

    :catch_0
    move-object p1, v0

    :catch_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0
.end method


# virtual methods
.method public getPropertyList(III)Landroid/mtp/MtpPropertyList;
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    .line 1
    new-instance v0, Landroid/mtp/MtpPropertyList;

    const v2, 0xa808

    invoke-direct {v0, v3, v2}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    return-object v0

    :cond_0
    const/4 v5, 0x0

    const/4 v6, -0x1

    if-nez p2, :cond_3

    if-ne v0, v6, :cond_1

    move-object v13, v5

    move-object v14, v13

    goto :goto_1

    :cond_1
    new-array v7, v4, [Ljava/lang/String;

    .line 2
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    if-ne v2, v4, :cond_2

    const-string v8, "parent=?"

    goto :goto_0

    :cond_2
    const-string v8, "_id=?"

    goto :goto_0

    :cond_3
    if-ne v0, v6, :cond_4

    new-array v7, v4, [Ljava/lang/String;

    .line 3
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const-string v8, "format=?"

    :goto_0
    move-object v14, v7

    move-object v13, v8

    goto :goto_1

    :cond_4
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    .line 4
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    if-ne v2, v4, :cond_5

    const-string v8, "parent=? AND format=?"

    goto :goto_0

    :cond_5
    const-string v8, "_id=? AND format=?"

    goto :goto_0

    :goto_1
    const/16 v7, 0x2009

    if-gtz v2, :cond_6

    if-eq v0, v6, :cond_6

    .line 5
    :try_start_0
    iget-object v2, v1, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    array-length v2, v2

    if-le v2, v4, :cond_8

    .line 6
    :cond_6
    iget-object v9, v1, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v10, v1, Landroid/mtp/MtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v11, v1, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    iget-object v12, v1, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v9 .. v16}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    if-nez v5, :cond_8

    .line 7
    new-instance v0, Landroid/mtp/MtpPropertyList;

    invoke-direct {v0, v3, v7}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_7

    .line 8
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v0

    :cond_8
    if-nez v5, :cond_9

    goto :goto_2

    .line 9
    :cond_9
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 10
    :goto_2
    new-instance v2, Landroid/mtp/MtpPropertyList;

    iget-object v6, v1, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v6, v6

    mul-int/2addr v6, v4

    const/16 v8, 0x2001

    invoke-direct {v2, v6, v8}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    move v6, v3

    :goto_3
    if-ge v6, v4, :cond_13

    if-eqz v5, :cond_a

    .line 11
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 12
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    long-to-int v0, v8

    :cond_a
    move v14, v3

    .line 13
    :goto_4
    iget-object v8, v1, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v9, v8

    if-ge v14, v9, :cond_12

    .line 14
    aget-object v8, v8, v14

    .line 15
    iget v10, v8, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 16
    iget v9, v8, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    sparse-switch v10, :sswitch_data_0

    .line 17
    iget v11, v8, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    goto/16 :goto_5

    :sswitch_0
    const-string v8, "album"

    .line 18
    invoke-direct {v1, v0, v8}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v0, v10, v8}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_6

    .line 19
    :sswitch_1
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 20
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "0101T000000"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 21
    invoke-virtual {v2, v0, v10, v8}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_6

    .line 22
    :sswitch_2
    invoke-direct {v1, v0}, Landroid/mtp/MtpPropertyGroup;->queryGenre(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 23
    invoke-virtual {v2, v0, v10, v8}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_6

    .line 24
    :cond_b
    invoke-virtual {v2, v7}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_6

    :sswitch_3
    const/4 v11, 0x4

    .line 25
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    rem-int/lit16 v8, v8, 0x3e8

    int-to-long v12, v8

    move-object v8, v2

    move v9, v0

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_6

    :sswitch_4
    const-string v8, "artist"

    .line 26
    invoke-direct {v1, v0, v8}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v0, v10, v8}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_6

    .line 27
    :sswitch_5
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_c

    const-string v8, "name"

    .line 28
    invoke-direct {v1, v0, v8}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_c
    if-nez v8, :cond_d

    const-string v8, "_data"

    .line 29
    invoke-direct {v1, v0, v8}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 30
    invoke-static {v8}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_d
    if-eqz v8, :cond_e

    .line 31
    invoke-virtual {v2, v0, v10, v8}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_6

    .line 32
    :cond_e
    invoke-virtual {v2, v7}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_6

    .line 33
    :sswitch_6
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/16 v11, 0x20

    shl-long/2addr v8, v11

    int-to-long v11, v0

    add-long v12, v8, v11

    const/16 v11, 0xa

    move-object v8, v2

    move v9, v0

    .line 34
    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_6

    .line 35
    :sswitch_7
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    invoke-direct {v1, v8, v9}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v0, v10, v8}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_6

    .line 36
    :sswitch_8
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 37
    invoke-static {v8}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v0, v10, v8}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_6

    .line 38
    :cond_f
    invoke-virtual {v2, v7}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_6

    :sswitch_9
    const/4 v11, 0x4

    const-wide/16 v12, 0x0

    move-object v8, v2

    move v9, v0

    .line 39
    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_6

    :goto_5
    const v8, 0xffff

    if-ne v11, v8, :cond_10

    .line 40
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v0, v10, v8}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_6

    :cond_10
    if-nez v11, :cond_11

    const-wide/16 v12, 0x0

    move-object v8, v2

    move v9, v0

    .line 41
    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_6

    .line 42
    :cond_11
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object v8, v2

    move v9, v0

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_13
    if-eqz v5, :cond_14

    .line 43
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_14
    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_7

    .line 44
    :catch_0
    :try_start_2
    new-instance v0, Landroid/mtp/MtpPropertyList;

    const/16 v2, 0x2002

    invoke-direct {v0, v3, v2}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_15

    .line 45
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_15
    return-object v0

    :goto_7
    if-eqz v5, :cond_16

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_16
    throw v0

    :sswitch_data_0
    .sparse-switch
        0xdc03 -> :sswitch_9
        0xdc07 -> :sswitch_8
        0xdc09 -> :sswitch_7
        0xdc41 -> :sswitch_6
        0xdc44 -> :sswitch_5
        0xdc46 -> :sswitch_4
        0xdc4e -> :sswitch_7
        0xdc8b -> :sswitch_3
        0xdc8c -> :sswitch_2
        0xdc99 -> :sswitch_1
        0xdc9a -> :sswitch_0
    .end sparse-switch
.end method
