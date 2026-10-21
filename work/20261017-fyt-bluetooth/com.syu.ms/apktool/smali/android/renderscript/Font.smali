.class public Landroid/renderscript/Font;
.super Landroid/renderscript/BaseObj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Font$Style;,
        Landroid/renderscript/Font$FontFamily;
    }
.end annotation


# static fields
.field private static sFontFamilyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/renderscript/Font$FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMonoNames:[Ljava/lang/String;

.field private static final sSansNames:[Ljava/lang/String;

.field private static final sSerifNames:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-string/jumbo v0, "sans-serif"

    const-string v1, "arial"

    const-string v2, "helvetica"

    const-string/jumbo v3, "tahoma"

    const-string/jumbo v4, "verdana"

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/renderscript/Font;->sSansNames:[Ljava/lang/String;

    const-string/jumbo v1, "serif"

    const-string/jumbo v2, "times"

    const-string/jumbo v3, "times new roman"

    const-string v4, "palatino"

    const-string v5, "georgia"

    const-string v6, "baskerville"

    const-string v7, "goudy"

    const-string v8, "fantasy"

    const-string v9, "cursive"

    const-string v10, "ITC Stone Serif"

    .line 2
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/renderscript/Font;->sSerifNames:[Ljava/lang/String;

    const-string v0, "monospace"

    const-string v1, "courier"

    const-string v2, "courier new"

    const-string v3, "monaco"

    .line 3
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/renderscript/Font;->sMonoNames:[Ljava/lang/String;

    .line 4
    invoke-static {}, Landroid/renderscript/Font;->initFontFamilyMap()V

    return-void
.end method

.method public constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    return-void
.end method

.method private static addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    sget-object v2, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;Landroid/renderscript/Font$Style;F)Landroid/renderscript/Font;
    .locals 1

    .line 1
    invoke-static {p2, p3}, Landroid/renderscript/Font;->getFontFileName(Ljava/lang/String;Landroid/renderscript/Font$Style;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/fonts/"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p0, p1, p2, p4}, Landroid/renderscript/Font;->createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;

    move-result-object p0

    return-object p0
.end method

.method public static createFromAsset(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 4
    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/renderscript/RenderScript;->nFontCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;FI)I

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    new-instance p2, Landroid/renderscript/Font;

    invoke-direct {p2, p1, p0}, Landroid/renderscript/Font;-><init>(ILandroid/renderscript/RenderScript;)V

    return-object p2

    .line 6
    :cond_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to create font from asset "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/io/File;F)Landroid/renderscript/Font;
    .locals 0

    .line 6
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Landroid/renderscript/Font;->createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;

    move-result-object p0

    return-object p0
.end method

.method public static createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 3
    invoke-virtual {p0, p2, p3, p1}, Landroid/renderscript/RenderScript;->nFontCreateFromFile(Ljava/lang/String;FI)I

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p2, Landroid/renderscript/Font;

    invoke-direct {p2, p1, p0}, Landroid/renderscript/Font;-><init>(ILandroid/renderscript/RenderScript;)V

    return-object p2

    .line 5
    :cond_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to create font from file "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFromResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;IF)Landroid/renderscript/Font;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "R."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 5
    instance-of v2, v1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v2, :cond_1

    .line 6
    check-cast v1, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v1}, Landroid/content/res/AssetManager$AssetInputStream;->getAssetInt()I

    move-result v1

    .line 7
    invoke-virtual {p0, v0, p3, p1, v1}, Landroid/renderscript/RenderScript;->nFontCreateFromAssetStream(Ljava/lang/String;FII)I

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    new-instance p2, Landroid/renderscript/Font;

    invoke-direct {p2, p1, p0}, Landroid/renderscript/Font;-><init>(ILandroid/renderscript/RenderScript;)V

    return-object p2

    .line 9
    :cond_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to create font from resource "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    const-string p1, "Unsupported asset stream created"

    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :catch_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to open resource "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFontFileName(Ljava/lang/String;Landroid/renderscript/Font$Style;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/renderscript/Font$FontFamily;

    if-eqz p0, :cond_4

    .line 2
    sget-object v0, Landroid/renderscript/Font$1;->$SwitchMap$android$renderscript$Font$Style:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_1
    iget-object p0, p0, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    return-object p0

    .line 5
    :cond_2
    iget-object p0, p0, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    return-object p0

    .line 6
    :cond_3
    iget-object p0, p0, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    return-object p0

    :cond_4
    :goto_0
    const-string p0, "DroidSans.ttf"

    return-object p0
.end method

.method private static initFontFamilyMap()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    .line 2
    new-instance v0, Landroid/renderscript/Font$FontFamily;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font$1;)V

    .line 3
    sget-object v2, Landroid/renderscript/Font;->sSansNames:[Ljava/lang/String;

    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    const-string v2, "Roboto-Regular.ttf"

    .line 4
    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    const-string v2, "Roboto-Bold.ttf"

    .line 5
    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    const-string v2, "Roboto-Italic.ttf"

    .line 6
    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    const-string v2, "Roboto-BoldItalic.ttf"

    .line 7
    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    .line 9
    new-instance v0, Landroid/renderscript/Font$FontFamily;

    invoke-direct {v0, v1}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font$1;)V

    .line 10
    sget-object v2, Landroid/renderscript/Font;->sSerifNames:[Ljava/lang/String;

    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    const-string v2, "DroidSerif-Regular.ttf"

    .line 11
    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    const-string v2, "DroidSerif-Bold.ttf"

    .line 12
    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    const-string v2, "DroidSerif-Italic.ttf"

    .line 13
    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    const-string v2, "DroidSerif-BoldItalic.ttf"

    .line 14
    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    .line 15
    invoke-static {v0}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    .line 16
    new-instance v0, Landroid/renderscript/Font$FontFamily;

    invoke-direct {v0, v1}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font$1;)V

    .line 17
    sget-object v1, Landroid/renderscript/Font;->sMonoNames:[Ljava/lang/String;

    iput-object v1, v0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    const-string v1, "DroidSansMono.ttf"

    .line 18
    iput-object v1, v0, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    .line 19
    iput-object v1, v0, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    .line 20
    iput-object v1, v0, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    .line 21
    iput-object v1, v0, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    .line 22
    invoke-static {v0}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    return-void
.end method
