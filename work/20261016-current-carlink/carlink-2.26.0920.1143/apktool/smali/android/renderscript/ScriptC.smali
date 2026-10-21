.class public Landroid/renderscript/ScriptC;
.super Landroid/renderscript/Script;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptC"


# direct methods
.method public constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 2

    int-to-long v0, p1

    .line 1
    invoke-direct {p0, v0, v1, p2}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    return-void
.end method

.method public constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3
    invoke-direct {p0, v0, v1, p1}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 4
    invoke-static {p1, p2, p3}, Landroid/renderscript/ScriptC;->internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/renderscript/BaseObj;->setID(J)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Loading of ScriptC script failed."

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;Ljava/lang/String;[B[B)V
    .locals 4

    const-wide/16 v0, 0x0

    .line 7
    invoke-direct {p0, v0, v1, p1}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 8
    sget v2, Landroid/renderscript/RenderScript;->sPointerSize:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 9
    invoke-static {p1, p2, p3}, Landroid/renderscript/ScriptC;->internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide p1

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1, p2, p4}, Landroid/renderscript/ScriptC;->internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide p1

    :goto_0
    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    .line 11
    invoke-virtual {p0, p1, p2}, Landroid/renderscript/BaseObj;->setID(J)V

    return-void

    .line 12
    :cond_1
    new-instance p1, Landroid/renderscript/RSRuntimeException;

    const-string p2, "Loading of ScriptC script failed."

    invoke-direct {p1, p2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)J
    .locals 8

    .line 1
    const-class v0, Landroid/renderscript/ScriptC;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    const/16 v2, 0x400

    .line 9
    .line 10
    :try_start_1
    new-array v2, v2, [B

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    :goto_0
    array-length v5, v2

    .line 15
    sub-int/2addr v5, v4

    .line 16
    if-nez v5, :cond_0

    .line 17
    .line 18
    array-length v5, v2

    .line 19
    mul-int/lit8 v5, v5, 0x2

    .line 20
    .line 21
    new-array v6, v5, [B

    .line 22
    .line 23
    array-length v7, v2

    .line 24
    invoke-static {v2, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 25
    .line 26
    .line 27
    sub-int/2addr v5, v4

    .line 28
    move-object v2, v6

    .line 29
    :cond_0
    invoke-virtual {v1, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    .line 30
    .line 31
    .line 32
    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    if-gtz v5, :cond_1

    .line 34
    .line 35
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 36
    .line 37
    .line 38
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {}, Landroid/renderscript/RenderScript;->getCachePath()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p0, p1, p2, v2, v4}, Landroid/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J

    .line 47
    .line 48
    .line 49
    move-result-wide p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 50
    monitor-exit v0

    .line 51
    return-wide p0

    .line 52
    :cond_1
    add-int/2addr v4, v5

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 56
    .line 57
    .line 58
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 59
    :catch_0
    :try_start_5
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    .line 60
    .line 61
    invoke-direct {p0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    .line 62
    .line 63
    .line 64
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 65
    :catchall_1
    move-exception p0

    .line 66
    monitor-exit v0

    .line 67
    throw p0
.end method

.method private static declared-synchronized internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J
    .locals 3

    .line 1
    const-class v0, Landroid/renderscript/ScriptC;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/renderscript/RenderScript;->getCachePath()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    array-length v2, p2

    .line 9
    invoke-virtual {p0, p1, v1, p2, v2}, Landroid/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J

    .line 10
    .line 11
    .line 12
    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit v0

    .line 14
    return-wide p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0

    .line 17
    throw p0
.end method
