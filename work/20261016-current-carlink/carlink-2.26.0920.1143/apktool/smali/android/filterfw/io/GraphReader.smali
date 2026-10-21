.class public abstract Landroid/filterfw/io/GraphReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mReferences:Landroid/filterfw/core/KeyValueMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public addReference(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public varargs addReferencesByKeysAndValues([Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->setKeyValues([Ljava/lang/Object;)V

    return-void
.end method

.method public addReferencesByMap(Landroid/filterfw/core/KeyValueMap;)V
    .locals 1

    iget-object v0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public readGraphResource(Landroid/content/Context;I)Landroid/filterfw/core/FilterGraph;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Ljava/io/InputStreamReader;

    .line 10
    .line 11
    invoke-direct {p2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/io/StringWriter;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 17
    .line 18
    .line 19
    const/16 v0, 0x400

    .line 20
    .line 21
    new-array v1, v0, [C

    .line 22
    .line 23
    :goto_0
    const/4 v2, 0x0

    .line 24
    :try_start_0
    invoke-virtual {p2, v1, v2, v0}, Ljava/io/InputStreamReader;->read([CII)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-lez v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/StringWriter;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Landroid/filterfw/io/GraphReader;->readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 44
    .line 45
    const-string p2, "Could not read specified resource file!"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public abstract readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;
.end method

.method public abstract readKeyValueAssignments(Ljava/lang/String;)Landroid/filterfw/core/KeyValueMap;
.end method
