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

    .line 1
    const-string/jumbo v0, "tahoma"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "verdana"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "sans-serif"

    .line 8
    .line 9
    .line 10
    const-string v3, "arial"

    .line 11
    .line 12
    const-string/jumbo v4, "helvetica"

    .line 13
    .line 14
    .line 15
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Landroid/renderscript/Font;->sSansNames:[Ljava/lang/String;

    .line 20
    .line 21
    const-string/jumbo v1, "serif"

    .line 22
    .line 23
    .line 24
    const-string/jumbo v2, "times"

    .line 25
    .line 26
    .line 27
    const-string/jumbo v3, "times new roman"

    .line 28
    .line 29
    .line 30
    const-string/jumbo v4, "palatino"

    .line 31
    .line 32
    .line 33
    const-string v5, "georgia"

    .line 34
    .line 35
    const-string v6, "baskerville"

    .line 36
    .line 37
    const-string/jumbo v7, "goudy"

    .line 38
    .line 39
    .line 40
    const-string v8, "fantasy"

    .line 41
    .line 42
    const-string v9, "cursive"

    .line 43
    .line 44
    const-string v10, "ITC Stone Serif"

    .line 45
    .line 46
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Landroid/renderscript/Font;->sSerifNames:[Ljava/lang/String;

    .line 51
    .line 52
    const-string v0, "courier new"

    .line 53
    .line 54
    const-string/jumbo v1, "monaco"

    .line 55
    .line 56
    .line 57
    const-string/jumbo v2, "monospace"

    .line 58
    .line 59
    .line 60
    const-string v3, "courier"

    .line 61
    .line 62
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sput-object v0, Landroid/renderscript/Font;->sMonoNames:[Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {}, Landroid/renderscript/Font;->initFontFamilyMap()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    .line 5
    .line 6
    const-string p2, "destroy"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    sget-object v2, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    .line 8
    .line 9
    aget-object v1, v1, v0

    .line 10
    .line 11
    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;Landroid/renderscript/Font$Style;F)Landroid/renderscript/Font;
    .locals 1

    .line 1
    invoke-static {p2, p3}, Landroid/renderscript/Font;->getFontFileName(Ljava/lang/String;Landroid/renderscript/Font$Style;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    const-string v0, "/fonts/"

    .line 14
    .line 15
    invoke-static {p3, v0, p2}, Landroid/app/m;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p0, p1, p2, p4}, Landroid/renderscript/Font;->createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static createFromAsset(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 13
    .line 14
    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/renderscript/RenderScript;->nFontCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;FI)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmp-long p1, v0, v2

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    new-instance p1, Landroid/renderscript/Font;

    .line 25
    .line 26
    invoke-direct {p1, v0, v1, p0}, Landroid/renderscript/Font;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 31
    .line 32
    const-string p1, "Unable to create font from asset "

    .line 33
    .line 34
    invoke-static {p1, p2}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public static createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/io/File;F)Landroid/renderscript/Font;
    .locals 0

    .line 12
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Landroid/renderscript/Font;->createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;

    move-result-object p0

    return-object p0
.end method

.method public static createFromFile(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;Ljava/lang/String;F)Landroid/renderscript/Font;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 3
    invoke-virtual {p0, p2, p3, p1}, Landroid/renderscript/RenderScript;->nFontCreateFromFile(Ljava/lang/String;FI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Landroid/renderscript/Font;

    invoke-direct {p1, v0, v1, p0}, Landroid/renderscript/Font;-><init>(JLandroid/renderscript/RenderScript;)V

    return-object p1

    .line 5
    :cond_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    const-string p1, "Unable to create font from file "

    .line 6
    invoke-static {p1, p2}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFromResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;IF)Landroid/renderscript/Font;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "R."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget v5, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 31
    .line 32
    instance-of p1, v0, Landroid/content/res/AssetManager$AssetInputStream;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    .line 39
    .line 40
    .line 41
    move-result-wide v6

    .line 42
    move-object v2, p0

    .line 43
    move v4, p3

    .line 44
    invoke-virtual/range {v2 .. v7}, Landroid/renderscript/RenderScript;->nFontCreateFromAssetStream(Ljava/lang/String;FIJ)J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    const-wide/16 v2, 0x0

    .line 49
    .line 50
    cmp-long p1, v0, v2

    .line 51
    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    new-instance p1, Landroid/renderscript/Font;

    .line 55
    .line 56
    invoke-direct {p1, v0, v1, p0}, Landroid/renderscript/Font;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 57
    .line 58
    .line 59
    return-object p1

    .line 60
    :cond_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 61
    .line 62
    const-string p1, "Unable to create font from resource "

    .line 63
    .line 64
    invoke-static {p1, p2}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0

    .line 72
    :cond_1
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 73
    .line 74
    const-string p1, "Unsupported asset stream created"

    .line 75
    .line 76
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0

    .line 80
    :catch_0
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 81
    .line 82
    const-string p1, "Unable to open resource "

    .line 83
    .line 84
    invoke-static {p1, p2}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p0
.end method

.method public static getFontFileName(Ljava/lang/String;Landroid/renderscript/Font$Style;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/renderscript/Font$FontFamily;

    .line 8
    .line 9
    if-eqz p0, :cond_4

    .line 10
    .line 11
    sget-object v0, Landroid/renderscript/Font$1;->$SwitchMap$android$renderscript$Font$Style:[I

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    aget p1, v0, p1

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    if-eq p1, v0, :cond_3

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    if-eq p1, v0, :cond_2

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    if-eq p1, v0, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    if-eq p1, v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p0, p0, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_1
    iget-object p0, p0, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_2
    iget-object p0, p0, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_3
    iget-object p0, p0, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_4
    :goto_0
    const-string p0, "DroidSans.ttf"

    .line 45
    .line 46
    return-object p0
.end method

.method private static initFontFamilyMap()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/renderscript/Font;->sFontFamilyMap:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Landroid/renderscript/Font$FontFamily;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font$1;)V

    .line 12
    .line 13
    .line 14
    sget-object v2, Landroid/renderscript/Font;->sSansNames:[Ljava/lang/String;

    .line 15
    .line 16
    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "Roboto-Regular.ttf"

    .line 19
    .line 20
    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "Roboto-Bold.ttf"

    .line 23
    .line 24
    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    .line 25
    .line 26
    const-string v2, "Roboto-Italic.ttf"

    .line 27
    .line 28
    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    .line 29
    .line 30
    const-string v2, "Roboto-BoldItalic.ttf"

    .line 31
    .line 32
    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Landroid/renderscript/Font$FontFamily;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font$1;)V

    .line 40
    .line 41
    .line 42
    sget-object v2, Landroid/renderscript/Font;->sSerifNames:[Ljava/lang/String;

    .line 43
    .line 44
    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    .line 45
    .line 46
    const-string v2, "NotoSerif-Regular.ttf"

    .line 47
    .line 48
    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    .line 49
    .line 50
    const-string v2, "NotoSerif-Bold.ttf"

    .line 51
    .line 52
    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    .line 53
    .line 54
    const-string v2, "NotoSerif-Italic.ttf"

    .line 55
    .line 56
    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    .line 57
    .line 58
    const-string v2, "NotoSerif-BoldItalic.ttf"

    .line 59
    .line 60
    iput-object v2, v0, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v0}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Landroid/renderscript/Font$FontFamily;

    .line 66
    .line 67
    invoke-direct {v0, v1}, Landroid/renderscript/Font$FontFamily;-><init>(Landroid/renderscript/Font$1;)V

    .line 68
    .line 69
    .line 70
    sget-object v1, Landroid/renderscript/Font;->sMonoNames:[Ljava/lang/String;

    .line 71
    .line 72
    iput-object v1, v0, Landroid/renderscript/Font$FontFamily;->mNames:[Ljava/lang/String;

    .line 73
    .line 74
    const-string v1, "DroidSansMono.ttf"

    .line 75
    .line 76
    iput-object v1, v0, Landroid/renderscript/Font$FontFamily;->mNormalFileName:Ljava/lang/String;

    .line 77
    .line 78
    iput-object v1, v0, Landroid/renderscript/Font$FontFamily;->mBoldFileName:Ljava/lang/String;

    .line 79
    .line 80
    iput-object v1, v0, Landroid/renderscript/Font$FontFamily;->mItalicFileName:Ljava/lang/String;

    .line 81
    .line 82
    iput-object v1, v0, Landroid/renderscript/Font$FontFamily;->mBoldItalicFileName:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v0}, Landroid/renderscript/Font;->addFamilyToMap(Landroid/renderscript/Font$FontFamily;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method
