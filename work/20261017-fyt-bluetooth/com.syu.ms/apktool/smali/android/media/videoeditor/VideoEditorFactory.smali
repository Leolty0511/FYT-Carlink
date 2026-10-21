.class public Landroid/media/videoeditor/VideoEditorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Landroid/media/videoeditor/VideoEditor;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "Cannot create file .nomedia"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create project path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    :goto_0
    new-instance v0, Landroid/media/videoeditor/VideoEditorImpl;

    invoke-direct {v0, p0}, Landroid/media/videoeditor/VideoEditorImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static load(Ljava/lang/String;Z)Landroid/media/videoeditor/VideoEditor;
    .locals 1

    .line 1
    new-instance v0, Landroid/media/videoeditor/VideoEditorImpl;

    invoke-direct {v0, p0}, Landroid/media/videoeditor/VideoEditorImpl;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 2
    invoke-interface {v0, p0}, Landroid/media/videoeditor/VideoEditor;->generatePreview(Landroid/media/videoeditor/VideoEditor$MediaProcessingProgressListener;)V

    :cond_0
    return-object v0
.end method
