.class public Landroid/renderscript/ScriptC;
.super Landroid/renderscript/Script;
.source "SourceFile"


# static fields
.field private static final CACHE_PATH:Ljava/lang/String; = "com.android.renderscript.cache"

.field private static final TAG:Ljava/lang/String; = "ScriptC"

.field public static mCachePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/renderscript/Script;-><init>(ILandroid/renderscript/RenderScript;)V

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/renderscript/Script;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 3
    invoke-static {p1, p2, p3}, Landroid/renderscript/ScriptC;->internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/renderscript/BaseObj;->setID(I)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Loading of ScriptC script failed."

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)I
    .locals 8

    const-class v0, Landroid/renderscript/ScriptC;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x400

    :try_start_1
    new-array v2, v2, [B

    const/4 v3, 0x0

    move v4, v3

    .line 2
    :goto_0
    array-length v5, v2

    sub-int/2addr v5, v4

    if-nez v5, :cond_0

    .line 3
    array-length v5, v2

    mul-int/lit8 v5, v5, 0x2

    new-array v6, v5, [B

    .line 4
    array-length v7, v2

    invoke-static {v2, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v5, v4

    move-object v2, v6

    .line 5
    :cond_0
    invoke-virtual {v1, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v5, :cond_2

    .line 6
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    sget-object p2, Landroid/renderscript/ScriptC;->mCachePath:Ljava/lang/String;

    if-nez p2, :cond_1

    .line 9
    new-instance p2, Ljava/io/File;

    sget-object v1, Landroid/renderscript/RenderScript;->mCacheDir:Ljava/io/File;

    const-string v3, "com.android.renderscript.cache"

    invoke-direct {p2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/renderscript/ScriptC;->mCachePath:Ljava/lang/String;

    .line 11
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 12
    :cond_1
    sget-object p2, Landroid/renderscript/ScriptC;->mCachePath:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v2, v4}, Landroid/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)I

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return p0

    :cond_2
    add-int/2addr v4, v5

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 13
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 14
    :catch_0
    :try_start_5
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {p0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
