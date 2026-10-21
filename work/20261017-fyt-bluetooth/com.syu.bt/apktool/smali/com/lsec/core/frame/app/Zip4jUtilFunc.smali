.class public Lcom/lsec/core/frame/app/Zip4jUtilFunc;
.super Ljava/lang/Object;
.source "Zip4jUtilFunc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    }
.end annotation


# static fields
.field public static mHashMapZipFile:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->mHashMapZipFile:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method


# virtual methods
.method public getBitmapFromZipAssets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "strZipFile"    # Ljava/lang/String;
    .param p2, "strFolder"    # Ljava/lang/String;
    .param p3, "resName"    # Ljava/lang/String;

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 304
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v4, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->mHashMapZipFile:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;

    .line 305
    .local v3, "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    if-nez v3, :cond_0

    .line 306
    invoke-virtual {p0, p1}, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->getZipFile(Ljava/lang/String;)Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;

    move-result-object v3

    .line 308
    :cond_0
    if-eqz v3, :cond_1

    .line 309
    iget-object v4, v3, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->zipFile:Lnet/lingala/zip4j/io/ZipFile;

    if-eqz v4, :cond_1

    .line 310
    invoke-virtual {v3, p2, p3}, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->getEntryName_Drawable(Ljava/lang/String;Ljava/lang/String;)Lnet/lingala/zip4j/io/ZipFileHeader;

    move-result-object v1

    .line 311
    .local v1, "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    if-eqz v1, :cond_1

    .line 312
    iget-object v4, v3, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->zipFile:Lnet/lingala/zip4j/io/ZipFile;

    invoke-virtual {v4, v1}, Lnet/lingala/zip4j/io/ZipFile;->getInputStream(Lnet/lingala/zip4j/io/ZipFileHeader;)Lnet/lingala/zip4j/io/ZipInputStream;

    move-result-object v2

    .line 313
    .local v2, "inputStream":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 314
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 315
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v1    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    :cond_1
    :goto_0
    return-object v0

    .line 320
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public getDrawableFromZip(Lcom/lsec/core/frame/app/MyUi;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;
    .locals 19
    .param p1, "ui"    # Lcom/lsec/core/frame/app/MyUi;
    .param p2, "strZipFile"    # Ljava/lang/String;
    .param p3, "resName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lsec/core/frame/app/MyUi;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 209
    .local p4, "mapDrawables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    .local p5, "tmpMapDrawables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    const/4 v9, 0x0

    .line 211
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    sget-object v2, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->mHashMapZipFile:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;

    .line 212
    .local v15, "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    if-nez v15, :cond_0

    .line 213
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->getZipFile(Ljava/lang/String;)Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;

    move-result-object v15

    .line 215
    :cond_0
    if-eqz v15, :cond_1

    .line 216
    iget-object v2, v15, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->zipFile:Lnet/lingala/zip4j/io/ZipFile;

    if-eqz v2, :cond_1

    .line 217
    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->getEntryName_Drawable(Ljava/lang/String;)Lnet/lingala/zip4j/io/ZipFileHeader;

    move-result-object v11

    .line 218
    .local v11, "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    if-eqz v11, :cond_1

    .line 219
    iget-object v2, v15, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->zipFile:Lnet/lingala/zip4j/io/ZipFile;

    invoke-virtual {v2, v11}, Lnet/lingala/zip4j/io/ZipFile;->getInputStream(Lnet/lingala/zip4j/io/ZipFileHeader;)Lnet/lingala/zip4j/io/ZipInputStream;

    move-result-object v4

    .line 220
    .local v4, "inputStream":Ljava/io/InputStream;
    if-eqz v4, :cond_1

    .line 221
    invoke-virtual {v11}, Lnet/lingala/zip4j/io/ZipFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    invoke-virtual {v11}, Lnet/lingala/zip4j/io/ZipFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->getXmlDrawableFromZip(Lcom/lsec/core/frame/app/MyUi;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 243
    :goto_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 252
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v11    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .end local v15    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    :cond_1
    :goto_1
    return-object v9

    .line 224
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .restart local v15    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    :cond_2
    invoke-virtual {v11}, Lnet/lingala/zip4j/io/ZipFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".dat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 225
    const/4 v2, 0x4

    new-array v0, v2, [B

    move-object/from16 v16, v0

    .line 226
    .local v16, "readBuffer":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->readInt(Ljava/io/InputStream;[B)I

    move-result v18

    .line 227
    .local v18, "w":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->readInt(Ljava/io/InputStream;[B)I

    move-result v12

    .line 228
    .local v12, "h":I
    mul-int v17, v18, v12

    .line 229
    .local v17, "size":I
    move/from16 v0, v17

    new-array v14, v0, [I

    .line 230
    .local v14, "imageData":[I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move/from16 v0, v17

    if-lt v13, v0, :cond_3

    .line 233
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    invoke-static {v14, v0, v12, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 234
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v10, v2, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v10, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v9, v10

    .line 235
    .end local v10    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 231
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->readInt(Ljava/io/InputStream;[B)I

    move-result v2

    aput v2, v14, v13

    .line 230
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 236
    .end local v12    # "h":I
    .end local v13    # "i":I
    .end local v14    # "imageData":[I
    .end local v16    # "readBuffer":[B
    .end local v17    # "size":I
    .end local v18    # "w":I
    :cond_4
    invoke-virtual {v11}, Lnet/lingala/zip4j/io/ZipFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".9.png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->mContext:Landroid/content/Context;

    .line 238
    invoke-virtual {v11}, Lnet/lingala/zip4j/io/ZipFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-static {v2, v4, v3}, Lcom/lsec/core/frame/ninepatch/NinePatchChunk;->create9PatchDrawable(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v9

    .line 238
    goto :goto_0

    .line 240
    :cond_5
    const/4 v2, 0x0

    invoke-static {v4, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_0

    .line 248
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v11    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .end local v15    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "strZipFile"    # Ljava/lang/String;
    .param p2, "strFolder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 569
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v5, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->mHashMapZipFile:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;

    .line 572
    .local v3, "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    if-nez v3, :cond_0

    .line 573
    invoke-virtual {p0, p1}, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->getZipFile(Ljava/lang/String;)Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;

    move-result-object v3

    .line 574
    sget-object v5, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->mHashMapZipFile:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    :cond_0
    if-eqz v3, :cond_2

    .line 578
    iget-object v5, v3, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->mListFileHeaders:Ljava/util/HashMap;

    if-eqz v5, :cond_2

    .line 579
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 580
    .local v4, "strTmp":Ljava/lang/String;
    iget-object v5, v3, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->mListFileHeaders:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 581
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/lingala/zip4j/io/ZipFileHeader;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 591
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/lingala/zip4j/io/ZipFileHeader;>;"
    .end local v3    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    .end local v4    # "strTmp":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v2

    .line 581
    .restart local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/lingala/zip4j/io/ZipFileHeader;>;"
    .restart local v3    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    .restart local v4    # "strTmp":Ljava/lang/String;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lingala/zip4j/io/ZipFileHeader;

    .line 582
    .local v1, "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    invoke-virtual {v1}, Lnet/lingala/zip4j/io/ZipFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 583
    invoke-virtual {v1}, Lnet/lingala/zip4j/io/ZipFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 587
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lnet/lingala/zip4j/io/ZipFileHeader;>;"
    .end local v1    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .end local v3    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    .end local v4    # "strTmp":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public getRawFromZip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "strZipFile"    # Ljava/lang/String;
    .param p2, "resName"    # Ljava/lang/String;

    .prologue
    .line 328
    const-string v4, ""

    .line 330
    .local v4, "strXml":Ljava/lang/String;
    :try_start_0
    sget-object v5, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->mHashMapZipFile:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;

    .line 331
    .local v3, "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    const-string v5, "HJT"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "strZipFile:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "resName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    if-nez v3, :cond_0

    .line 334
    invoke-virtual {p0, p1}, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->getZipFile(Ljava/lang/String;)Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;

    move-result-object v3

    .line 335
    const-string v5, "HJT"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "strZipFile:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    if-eqz v3, :cond_4

    .line 339
    const-string v5, "HJT"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "myZipFile:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "myZipFile.zipFile:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->zipFile:Lnet/lingala/zip4j/io/ZipFile;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v5, v3, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->zipFile:Lnet/lingala/zip4j/io/ZipFile;

    if-eqz v5, :cond_4

    .line 341
    const/4 v1, 0x0

    .line 342
    .local v1, "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    sget-object v5, Lcom/lsec/core/frame/app/MyUi;->mStrHeadXml:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 344
    const-string v5, "HJT"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mStrHeadXml:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/lsec/core/frame/app/MyUi;->mStrHeadXml:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/lsec/core/frame/app/MyUi;->mStrHeadXml:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->getEntryName_Raw(Ljava/lang/String;)Lnet/lingala/zip4j/io/ZipFileHeader;

    move-result-object v1

    .line 348
    :cond_1
    if-nez v1, :cond_2

    .line 349
    const-string v5, "HJT"

    const-string v6, "null A"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    sget-object v5, Lcom/lsec/core/util/FuncUtils;->mDispayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v6, Lcom/lsec/core/util/FuncUtils;->mDispayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v5, v6, :cond_2

    .line 352
    const-string v5, "HJT"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "port_:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/lsec/core/util/FuncUtils;->mDispayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "heightPixels:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/lsec/core/util/FuncUtils;->mDispayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "port_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->getEntryName_Raw(Ljava/lang/String;)Lnet/lingala/zip4j/io/ZipFileHeader;

    move-result-object v1

    .line 357
    :cond_2
    if-nez v1, :cond_3

    .line 359
    invoke-virtual {v3, p2}, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->getEntryName_Raw(Ljava/lang/String;)Lnet/lingala/zip4j/io/ZipFileHeader;

    move-result-object v1

    .line 360
    const-string v5, "HJT"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "fileHeader:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_3
    if-eqz v1, :cond_4

    .line 364
    const-string v5, "HJT"

    const-string v6, "null B"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v5, v3, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->zipFile:Lnet/lingala/zip4j/io/ZipFile;

    invoke-virtual {v5, v1}, Lnet/lingala/zip4j/io/ZipFile;->getInputStream(Lnet/lingala/zip4j/io/ZipFileHeader;)Lnet/lingala/zip4j/io/ZipInputStream;

    move-result-object v2

    .line 366
    .local v2, "inputStream":Ljava/io/InputStream;
    if-eqz v2, :cond_5

    .line 367
    const-string v5, "HJT"

    const-string v6, "inputStream:"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-static {v2}, Lcom/lsec/core/util/FuncUtils;->readStrFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 369
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 370
    const-string v5, "HJT"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "strXml:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .end local v1    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    :cond_4
    :goto_0
    return-object v4

    .line 372
    .restart local v1    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    :cond_5
    const-string v5, "HJT"

    const-string v6, "null C"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    .end local v1    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "HJT"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "e:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStringArrayFromZip(Lcom/lsec/core/frame/app/MyUi;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 18
    .param p1, "ui"    # Lcom/lsec/core/frame/app/MyUi;
    .param p2, "strZipFile"    # Ljava/lang/String;
    .param p3, "resName"    # Ljava/lang/String;

    .prologue
    .line 503
    const/4 v7, 0x0

    .line 506
    .local v7, "strArray":[Ljava/lang/String;
    :try_start_0
    sget-object v14, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->mHashMapZipFile:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;

    .line 507
    .local v6, "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    if-nez v6, :cond_0

    .line 508
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->getZipFile(Ljava/lang/String;)Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;

    move-result-object v6

    .line 510
    :cond_0
    if-eqz v6, :cond_7

    .line 511
    iget-object v14, v6, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->zipFile:Lnet/lingala/zip4j/io/ZipFile;

    if-eqz v14, :cond_7

    .line 512
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/lsec/core/frame/app/MyUi;->mMapStringArray:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, [Ljava/lang/String;

    move-object v7, v0

    .line 513
    if-nez v7, :cond_7

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/lsec/core/frame/app/MyUi;->mMapStringArray:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    if-nez v14, :cond_7

    .line 514
    const-string v9, "values/arrays"

    .line 515
    .local v9, "strArrayXml":Ljava/lang/String;
    invoke-virtual {v6, v9}, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->getFileHead(Ljava/lang/String;)Lnet/lingala/zip4j/io/ZipFileHeader;

    move-result-object v2

    .line 516
    .local v2, "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    if-eqz v2, :cond_7

    .line 517
    iget-object v14, v6, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->zipFile:Lnet/lingala/zip4j/io/ZipFile;

    invoke-virtual {v14, v2}, Lnet/lingala/zip4j/io/ZipFile;->getInputStream(Lnet/lingala/zip4j/io/ZipFileHeader;)Lnet/lingala/zip4j/io/ZipInputStream;

    move-result-object v4

    .line 518
    .local v4, "inputStream":Ljava/io/InputStream;
    if-eqz v4, :cond_7

    .line 519
    invoke-static {v4}, Lcom/lsec/core/util/FuncUtils;->readStrFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v12

    .line 520
    .local v12, "strXml":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 521
    new-instance v13, Lcom/lsec/core/util/Markup;

    invoke-direct {v13}, Lcom/lsec/core/util/Markup;-><init>()V

    .line 522
    .local v13, "xml":Lcom/lsec/core/util/Markup;
    invoke-virtual {v13, v12}, Lcom/lsec/core/util/Markup;->ReadXML(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v13}, Lcom/lsec/core/util/Markup;->IntoItem()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 525
    :cond_1
    iget-object v14, v13, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    iget-object v14, v14, Lcom/lsec/core/util/Markup$XmlItem;->mStrBuff:Ljava/lang/String;

    .line 526
    iget-object v15, v13, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    iget v15, v15, Lcom/lsec/core/util/Markup$XmlItem;->mPosEnd:I

    iget-object v0, v13, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lsec/core/util/Markup$XmlItem;->mPosStart:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 525
    invoke-virtual/range {v13 .. v17}, Lcom/lsec/core/util/Markup;->FindToken(Ljava/lang/String;II[I)Ljava/lang/String;

    move-result-object v11

    .line 527
    .local v11, "strTemp":Ljava/lang/String;
    const-string v14, "string-array"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 528
    const-string v14, "name"

    invoke-virtual {v13, v14}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 529
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v13}, Lcom/lsec/core/util/Markup;->IntoItem()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 532
    :cond_2
    invoke-virtual {v13}, Lcom/lsec/core/util/Markup;->GetData()Ljava/lang/String;

    move-result-object v10

    .line 533
    .local v10, "strData":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 534
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_3
    invoke-virtual {v13}, Lcom/lsec/core/util/Markup;->NextItem()Z

    move-result v14

    if-nez v14, :cond_2

    .line 536
    invoke-virtual {v13}, Lcom/lsec/core/util/Markup;->ExitItem()V

    .line 539
    .end local v10    # "strData":Ljava/lang/String;
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_5

    .line 540
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    new-array v8, v14, [Ljava/lang/String;

    .line 541
    .local v8, "strArrayTmp":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-lt v3, v14, :cond_8

    .line 544
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/lsec/core/frame/app/MyUi;->mMapStringArray:Ljava/util/HashMap;

    invoke-virtual {v14, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 546
    move-object v7, v8

    .line 550
    .end local v3    # "i":I
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "strArrayTmp":[Ljava/lang/String;
    :cond_5
    invoke-virtual {v13}, Lcom/lsec/core/util/Markup;->NextItem()Z

    move-result v14

    if-nez v14, :cond_1

    .line 551
    invoke-virtual {v13}, Lcom/lsec/core/util/Markup;->ExitItem()V

    .line 555
    .end local v11    # "strTemp":Ljava/lang/String;
    .end local v13    # "xml":Lcom/lsec/core/util/Markup;
    :cond_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 565
    .end local v2    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    .end local v9    # "strArrayXml":Ljava/lang/String;
    .end local v12    # "strXml":Ljava/lang/String;
    :cond_7
    :goto_1
    return-object v7

    .line 542
    .restart local v2    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .restart local v3    # "i":I
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    .restart local v8    # "strArrayTmp":[Ljava/lang/String;
    .restart local v9    # "strArrayXml":Ljava/lang/String;
    .restart local v11    # "strTemp":Ljava/lang/String;
    .restart local v12    # "strXml":Ljava/lang/String;
    .restart local v13    # "xml":Lcom/lsec/core/util/Markup;
    :cond_8
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v8, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 561
    .end local v2    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .end local v3    # "i":I
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    .end local v8    # "strArrayTmp":[Ljava/lang/String;
    .end local v9    # "strArrayXml":Ljava/lang/String;
    .end local v11    # "strTemp":Ljava/lang/String;
    .end local v12    # "strXml":Ljava/lang/String;
    .end local v13    # "xml":Lcom/lsec/core/util/Markup;
    :catch_0
    move-exception v14

    goto :goto_1
.end method

.method public getStringFromZip(Lcom/lsec/core/frame/app/MyUi;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "ui"    # Lcom/lsec/core/frame/app/MyUi;
    .param p2, "strZipFile"    # Ljava/lang/String;
    .param p3, "resName"    # Ljava/lang/String;

    .prologue
    .line 414
    const-string v8, ""

    .line 416
    .local v8, "str":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 417
    .local v7, "localeDefault":Ljava/util/Locale;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 418
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    .line 421
    :cond_0
    :try_start_0
    sget-object v1, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->mHashMapZipFile:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;

    .line 422
    .local v3, "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    if-nez v3, :cond_1

    .line 423
    invoke-virtual {p0, p2}, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->getZipFile(Ljava/lang/String;)Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;

    move-result-object v3

    .line 425
    :cond_1
    if-eqz v3, :cond_2

    .line 426
    iget-object v1, v3, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->zipFile:Lnet/lingala/zip4j/io/ZipFile;

    if-eqz v1, :cond_2

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "values-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 428
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "strings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 427
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 429
    .local v5, "strLangXml":Ljava/lang/String;
    iget-object v1, p1, Lcom/lsec/core/frame/app/MyUi;->mStrLangXml:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 430
    iget-object v1, p1, Lcom/lsec/core/frame/app/MyUi;->mMapString:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 444
    :goto_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 445
    const-string v5, "values/strings"

    .line 446
    invoke-virtual {v3, v5}, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->getFileHead(Ljava/lang/String;)Lnet/lingala/zip4j/io/ZipFileHeader;

    move-result-object v4

    .local v4, "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    .line 447
    invoke-virtual/range {v1 .. v6}, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->getStringFromZipEntry(Lcom/lsec/core/frame/app/MyUi;Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;Lnet/lingala/zip4j/io/ZipFileHeader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 455
    .end local v3    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    .end local v4    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .end local v5    # "strLangXml":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v8

    .line 432
    .restart local v3    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    .restart local v5    # "strLangXml":Ljava/lang/String;
    :cond_3
    iget-object v1, p1, Lcom/lsec/core/frame/app/MyUi;->mMapString:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 433
    iput-object v5, p1, Lcom/lsec/core/frame/app/MyUi;->mStrLangXml:Ljava/lang/String;

    .line 435
    invoke-virtual {v3, v5}, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->getFileHead(Ljava/lang/String;)Lnet/lingala/zip4j/io/ZipFileHeader;

    move-result-object v4

    .line 436
    .restart local v4    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    if-nez v4, :cond_4

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "values-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "strings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 438
    invoke-virtual {v3, v5}, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->getFileHead(Ljava/lang/String;)Lnet/lingala/zip4j/io/ZipFileHeader;

    move-result-object v4

    :cond_4
    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    .line 441
    invoke-virtual/range {v1 .. v6}, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->getStringFromZipEntry(Lcom/lsec/core/frame/app/MyUi;Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;Lnet/lingala/zip4j/io/ZipFileHeader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 451
    .end local v3    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    .end local v4    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .end local v5    # "strLangXml":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public getStringFromZipEntry(Lcom/lsec/core/frame/app/MyUi;Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;Lnet/lingala/zip4j/io/ZipFileHeader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "ui"    # Lcom/lsec/core/frame/app/MyUi;
    .param p2, "myZipFile"    # Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    .param p3, "fileHeader"    # Lnet/lingala/zip4j/io/ZipFileHeader;
    .param p4, "strLangXml"    # Ljava/lang/String;
    .param p5, "resName"    # Ljava/lang/String;

    .prologue
    .line 460
    const-string v2, ""

    .line 461
    .local v2, "str":Ljava/lang/String;
    iget-object v1, p1, Lcom/lsec/core/frame/app/MyUi;->mMapString:Ljava/util/HashMap;

    .line 462
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "values/"

    invoke-virtual {p4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 463
    iget-object v1, p1, Lcom/lsec/core/frame/app/MyUi;->mMapString_Common:Ljava/util/HashMap;

    .line 464
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 465
    invoke-virtual {v1, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "str":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "str":Ljava/lang/String;
    move-object v3, v2

    .end local v2    # "str":Ljava/lang/String;
    .local v3, "str":Ljava/lang/String;
    move-object v4, v2

    .line 499
    .end local v3    # "str":Ljava/lang/String;
    .local v4, "str":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 471
    .end local v4    # "str":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_4

    .line 472
    :try_start_0
    iget-object v9, p2, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->zipFile:Lnet/lingala/zip4j/io/ZipFile;

    invoke-virtual {v9, p3}, Lnet/lingala/zip4j/io/ZipFile;->getInputStream(Lnet/lingala/zip4j/io/ZipFileHeader;)Lnet/lingala/zip4j/io/ZipInputStream;

    move-result-object v0

    .line 473
    .local v0, "inputStream":Ljava/io/InputStream;
    if-eqz v0, :cond_4

    .line 474
    invoke-static {v0}, Lcom/lsec/core/util/FuncUtils;->readStrFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 475
    .local v7, "strXml":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 476
    new-instance v8, Lcom/lsec/core/util/Markup;

    invoke-direct {v8}, Lcom/lsec/core/util/Markup;-><init>()V

    .line 477
    .local v8, "xml":Lcom/lsec/core/util/Markup;
    invoke-virtual {v8, v7}, Lcom/lsec/core/util/Markup;->ReadXML(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v8}, Lcom/lsec/core/util/Markup;->IntoItem()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 481
    :cond_1
    const-string v9, "name"

    invoke-virtual {v8, v9}, Lcom/lsec/core/util/Markup;->GetAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "strTemp":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 482
    invoke-virtual {v8}, Lcom/lsec/core/util/Markup;->GetData()Ljava/lang/String;

    move-result-object v5

    .line 483
    .local v5, "strData":Ljava/lang/String;
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    invoke-virtual {v6, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 485
    move-object v2, v5

    .line 487
    .end local v5    # "strData":Ljava/lang/String;
    :cond_2
    invoke-virtual {v8}, Lcom/lsec/core/util/Markup;->NextItem()Z

    move-result v9

    if-nez v9, :cond_1

    .line 488
    invoke-virtual {v8}, Lcom/lsec/core/util/Markup;->ExitItem()V

    .line 492
    .end local v6    # "strTemp":Ljava/lang/String;
    .end local v8    # "xml":Lcom/lsec/core/util/Markup;
    :cond_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "strXml":Ljava/lang/String;
    :cond_4
    :goto_1
    move-object v3, v2

    .end local v2    # "str":Ljava/lang/String;
    .restart local v3    # "str":Ljava/lang/String;
    move-object v4, v2

    .line 499
    .end local v3    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    goto :goto_0

    .line 495
    .end local v4    # "str":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method public getXmlDrawableFromZip(Lcom/lsec/core/frame/app/MyUi;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "ui"    # Lcom/lsec/core/frame/app/MyUi;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "strEntryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lsec/core/frame/app/MyUi;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 257
    .local p4, "mapDrawables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    .local p5, "tmpMapDrawables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    const/4 v0, 0x0

    .line 259
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_1

    .line 260
    :try_start_0
    invoke-static {p2}, Lcom/lsec/core/util/FuncUtils;->readStrFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "strXml":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 262
    new-instance v3, Lcom/lsec/core/util/Markup;

    invoke-direct {v3}, Lcom/lsec/core/util/Markup;-><init>()V

    .line 263
    .local v3, "xml":Lcom/lsec/core/util/Markup;
    invoke-virtual {v3, v2}, Lcom/lsec/core/util/Markup;->ReadXML(Ljava/lang/String;)V

    .line 265
    iget-object v4, v3, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    iget-object v4, v4, Lcom/lsec/core/util/Markup$XmlItem;->mStrBuff:Ljava/lang/String;

    iget-object v5, v3, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    iget v5, v5, Lcom/lsec/core/util/Markup$XmlItem;->mPosEnd:I

    iget-object v6, v3, Lcom/lsec/core/util/Markup;->mItemCur:Lcom/lsec/core/util/Markup$XmlItem;

    iget v6, v6, Lcom/lsec/core/util/Markup$XmlItem;->mPosStart:I

    sub-int/2addr v5, v6

    .line 266
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 265
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/lsec/core/util/Markup;->FindToken(Ljava/lang/String;II[I)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "strTemp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 292
    .end local v1    # "strTemp":Ljava/lang/String;
    .end local v3    # "xml":Lcom/lsec/core/util/Markup;
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 298
    .end local v2    # "strXml":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v0

    .line 267
    .restart local v1    # "strTemp":Ljava/lang/String;
    .restart local v2    # "strXml":Ljava/lang/String;
    .restart local v3    # "xml":Lcom/lsec/core/util/Markup;
    :sswitch_0
    const-string v4, "animation-list"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 284
    invoke-static {p1, v3, p4, p5}, Lcom/lsec/core/frame/app/MyUi;->getXmlAnimationDrawable(Lcom/lsec/core/frame/app/MyUi;Lcom/lsec/core/util/Markup;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 285
    goto :goto_0

    .line 267
    :sswitch_1
    const-string v4, "bitmap"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    invoke-static {p1, v3, p4, p5}, Lcom/lsec/core/frame/app/MyUi;->getXmlBitmapDrawable(Lcom/lsec/core/frame/app/MyUi;Lcom/lsec/core/util/Markup;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 267
    :sswitch_2
    const-string v4, "rotate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 281
    invoke-static {p1, v3, p4, p5}, Lcom/lsec/core/frame/app/MyUi;->getXmlRotateDrawable(Lcom/lsec/core/frame/app/MyUi;Lcom/lsec/core/util/Markup;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 282
    goto :goto_0

    .line 267
    :sswitch_3
    const-string v4, "color"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    invoke-static {v3}, Lcom/lsec/core/frame/app/MyUi;->getXmlColorDrawable(Lcom/lsec/core/util/Markup;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 276
    goto :goto_0

    .line 267
    :sswitch_4
    const-string v4, "shape"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    iget-object v4, p0, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/lsec/core/frame/app/MyUi;->getXmlGradientDrawable(Landroid/content/Context;Lcom/lsec/core/util/Markup;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 279
    goto :goto_0

    .line 267
    :sswitch_5
    const-string v4, "level-list"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    invoke-static {p1, v3, p4, p5}, Lcom/lsec/core/frame/app/MyUi;->getXmlLevelListDrawable(Lcom/lsec/core/frame/app/MyUi;Lcom/lsec/core/util/Markup;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 273
    goto :goto_0

    .line 267
    :sswitch_6
    const-string v4, "selector"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 269
    invoke-static {p1, v3, p4, p5}, Lcom/lsec/core/frame/app/MyUi;->getXmlStateListDrawable(Lcom/lsec/core/frame/app/MyUi;Lcom/lsec/core/util/Markup;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 270
    goto :goto_0

    .line 294
    .end local v1    # "strTemp":Ljava/lang/String;
    .end local v2    # "strXml":Ljava/lang/String;
    .end local v3    # "xml":Lcom/lsec/core/util/Markup;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 267
    :sswitch_data_0
    .sparse-switch
        -0x5905b6b9 -> :sswitch_0
        -0x52c70ed1 -> :sswitch_1
        -0x372522a5 -> :sswitch_2
        0x5a72f63 -> :sswitch_3
        0x6854fa1 -> :sswitch_4
        0x993c947 -> :sswitch_5
        0x4705f3df -> :sswitch_6
    .end sparse-switch
.end method

.method public getZipFile(Ljava/lang/String;)Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    .locals 24
    .param p1, "strZipFile"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v14, 0x0

    .line 106
    .local v14, "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    :try_start_0
    const-string v21, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 107
    .local v8, "index":I
    if-ltz v8, :cond_a

    .line 108
    add-int/lit8 v21, v8, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    .line 110
    .local v18, "strResName":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 111
    .local v3, "assetManager":Landroid/content/res/AssetManager;
    const/4 v12, 0x0

    .line 112
    .local v12, "is":Landroid/content/res/AssetManager$AssetInputStream;
    const-string v16, ""

    .line 113
    .local v16, "strAsset":Ljava/lang/String;
    sget-object v21, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 114
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "core_ogg/"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v22, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 115
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .end local v12    # "is":Landroid/content/res/AssetManager$AssetInputStream;
    check-cast v12, Landroid/content/res/AssetManager$AssetInputStream;

    .line 118
    .restart local v12    # "is":Landroid/content/res/AssetManager$AssetInputStream;
    :cond_0
    if-nez v12, :cond_1

    .line 119
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "core_ogg/"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 120
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .end local v12    # "is":Landroid/content/res/AssetManager$AssetInputStream;
    check-cast v12, Landroid/content/res/AssetManager$AssetInputStream;

    .line 123
    .restart local v12    # "is":Landroid/content/res/AssetManager$AssetInputStream;
    :cond_1
    if-eqz v12, :cond_a

    .line 124
    new-instance v15, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;-><init>(Lcom/lsec/core/frame/app/Zip4jUtilFunc;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    .end local v14    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    .local v15, "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    :try_start_2
    new-instance v21, Lnet/lingala/zip4j/io/ZipFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/io/ZipFile;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, v21

    iput-object v0, v15, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->zipFile:Lnet/lingala/zip4j/io/ZipFile;

    .line 126
    invoke-virtual {v12}, Landroid/content/res/AssetManager$AssetInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 133
    .end local v3    # "assetManager":Landroid/content/res/AssetManager;
    .end local v12    # "is":Landroid/content/res/AssetManager$AssetInputStream;
    .end local v16    # "strAsset":Ljava/lang/String;
    .end local v18    # "strResName":Ljava/lang/String;
    :goto_0
    if-nez v15, :cond_9

    .line 134
    :try_start_3
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 136
    new-instance v14, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;-><init>(Lcom/lsec/core/frame/app/Zip4jUtilFunc;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 137
    .end local v15    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    .restart local v14    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    :try_start_4
    new-instance v21, Lnet/lingala/zip4j/io/ZipFile;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Lnet/lingala/zip4j/io/ZipFile;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v21

    iput-object v0, v14, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->zipFile:Lnet/lingala/zip4j/io/ZipFile;

    .line 141
    .end local v6    # "file":Ljava/io/File;
    :goto_1
    iget-object v0, v14, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->zipFile:Lnet/lingala/zip4j/io/ZipFile;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 142
    iget-object v0, v14, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->zipFile:Lnet/lingala/zip4j/io/ZipFile;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lnet/lingala/zip4j/io/ZipFile;->getFileHeaders()Ljava/util/HashMap;

    move-result-object v13

    .line 143
    .local v13, "listFileHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lnet/lingala/zip4j/io/ZipFileHeader;>;"
    if-eqz v13, :cond_2

    .line 144
    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v21

    if-nez v21, :cond_6

    .line 163
    .end local v8    # "index":I
    .end local v13    # "listFileHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lnet/lingala/zip4j/io/ZipFileHeader;>;"
    :cond_2
    :goto_3
    if-eqz v14, :cond_5

    .line 164
    :try_start_5
    const-string v21, "3c6e0b8a9c15224a8228b9a98ca1531d"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->getFileHead(Ljava/lang/String;)Lnet/lingala/zip4j/io/ZipFileHeader;

    move-result-object v7

    .line 165
    .local v7, "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    if-eqz v7, :cond_5

    .line 166
    invoke-static {}, Lnet/lingala/zip4j/io/ZipJni;->getInstance()Lnet/lingala/zip4j/io/ZipJni;

    move-result-object v20

    .line 167
    .local v20, "zipJni":Lnet/lingala/zip4j/io/ZipJni;
    if-eqz v20, :cond_3

    .line 168
    invoke-virtual/range {v20 .. v20}, Lnet/lingala/zip4j/io/ZipJni;->initKeyDefault()V

    .line 170
    :cond_3
    iget-object v0, v14, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->zipFile:Lnet/lingala/zip4j/io/ZipFile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lnet/lingala/zip4j/io/ZipFile;->getInputStream(Lnet/lingala/zip4j/io/ZipFileHeader;)Lnet/lingala/zip4j/io/ZipInputStream;

    move-result-object v11

    .line 171
    .local v11, "inputStream":Ljava/io/InputStream;
    if-eqz v11, :cond_5

    .line 172
    invoke-static {v11}, Lcom/lsec/core/util/FuncUtils;->readStrFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v19

    .line 173
    .local v19, "strTxt":Ljava/lang/String;
    if-eqz v20, :cond_4

    .line 174
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/io/ZipJni;->initKeyByTxt(Ljava/lang/String;Lcom/lsec/core/frame/app/Zip4jUtilFunc;)V

    .line 176
    :cond_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 183
    .end local v7    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v19    # "strTxt":Ljava/lang/String;
    .end local v20    # "zipJni":Lnet/lingala/zip4j/io/ZipJni;
    :cond_5
    :goto_4
    sget-object v21, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->mHashMapZipFile:Ljava/util/HashMap;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    return-object v14

    .line 128
    .restart local v8    # "index":I
    .restart local v18    # "strResName":Ljava/lang/String;
    :catch_0
    move-exception v21

    :goto_5
    move-object v15, v14

    .end local v14    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    .restart local v15    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    goto :goto_0

    .line 144
    .end local v15    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    .end local v18    # "strResName":Ljava/lang/String;
    .restart local v13    # "listFileHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lnet/lingala/zip4j/io/ZipFileHeader;>;"
    .restart local v14    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    :cond_6
    :try_start_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 145
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lnet/lingala/zip4j/io/ZipFileHeader;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 146
    .local v17, "strKey":Ljava/lang/String;
    const-string v21, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 147
    .local v9, "index1":I
    if-ltz v9, :cond_8

    .line 148
    const-string v21, "."

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 149
    .local v10, "index2":I
    if-ltz v10, :cond_7

    .line 150
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 152
    :cond_7
    iget-object v0, v14, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->mListFileHeaders:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lnet/lingala/zip4j/io/ZipFileHeader;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 158
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lnet/lingala/zip4j/io/ZipFileHeader;>;"
    .end local v8    # "index":I
    .end local v9    # "index1":I
    .end local v10    # "index2":I
    .end local v13    # "listFileHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lnet/lingala/zip4j/io/ZipFileHeader;>;"
    .end local v17    # "strKey":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 159
    .local v4, "e":Ljava/lang/Exception;
    :goto_6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 154
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lnet/lingala/zip4j/io/ZipFileHeader;>;"
    .restart local v8    # "index":I
    .restart local v9    # "index1":I
    .restart local v13    # "listFileHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lnet/lingala/zip4j/io/ZipFileHeader;>;"
    .restart local v17    # "strKey":Ljava/lang/String;
    :cond_8
    :try_start_7
    iget-object v0, v14, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->mListFileHeaders:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lnet/lingala/zip4j/io/ZipFileHeader;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    .line 180
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lnet/lingala/zip4j/io/ZipFileHeader;>;"
    .end local v8    # "index":I
    .end local v9    # "index1":I
    .end local v13    # "listFileHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lnet/lingala/zip4j/io/ZipFileHeader;>;"
    .end local v17    # "strKey":Ljava/lang/String;
    :catch_2
    move-exception v21

    goto :goto_4

    .line 158
    .end local v14    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    .restart local v8    # "index":I
    .restart local v15    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    :catch_3
    move-exception v4

    move-object v14, v15

    .end local v15    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    .restart local v14    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    goto :goto_6

    .line 128
    .end local v14    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    .restart local v3    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v12    # "is":Landroid/content/res/AssetManager$AssetInputStream;
    .restart local v15    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    .restart local v16    # "strAsset":Ljava/lang/String;
    .restart local v18    # "strResName":Ljava/lang/String;
    :catch_4
    move-exception v21

    move-object v14, v15

    .end local v15    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    .restart local v14    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    goto :goto_5

    .end local v3    # "assetManager":Landroid/content/res/AssetManager;
    .end local v12    # "is":Landroid/content/res/AssetManager$AssetInputStream;
    .end local v14    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    .end local v16    # "strAsset":Ljava/lang/String;
    .end local v18    # "strResName":Ljava/lang/String;
    .restart local v15    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    :cond_9
    move-object v14, v15

    .end local v15    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    .restart local v14    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    goto/16 :goto_1

    :cond_a
    move-object v15, v14

    .end local v14    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    .restart local v15    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    goto/16 :goto_0
.end method

.method public loadAnimation(Lcom/lsec/core/frame/app/MyUi;Ljava/lang/String;Ljava/lang/String;)Landroid/view/animation/Animation;
    .locals 8
    .param p1, "ui"    # Lcom/lsec/core/frame/app/MyUi;
    .param p2, "strZipFile"    # Ljava/lang/String;
    .param p3, "resName"    # Ljava/lang/String;

    .prologue
    .line 385
    const/4 v0, 0x0

    .line 387
    .local v0, "animation":Landroid/view/animation/Animation;
    :try_start_0
    sget-object v5, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->mHashMapZipFile:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;

    .line 388
    .local v3, "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    if-nez v3, :cond_0

    .line 389
    invoke-virtual {p0, p2}, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->getZipFile(Ljava/lang/String;)Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;

    move-result-object v3

    .line 391
    :cond_0
    if-eqz v3, :cond_1

    .line 392
    iget-object v5, v3, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->zipFile:Lnet/lingala/zip4j/io/ZipFile;

    if-eqz v5, :cond_1

    .line 393
    invoke-virtual {v3, p3}, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->getEntryName_Anim(Ljava/lang/String;)Lnet/lingala/zip4j/io/ZipFileHeader;

    move-result-object v1

    .line 394
    .local v1, "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    if-eqz v1, :cond_1

    .line 395
    iget-object v5, v3, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->zipFile:Lnet/lingala/zip4j/io/ZipFile;

    invoke-virtual {v5, v1}, Lnet/lingala/zip4j/io/ZipFile;->getInputStream(Lnet/lingala/zip4j/io/ZipFileHeader;)Lnet/lingala/zip4j/io/ZipInputStream;

    move-result-object v2

    .line 396
    .local v2, "inputStream":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 397
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 398
    .local v4, "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v5, "utf-8"

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 399
    iget-object v5, p1, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    .line 400
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 399
    invoke-static {v5, v4, v6, v7}, Lcom/lsec/core/frame/app/MyUi;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 401
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    .end local v1    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "myZipFile":Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
    .end local v4    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    :goto_0
    return-object v0

    .line 406
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public readFully(Ljava/io/InputStream;[BII)V
    .locals 4
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    if-gez p4, :cond_0

    .line 195
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 197
    :cond_0
    const/4 v1, 0x0

    .line 198
    .local v1, "n":I
    :goto_0
    if-lt v1, p4, :cond_1

    .line 205
    return-void

    .line 199
    :cond_1
    add-int v2, p3, v1

    sub-int v3, p4, v1

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 200
    .local v0, "count":I
    if-gez v0, :cond_2

    .line 201
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 203
    :cond_2
    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public readInt(Ljava/io/InputStream;[B)I
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "readBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 188
    const/4 v0, 0x4

    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/lsec/core/frame/app/Zip4jUtilFunc;->readFully(Ljava/io/InputStream;[BII)V

    .line 189
    const/4 v0, 0x3

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 190
    aget-byte v1, p2, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    .line 189
    or-int/2addr v0, v1

    return v0
.end method
