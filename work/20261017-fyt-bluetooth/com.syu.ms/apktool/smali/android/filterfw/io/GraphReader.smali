.class public abstract Landroid/filterfw/io/GraphReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mReferences:Landroid/filterfw/core/KeyValueMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    return-void
.end method


# virtual methods
.method public addReference(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public varargs addReferencesByKeysAndValues([Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->setKeyValues([Ljava/lang/Object;)V

    return-void
.end method

.method public addReferencesByMap(Landroid/filterfw/core/KeyValueMap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public readGraphResource(Landroid/content/Context;I)Landroid/filterfw/core/FilterGraph;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 3
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    const/16 v0, 0x400

    new-array v1, v0, [C

    :goto_0
    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p2, v1, v2, v0}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v3

    if-lez v3, :cond_0

    .line 5
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/StringWriter;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/filterfw/io/GraphReader;->readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;

    move-result-object p1

    return-object p1

    .line 7
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not read specified resource file!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;
.end method

.method public abstract readKeyValueAssignments(Ljava/lang/String;)Landroid/filterfw/core/KeyValueMap;
.end method
