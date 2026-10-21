.class public abstract Landroid/provider/SearchIndexablesProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field private static final MATCH_NON_INDEXABLE_KEYS_CODE:I = 0x3

.field private static final MATCH_RAW_CODE:I = 0x2

.field private static final MATCH_RES_CODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IndexablesProvider"


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 4

    .line 1
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 2
    .line 3
    iput-object v0, p0, Landroid/provider/SearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v0, Landroid/content/UriMatcher;

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroid/provider/SearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/provider/SearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    .line 14
    .line 15
    const-string/jumbo v2, "settings/indexables_xml_res"

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroid/provider/SearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    .line 23
    .line 24
    iget-object v1, p0, Landroid/provider/SearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    .line 25
    .line 26
    const-string/jumbo v2, "settings/indexables_raw"

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroid/provider/SearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    .line 34
    .line 35
    iget-object v1, p0, Landroid/provider/SearchIndexablesProvider;->mAuthority:Ljava/lang/String;

    .line 36
    .line 37
    const-string/jumbo v2, "settings/non_indexables_key"

    .line 38
    .line 39
    .line 40
    const/4 v3, 0x3

    .line 41
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    iget-boolean v0, p2, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    const-string v0, "android.permission.READ_SEARCH_INDEXABLES"

    .line 53
    .line 54
    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    .line 67
    .line 68
    const-string p2, "Provider must be protected by READ_SEARCH_INDEXABLES"

    .line 69
    .line 70
    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    .line 75
    .line 76
    const-string p2, "Provider must grantUriPermissions"

    .line 77
    .line 78
    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    .line 83
    .line 84
    const-string p2, "Provider must be exported"

    .line 85
    .line 86
    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Delete not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/provider/SearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const-string/jumbo p1, "vnd.android.cursor.dir/non_indexables_key"

    .line 17
    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v1, "Unknown URI "

    .line 23
    .line 24
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->h(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_1
    const-string/jumbo p1, "vnd.android.cursor.dir/indexables_raw"

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_2
    const-string/jumbo p1, "vnd.android.cursor.dir/indexables_xml_res"

    .line 37
    .line 38
    .line 39
    return-object p1
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Insert not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/provider/SearchIndexablesProvider;->mMatcher:Landroid/content/UriMatcher;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 p3, 0x1

    .line 8
    const/4 p4, 0x0

    .line 9
    if-eq p2, p3, :cond_2

    .line 10
    .line 11
    const/4 p3, 0x2

    .line 12
    if-eq p2, p3, :cond_1

    .line 13
    .line 14
    const/4 p3, 0x3

    .line 15
    if-ne p2, p3, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p4}, Landroid/provider/SearchIndexablesProvider;->queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 23
    .line 24
    const-string p3, "Unknown Uri "

    .line 25
    .line 26
    invoke-static {p3, p1}, Landroid/accessibilityservice/c;->h(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p2

    .line 34
    :cond_1
    invoke-virtual {p0, p4}, Landroid/provider/SearchIndexablesProvider;->queryRawData([Ljava/lang/String;)Landroid/database/Cursor;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :cond_2
    invoke-virtual {p0, p4}, Landroid/provider/SearchIndexablesProvider;->queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method public abstract queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Update not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
