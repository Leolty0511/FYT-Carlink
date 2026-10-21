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

.field private final mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

.field private final mProvider:Landroid/content/ContentProviderClient;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/mtp/MtpDatabase;Landroid/content/ContentProviderClient;Ljava/lang/String;[I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p3}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    .line 15
    .line 16
    array-length p1, p4

    .line 17
    new-instance p2, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string p3, "_id"

    .line 23
    .line 24
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    new-array p3, p1, [Landroid/mtp/MtpPropertyGroup$Property;

    .line 28
    .line 29
    iput-object p3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 30
    .line 31
    const/4 p3, 0x0

    .line 32
    move v0, p3

    .line 33
    :goto_0
    if-ge v0, p1, :cond_0

    .line 34
    .line 35
    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 36
    .line 37
    aget v2, p4, v0

    .line 38
    .line 39
    invoke-direct {p0, v2, p2}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    aput-object v2, v1, v0

    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    new-array p4, p1, [Ljava/lang/String;

    .line 53
    .line 54
    iput-object p4, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    .line 55
    .line 56
    :goto_1
    if-ge p3, p1, :cond_1

    .line 57
    .line 58
    iget-object p4, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/lang/String;

    .line 65
    .line 66
    aput-object v0, p4, p3

    .line 67
    .line 68
    add-int/lit8 p3, p3, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
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

    .line 1
    const-string/jumbo v0, "storage_id"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x4

    .line 5
    const/4 v2, 0x6

    .line 6
    const v3, 0xffff

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    sparse-switch p1, :sswitch_data_0

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "unsupported property "

    .line 14
    .line 15
    .line 16
    const-string v1, "MtpPropertyGroup"

    .line 17
    .line 18
    invoke-static {v0, p1, v1}, Landroid/app/m;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    goto :goto_2

    .line 23
    :sswitch_0
    move v1, v2

    .line 24
    goto :goto_2

    .line 25
    :sswitch_1
    const-string v0, "_display_name"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :sswitch_2
    const-string v0, "album_artist"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :sswitch_3
    const-string/jumbo v0, "year"

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :sswitch_4
    const-string v0, "composer"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :sswitch_5
    const-string/jumbo v0, "track"

    .line 39
    .line 40
    .line 41
    goto :goto_3

    .line 42
    :sswitch_6
    const-string v0, "duration"

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :sswitch_7
    const-string v0, "date_added"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :sswitch_8
    const-string v0, "description"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :sswitch_9
    move v1, v3

    .line 52
    goto :goto_2

    .line 53
    :sswitch_a
    const-string/jumbo v0, "title"

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :sswitch_b
    const/16 v1, 0xa

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :sswitch_c
    const-string/jumbo v0, "parent"

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :sswitch_d
    const-string v0, "date_modified"

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :sswitch_e
    const-string v0, "_data"

    .line 68
    .line 69
    :goto_0
    move v1, v3

    .line 70
    goto :goto_3

    .line 71
    :sswitch_f
    const-string v0, "_size"

    .line 72
    .line 73
    const/16 v1, 0x8

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :sswitch_10
    const-string v0, "format"

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :goto_1
    :sswitch_11
    move v1, v2

    .line 80
    goto :goto_3

    .line 81
    :goto_2
    :sswitch_12
    move-object v0, v4

    .line 82
    :goto_3
    if-eqz v0, :cond_0

    .line 83
    .line 84
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    new-instance v0, Landroid/mtp/MtpPropertyGroup$Property;

    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    add-int/lit8 p2, p2, -0x1

    .line 94
    .line 95
    invoke-direct {v0, p0, p1, v1, p2}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    .line 96
    .line 97
    .line 98
    return-object v0

    .line 99
    :cond_0
    new-instance p2, Landroid/mtp/MtpPropertyGroup$Property;

    .line 100
    .line 101
    const/4 v0, -0x1

    .line 102
    invoke-direct {p2, p0, p1, v1, v0}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    .line 103
    .line 104
    .line 105
    return-object p2

    .line 106
    nop

    .line 107
    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_11
        0xdc02 -> :sswitch_10
        0xdc03 -> :sswitch_12
        0xdc04 -> :sswitch_f
        0xdc07 -> :sswitch_e
        0xdc09 -> :sswitch_d
        0xdc0b -> :sswitch_c
        0xdc41 -> :sswitch_b
        0xdc44 -> :sswitch_a
        0xdc46 -> :sswitch_9
        0xdc48 -> :sswitch_8
        0xdc4e -> :sswitch_7
        0xdc89 -> :sswitch_6
        0xdc8b -> :sswitch_5
        0xdc8c -> :sswitch_9
        0xdc96 -> :sswitch_4
        0xdc99 -> :sswitch_3
        0xdc9a -> :sswitch_9
        0xdc9b -> :sswitch_2
        0xdce0 -> :sswitch_1
        0xde92 -> :sswitch_12
        0xde93 -> :sswitch_0
        0xde94 -> :sswitch_12
        0xde99 -> :sswitch_0
        0xde9a -> :sswitch_0
    .end sparse-switch
.end method

.method private native format_date_time(J)Ljava/lang/String;
.end method

.method private static nameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/16 v0, 0x2f

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sub-int v2, v1, v0

    .line 18
    .line 19
    const/16 v3, 0xff

    .line 20
    .line 21
    if-le v2, v3, :cond_1

    .line 22
    .line 23
    add-int/lit16 v1, v0, 0xff

    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method private queryAudio(ILjava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    .line 3
    .line 4
    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x2

    .line 11
    new-array v3, v3, [Ljava/lang/String;

    .line 12
    .line 13
    const-string v4, "_id"

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    aput-object v4, v3, v5

    .line 17
    .line 18
    const/4 v8, 0x1

    .line 19
    aput-object p2, v3, v8

    .line 20
    .line 21
    const-string v4, "_id=?"

    .line 22
    .line 23
    new-array p2, v8, [Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    aput-object p1, p2, v5

    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, 0x0

    .line 33
    move-object v5, p2

    .line 34
    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 35
    .line 36
    .line 37
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_0

    .line 45
    .line 46
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 51
    .line 52
    .line 53
    return-object p2

    .line 54
    :cond_0
    :try_start_2
    const-string p2, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-object p2

    .line 62
    :catchall_0
    move-exception p2

    .line 63
    move-object v0, p1

    .line 64
    goto :goto_0

    .line 65
    :catchall_1
    move-exception p2

    .line 66
    :goto_0
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 69
    .line 70
    .line 71
    :cond_2
    throw p2

    .line 72
    :catch_0
    move-object p1, v0

    .line 73
    :catch_1
    if-eqz p1, :cond_3

    .line 74
    .line 75
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 76
    .line 77
    .line 78
    :cond_3
    return-object v0
.end method

.method private queryGenre(I)Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    .line 3
    .line 4
    invoke-static {v1, p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    .line 9
    .line 10
    const-string p1, "_id"

    .line 11
    .line 12
    const-string/jumbo v1, "name"

    .line 13
    .line 14
    .line 15
    filled-new-array {p1, v1}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v8, 0x0

    .line 23
    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 24
    .line 25
    .line 26
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_0
    :try_start_2
    const-string v0, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-object v0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    move-object v9, v0

    .line 56
    move-object v0, p1

    .line 57
    move-object p1, v9

    .line 58
    goto :goto_1

    .line 59
    :catch_1
    move-exception v1

    .line 60
    move-object p1, v0

    .line 61
    :goto_0
    :try_start_3
    const-string v2, "MtpPropertyGroup"

    .line 62
    .line 63
    const-string/jumbo v3, "queryGenre exception"

    .line 64
    .line 65
    .line 66
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 67
    .line 68
    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-object v0

    .line 75
    :catchall_1
    move-exception v0

    .line 76
    :goto_1
    if-eqz p1, :cond_3

    .line 77
    .line 78
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 79
    .line 80
    .line 81
    :cond_3
    throw v0
.end method

.method private queryLong(ILjava/lang/String;)Ljava/lang/Long;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    .line 3
    .line 4
    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    new-array v3, v3, [Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "_id"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    aput-object v4, v3, v5

    .line 13
    .line 14
    const/4 v8, 0x1

    .line 15
    aput-object p2, v3, v8

    .line 16
    .line 17
    const-string v4, "_id=?"

    .line 18
    .line 19
    new-array p2, v8, [Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, p2, v5

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    move-object v5, p2

    .line 30
    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 31
    .line 32
    .line 33
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    new-instance p2, Ljava/lang/Long;

    .line 43
    .line 44
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    invoke-direct {p2, v1, v2}, Ljava/lang/Long;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 52
    .line 53
    .line 54
    return-object p2

    .line 55
    :catchall_0
    move-exception p2

    .line 56
    move-object v0, p1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    if-eqz p1, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_1
    move-exception p2

    .line 62
    :goto_0
    if-eqz v0, :cond_1

    .line 63
    .line 64
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 65
    .line 66
    .line 67
    :cond_1
    throw p2

    .line 68
    :catch_0
    move-object p1, v0

    .line 69
    :catch_1
    if-eqz p1, :cond_2

    .line 70
    .line 71
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-object v0
.end method

.method private queryString(ILjava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    .line 3
    .line 4
    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    .line 5
    .line 6
    const/4 v3, 0x2

    .line 7
    new-array v3, v3, [Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "_id"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    aput-object v4, v3, v5

    .line 13
    .line 14
    const/4 v8, 0x1

    .line 15
    aput-object p2, v3, v8

    .line 16
    .line 17
    const-string v4, "_id=?"

    .line 18
    .line 19
    new-array p2, v8, [Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, p2, v5

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    move-object v5, p2

    .line 30
    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 31
    .line 32
    .line 33
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 47
    .line 48
    .line 49
    return-object p2

    .line 50
    :cond_0
    :try_start_2
    const-string p2, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-object p2

    .line 58
    :catchall_0
    move-exception p2

    .line 59
    move-object v0, p1

    .line 60
    goto :goto_0

    .line 61
    :catchall_1
    move-exception p2

    .line 62
    :goto_0
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 65
    .line 66
    .line 67
    :cond_2
    throw p2

    .line 68
    :catch_0
    move-object p1, v0

    .line 69
    :catch_1
    if-eqz p1, :cond_3

    .line 70
    .line 71
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 72
    .line 73
    .line 74
    :cond_3
    return-object v0
.end method


# virtual methods
.method public getPropertyList(III)Landroid/mtp/MtpPropertyList;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-le p3, v1, :cond_0

    .line 4
    .line 5
    new-instance p1, Landroid/mtp/MtpPropertyList;

    .line 6
    .line 7
    const p2, 0xa808

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, v0, p2}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 11
    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    const/4 v3, -0x1

    .line 16
    if-nez p2, :cond_3

    .line 17
    .line 18
    if-ne p1, v3, :cond_1

    .line 19
    .line 20
    move-object v8, v2

    .line 21
    move-object v9, v8

    .line 22
    goto :goto_2

    .line 23
    :cond_1
    new-array p2, v1, [Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    aput-object v4, p2, v0

    .line 30
    .line 31
    if-ne p3, v1, :cond_2

    .line 32
    .line 33
    const-string/jumbo v4, "parent=?"

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const-string v4, "_id=?"

    .line 38
    .line 39
    :goto_0
    move-object v9, p2

    .line 40
    move-object v8, v4

    .line 41
    goto :goto_2

    .line 42
    :cond_3
    if-ne p1, v3, :cond_4

    .line 43
    .line 44
    new-array v4, v1, [Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    aput-object p2, v4, v0

    .line 51
    .line 52
    const-string p2, "format=?"

    .line 53
    .line 54
    :goto_1
    move-object v8, p2

    .line 55
    move-object v9, v4

    .line 56
    goto :goto_2

    .line 57
    :cond_4
    const/4 v4, 0x2

    .line 58
    new-array v4, v4, [Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    aput-object v5, v4, v0

    .line 65
    .line 66
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    aput-object p2, v4, v1

    .line 71
    .line 72
    if-ne p3, v1, :cond_5

    .line 73
    .line 74
    const-string/jumbo p2, "parent=? AND format=?"

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    const-string p2, "_id=? AND format=?"

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :goto_2
    const/16 p2, 0x2009

    .line 82
    .line 83
    if-gtz p3, :cond_6

    .line 84
    .line 85
    if-eq p1, v3, :cond_6

    .line 86
    .line 87
    :try_start_0
    iget-object p3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    .line 88
    .line 89
    array-length p3, p3

    .line 90
    if-le p3, v1, :cond_8

    .line 91
    .line 92
    :cond_6
    iget-object v5, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    .line 93
    .line 94
    iget-object v6, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    .line 95
    .line 96
    iget-object v7, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    .line 97
    .line 98
    const/4 v10, 0x0

    .line 99
    const/4 v11, 0x0

    .line 100
    invoke-virtual/range {v5 .. v11}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    if-nez v2, :cond_8

    .line 105
    .line 106
    new-instance p1, Landroid/mtp/MtpPropertyList;

    .line 107
    .line 108
    invoke-direct {p1, v0, p2}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .line 110
    .line 111
    if-eqz v2, :cond_7

    .line 112
    .line 113
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 114
    .line 115
    .line 116
    :cond_7
    return-object p1

    .line 117
    :cond_8
    if-nez v2, :cond_9

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_9
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    :goto_3
    new-instance p3, Landroid/mtp/MtpPropertyList;

    .line 125
    .line 126
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 127
    .line 128
    array-length v3, v3

    .line 129
    mul-int/2addr v3, v1

    .line 130
    const/16 v4, 0x2001

    .line 131
    .line 132
    invoke-direct {p3, v3, v4}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 133
    .line 134
    .line 135
    move v9, v0

    .line 136
    :goto_4
    if-ge v9, v1, :cond_13

    .line 137
    .line 138
    if-eqz v2, :cond_a

    .line 139
    .line 140
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 141
    .line 142
    .line 143
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 144
    .line 145
    .line 146
    move-result-wide v3

    .line 147
    long-to-int p1, v3

    .line 148
    :cond_a
    move v10, v0

    .line 149
    :goto_5
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 150
    .line 151
    array-length v4, v3

    .line 152
    if-ge v10, v4, :cond_12

    .line 153
    .line 154
    aget-object v3, v3, v10

    .line 155
    .line 156
    iget v5, v3, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 157
    .line 158
    iget v4, v3, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    .line 159
    .line 160
    sparse-switch v5, :sswitch_data_0

    .line 161
    .line 162
    .line 163
    iget v6, v3, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    .line 164
    .line 165
    goto/16 :goto_6

    .line 166
    .line 167
    :sswitch_0
    const/4 v6, 0x6

    .line 168
    const-wide/16 v7, 0x0

    .line 169
    .line 170
    move-object v3, p3

    .line 171
    move v4, p1

    .line 172
    invoke-virtual/range {v3 .. v8}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_7

    .line 176
    .line 177
    :sswitch_1
    const/4 v6, 0x4

    .line 178
    const-wide/16 v7, 0x0

    .line 179
    .line 180
    move-object v3, p3

    .line 181
    move v4, p1

    .line 182
    invoke-virtual/range {v3 .. v8}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_7

    .line 186
    .line 187
    :sswitch_2
    const-string v3, "album"

    .line 188
    .line 189
    invoke-direct {p0, p1, v3}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    invoke-virtual {p3, p1, v5, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_7

    .line 197
    .line 198
    :sswitch_3
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v3, "0101T000000"

    .line 215
    .line 216
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {p3, p1, v5, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_7

    .line 227
    .line 228
    :sswitch_4
    invoke-direct {p0, p1}, Landroid/mtp/MtpPropertyGroup;->queryGenre(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    if-eqz v3, :cond_b

    .line 233
    .line 234
    invoke-virtual {p3, p1, v5, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_7

    .line 238
    .line 239
    :cond_b
    invoke-virtual {p3, p2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_7

    .line 243
    .line 244
    :sswitch_5
    const/4 v6, 0x4

    .line 245
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    rem-int/lit16 v3, v3, 0x3e8

    .line 250
    .line 251
    int-to-long v7, v3

    .line 252
    move-object v3, p3

    .line 253
    move v4, p1

    .line 254
    invoke-virtual/range {v3 .. v8}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 255
    .line 256
    .line 257
    goto/16 :goto_7

    .line 258
    .line 259
    :sswitch_6
    const-string v3, "artist"

    .line 260
    .line 261
    invoke-direct {p0, p1, v3}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-virtual {p3, p1, v5, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 266
    .line 267
    .line 268
    goto/16 :goto_7

    .line 269
    .line 270
    :sswitch_7
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    if-nez v3, :cond_c

    .line 275
    .line 276
    const-string/jumbo v3, "name"

    .line 277
    .line 278
    .line 279
    invoke-direct {p0, p1, v3}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    :cond_c
    if-nez v3, :cond_d

    .line 284
    .line 285
    const-string v3, "_data"

    .line 286
    .line 287
    invoke-direct {p0, p1, v3}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    if-eqz v3, :cond_d

    .line 292
    .line 293
    invoke-static {v3}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    :cond_d
    if-eqz v3, :cond_e

    .line 298
    .line 299
    invoke-virtual {p3, p1, v5, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_7

    .line 303
    .line 304
    :cond_e
    invoke-virtual {p3, p2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    .line 305
    .line 306
    .line 307
    goto :goto_7

    .line 308
    :sswitch_8
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 309
    .line 310
    .line 311
    move-result-wide v3

    .line 312
    const/16 v6, 0x20

    .line 313
    .line 314
    shl-long/2addr v3, v6

    .line 315
    int-to-long v6, p1

    .line 316
    add-long v7, v3, v6

    .line 317
    .line 318
    const/16 v6, 0xa

    .line 319
    .line 320
    move-object v3, p3

    .line 321
    move v4, p1

    .line 322
    invoke-virtual/range {v3 .. v8}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 323
    .line 324
    .line 325
    goto :goto_7

    .line 326
    :sswitch_9
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 327
    .line 328
    .line 329
    move-result v3

    .line 330
    int-to-long v3, v3

    .line 331
    invoke-direct {p0, v3, v4}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    invoke-virtual {p3, p1, v5, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 336
    .line 337
    .line 338
    goto :goto_7

    .line 339
    :sswitch_a
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    if-eqz v3, :cond_f

    .line 344
    .line 345
    invoke-static {v3}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    invoke-virtual {p3, p1, v5, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 350
    .line 351
    .line 352
    goto :goto_7

    .line 353
    :cond_f
    invoke-virtual {p3, p2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    .line 354
    .line 355
    .line 356
    goto :goto_7

    .line 357
    :sswitch_b
    const/4 v6, 0x4

    .line 358
    const-wide/16 v7, 0x0

    .line 359
    .line 360
    move-object v3, p3

    .line 361
    move v4, p1

    .line 362
    invoke-virtual/range {v3 .. v8}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 363
    .line 364
    .line 365
    goto :goto_7

    .line 366
    :goto_6
    const v3, 0xffff

    .line 367
    .line 368
    .line 369
    if-ne v6, v3, :cond_10

    .line 370
    .line 371
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    invoke-virtual {p3, p1, v5, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 376
    .line 377
    .line 378
    goto :goto_7

    .line 379
    :cond_10
    if-nez v6, :cond_11

    .line 380
    .line 381
    const-wide/16 v7, 0x0

    .line 382
    .line 383
    move-object v3, p3

    .line 384
    move v4, p1

    .line 385
    invoke-virtual/range {v3 .. v8}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 386
    .line 387
    .line 388
    goto :goto_7

    .line 389
    :cond_11
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 390
    .line 391
    .line 392
    move-result-wide v7

    .line 393
    move-object v3, p3

    .line 394
    move v4, p1

    .line 395
    invoke-virtual/range {v3 .. v8}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    .line 397
    .line 398
    :goto_7
    add-int/lit8 v10, v10, 0x1

    .line 399
    .line 400
    goto/16 :goto_5

    .line 401
    .line 402
    :cond_12
    add-int/lit8 v9, v9, 0x1

    .line 403
    .line 404
    goto/16 :goto_4

    .line 405
    .line 406
    :cond_13
    if-eqz v2, :cond_14

    .line 407
    .line 408
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 409
    .line 410
    .line 411
    :cond_14
    return-object p3

    .line 412
    :catchall_0
    move-exception p1

    .line 413
    goto :goto_8

    .line 414
    :catch_0
    :try_start_2
    new-instance p1, Landroid/mtp/MtpPropertyList;

    .line 415
    .line 416
    const/16 p2, 0x2002

    .line 417
    .line 418
    invoke-direct {p1, v0, p2}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 419
    .line 420
    .line 421
    if-eqz v2, :cond_15

    .line 422
    .line 423
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 424
    .line 425
    .line 426
    :cond_15
    return-object p1

    .line 427
    :goto_8
    if-eqz v2, :cond_16

    .line 428
    .line 429
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 430
    .line 431
    .line 432
    :cond_16
    throw p1

    .line 433
    :sswitch_data_0
    .sparse-switch
        0xdc03 -> :sswitch_b
        0xdc07 -> :sswitch_a
        0xdc09 -> :sswitch_9
        0xdc41 -> :sswitch_8
        0xdc44 -> :sswitch_7
        0xdc46 -> :sswitch_6
        0xdc4e -> :sswitch_9
        0xdc8b -> :sswitch_5
        0xdc8c -> :sswitch_4
        0xdc99 -> :sswitch_3
        0xdc9a -> :sswitch_2
        0xde92 -> :sswitch_1
        0xde93 -> :sswitch_0
        0xde94 -> :sswitch_1
        0xde99 -> :sswitch_0
        0xde9a -> :sswitch_0
    .end sparse-switch
.end method
