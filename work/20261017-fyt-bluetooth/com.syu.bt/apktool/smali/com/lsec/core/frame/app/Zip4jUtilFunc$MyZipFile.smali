.class public Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;
.super Ljava/lang/Object;
.source "Zip4jUtilFunc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/frame/app/Zip4jUtilFunc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyZipFile"
.end annotation


# instance fields
.field mListFileHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnet/lingala/zip4j/io/ZipFileHeader;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lsec/core/frame/app/Zip4jUtilFunc;

.field public zipFile:Lnet/lingala/zip4j/io/ZipFile;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/app/Zip4jUtilFunc;)V
    .locals 1

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->this$0:Lcom/lsec/core/frame/app/Zip4jUtilFunc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->mListFileHeaders:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getEntryName_Anim(Ljava/lang/String;)Lnet/lingala/zip4j/io/ZipFileHeader;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "anim/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->getFileHead(Ljava/lang/String;)Lnet/lingala/zip4j/io/ZipFileHeader;

    move-result-object v0

    return-object v0
.end method

.method public getEntryName_Drawable(Ljava/lang/String;)Lnet/lingala/zip4j/io/ZipFileHeader;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "drawable-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/lsec/core/util/FuncUtils;->mDispayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 59
    sget-object v4, Lcom/lsec/core/util/FuncUtils;->mDispayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-virtual {p0, v3}, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->getFileHead(Ljava/lang/String;)Lnet/lingala/zip4j/io/ZipFileHeader;

    move-result-object v0

    .line 60
    .local v0, "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    if-eqz v0, :cond_0

    move-object v1, v0

    .end local v0    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .local v1, "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    move-object v3, v0

    .line 83
    :goto_0
    return-object v3

    .line 63
    .end local v1    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .restart local v0    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 64
    .local v2, "localeDefault":Ljava/util/Locale;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1

    .line 65
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 67
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "drawable-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-nodpi/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->getFileHead(Ljava/lang/String;)Lnet/lingala/zip4j/io/ZipFileHeader;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_2

    move-object v1, v0

    .end local v0    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .restart local v1    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    move-object v3, v0

    .line 69
    goto :goto_0

    .line 71
    .end local v1    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .restart local v0    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "drawable-nodpi/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->getFileHead(Ljava/lang/String;)Lnet/lingala/zip4j/io/ZipFileHeader;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_3

    move-object v1, v0

    .end local v0    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .restart local v1    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    move-object v3, v0

    .line 73
    goto :goto_0

    .line 75
    .end local v1    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .restart local v0    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "drawable/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->getFileHead(Ljava/lang/String;)Lnet/lingala/zip4j/io/ZipFileHeader;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_4

    move-object v1, v0

    .end local v0    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .restart local v1    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    move-object v3, v0

    .line 77
    goto :goto_0

    .line 79
    .end local v1    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .restart local v0    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "anim/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->getFileHead(Ljava/lang/String;)Lnet/lingala/zip4j/io/ZipFileHeader;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_5

    move-object v1, v0

    .end local v0    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .restart local v1    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    move-object v3, v0

    .line 81
    goto/16 :goto_0

    .line 83
    .end local v1    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .restart local v0    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    :cond_5
    const/4 v3, 0x0

    move-object v1, v0

    .end local v0    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    .restart local v1    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    goto/16 :goto_0
.end method

.method public getEntryName_Drawable(Ljava/lang/String;Ljava/lang/String;)Lnet/lingala/zip4j/io/ZipFileHeader;
    .locals 2
    .param p1, "strFolder"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->getFileHead(Ljava/lang/String;)Lnet/lingala/zip4j/io/ZipFileHeader;

    move-result-object v0

    return-object v0
.end method

.method public getEntryName_Raw(Ljava/lang/String;)Lnet/lingala/zip4j/io/ZipFileHeader;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "raw-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lsec/core/util/FuncUtils;->mDispayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lsec/core/util/FuncUtils;->mDispayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->getFileHead(Ljava/lang/String;)Lnet/lingala/zip4j/io/ZipFileHeader;

    move-result-object v0

    .line 92
    .local v0, "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    if-eqz v0, :cond_0

    .line 95
    .end local v0    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    :goto_0
    return-object v0

    .restart local v0    # "fileHeader":Lnet/lingala/zip4j/io/ZipFileHeader;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "raw/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->getFileHead(Ljava/lang/String;)Lnet/lingala/zip4j/io/ZipFileHeader;

    move-result-object v0

    goto :goto_0
.end method

.method public getFileHead(Ljava/lang/String;)Lnet/lingala/zip4j/io/ZipFileHeader;
    .locals 1
    .param p1, "strKey"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->mListFileHeaders:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/lsec/core/frame/app/Zip4jUtilFunc$MyZipFile;->mListFileHeaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/io/ZipFileHeader;

    .line 54
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
