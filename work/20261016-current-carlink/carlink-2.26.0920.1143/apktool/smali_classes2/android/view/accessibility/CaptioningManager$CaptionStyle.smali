.class public final Landroid/view/accessibility/CaptioningManager$CaptionStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/CaptioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CaptionStyle"
.end annotation


# static fields
.field private static final BLACK_ON_WHITE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final COLOR_NONE_OPAQUE:I = 0xff

.field public static final COLOR_UNSPECIFIED:I = 0xffffff

.field public static final DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public static final EDGE_TYPE_DEPRESSED:I = 0x4

.field public static final EDGE_TYPE_DROP_SHADOW:I = 0x2

.field public static final EDGE_TYPE_NONE:I = 0x0

.field public static final EDGE_TYPE_OUTLINE:I = 0x1

.field public static final EDGE_TYPE_RAISED:I = 0x3

.field public static final EDGE_TYPE_UNSPECIFIED:I = -0x1

.field public static final PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public static final PRESET_CUSTOM:I = -0x1

.field private static final UNSPECIFIED:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final YELLOW_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final YELLOW_ON_BLUE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;


# instance fields
.field public final backgroundColor:I

.field public final edgeColor:I

.field public final edgeType:I

.field public final foregroundColor:I

.field private final mHasBackgroundColor:Z

.field private final mHasEdgeColor:Z

.field private final mHasEdgeType:Z

.field private final mHasForegroundColor:Z

.field private final mHasWindowColor:Z

.field private mParsedTypeface:Landroid/graphics/Typeface;

.field public final mRawTypeface:Ljava/lang/String;

.field public final windowColor:I


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/high16 v2, -0x1000000

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/high16 v4, -0x1000000

    .line 8
    .line 9
    const/16 v5, 0xff

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v0, v7

    .line 13
    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 17
    .line 18
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 19
    .line 20
    const/high16 v9, -0x1000000

    .line 21
    .line 22
    const/4 v10, -0x1

    .line 23
    const/4 v11, 0x0

    .line 24
    const/high16 v12, -0x1000000

    .line 25
    .line 26
    const/16 v13, 0xff

    .line 27
    .line 28
    const/4 v14, 0x0

    .line 29
    move-object v8, v0

    .line 30
    invoke-direct/range {v8 .. v14}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->BLACK_ON_WHITE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 34
    .line 35
    new-instance v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 36
    .line 37
    const/16 v16, -0x100

    .line 38
    .line 39
    const/high16 v17, -0x1000000

    .line 40
    .line 41
    const/16 v18, 0x0

    .line 42
    .line 43
    const/high16 v19, -0x1000000

    .line 44
    .line 45
    const/16 v20, 0xff

    .line 46
    .line 47
    const/16 v21, 0x0

    .line 48
    .line 49
    move-object v15, v1

    .line 50
    invoke-direct/range {v15 .. v21}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sput-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 54
    .line 55
    new-instance v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 56
    .line 57
    const/16 v9, -0x100

    .line 58
    .line 59
    const v10, -0xffff01

    .line 60
    .line 61
    .line 62
    move-object v8, v2

    .line 63
    invoke-direct/range {v8 .. v14}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    sput-object v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLUE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 67
    .line 68
    new-instance v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 69
    .line 70
    const v16, 0xffffff

    .line 71
    .line 72
    .line 73
    const v17, 0xffffff

    .line 74
    .line 75
    .line 76
    const/16 v18, -0x1

    .line 77
    .line 78
    const v19, 0xffffff

    .line 79
    .line 80
    .line 81
    const v20, 0xffffff

    .line 82
    .line 83
    .line 84
    move-object v15, v3

    .line 85
    invoke-direct/range {v15 .. v21}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    sput-object v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->UNSPECIFIED:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 89
    .line 90
    const/4 v4, 0x5

    .line 91
    new-array v4, v4, [Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 92
    .line 93
    const/4 v5, 0x0

    .line 94
    aput-object v7, v4, v5

    .line 95
    .line 96
    const/4 v5, 0x1

    .line 97
    aput-object v0, v4, v5

    .line 98
    .line 99
    const/4 v0, 0x2

    .line 100
    aput-object v1, v4, v0

    .line 101
    .line 102
    const/4 v0, 0x3

    .line 103
    aput-object v2, v4, v0

    .line 104
    .line 105
    const/4 v0, 0x4

    .line 106
    aput-object v3, v4, v0

    .line 107
    .line 108
    sput-object v4, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 109
    .line 110
    sput-object v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 111
    .line 112
    sput-object v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 113
    .line 114
    return-void
.end method

.method private constructor <init>(IIIIILjava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasForegroundColor:Z

    .line 9
    .line 10
    invoke-static {p2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput-boolean v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasBackgroundColor:Z

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, -0x1

    .line 18
    if-eq p3, v3, :cond_0

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v4, v2

    .line 23
    :goto_0
    iput-boolean v4, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeType:Z

    .line 24
    .line 25
    invoke-static {p4}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    iput-boolean v5, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeColor:Z

    .line 30
    .line 31
    invoke-static {p5}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    iput-boolean v6, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasWindowColor:Z

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move p1, v3

    .line 41
    :goto_1
    iput p1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .line 42
    .line 43
    const/high16 p1, -0x1000000

    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move p2, p1

    .line 49
    :goto_2
    iput p2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 50
    .line 51
    if-eqz v4, :cond_3

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    move p3, v2

    .line 55
    :goto_3
    iput p3, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    .line 56
    .line 57
    if-eqz v5, :cond_4

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_4
    move p4, p1

    .line 61
    :goto_4
    iput p4, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 62
    .line 63
    if-eqz v6, :cond_5

    .line 64
    .line 65
    goto :goto_5

    .line 66
    :cond_5
    const/16 p5, 0xff

    .line 67
    .line 68
    :goto_5
    iput p5, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    .line 69
    .line 70
    iput-object p6, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 71
    .line 72
    return-void
.end method

.method public static getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 10

    .line 1
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 2
    .line 3
    iget v1, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .line 4
    .line 5
    const-string v2, "accessibility_captioning_foreground_color"

    .line 6
    .line 7
    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    const-string v1, "accessibility_captioning_background_color"

    .line 12
    .line 13
    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 14
    .line 15
    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    const-string v1, "accessibility_captioning_edge_type"

    .line 20
    .line 21
    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    .line 22
    .line 23
    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    const-string v1, "accessibility_captioning_edge_color"

    .line 28
    .line 29
    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 30
    .line 31
    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    const-string v1, "accessibility_captioning_window_color"

    .line 36
    .line 37
    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    .line 38
    .line 39
    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    const-string v1, "accessibility_captioning_typeface"

    .line 44
    .line 45
    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-nez p0, :cond_0

    .line 50
    .line 51
    iget-object p0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 52
    .line 53
    :cond_0
    move-object v9, p0

    .line 54
    new-instance p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 55
    .line 56
    move-object v3, p0

    .line 57
    invoke-direct/range {v3 .. v9}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object p0
.end method

.method public static hasColor(I)Z
    .locals 1

    ushr-int/lit8 v0, p0, 0x18

    if-nez v0, :cond_1

    const v0, 0xffff00

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public applyStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .line 11
    .line 12
    :goto_0
    move v2, v0

    .line 13
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 23
    .line 24
    :goto_1
    move v3, v0

    .line 25
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    .line 35
    .line 36
    :goto_2
    move v4, v0

    .line 37
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_3
    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 47
    .line 48
    :goto_3
    move v5, v0

    .line 49
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_4
    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    .line 59
    .line 60
    :goto_4
    move v6, v0

    .line 61
    iget-object p1, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 62
    .line 63
    if-eqz p1, :cond_5

    .line 64
    .line 65
    goto :goto_5

    .line 66
    :cond_5
    iget-object p1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 67
    .line 68
    :goto_5
    move-object v7, p1

    .line 69
    new-instance p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 70
    .line 71
    move-object v1, p1

    .line 72
    invoke-direct/range {v1 .. v7}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-object p1
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mParsedTypeface:Landroid/graphics/Typeface;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mParsedTypeface:Landroid/graphics/Typeface;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mParsedTypeface:Landroid/graphics/Typeface;

    .line 23
    .line 24
    return-object v0
.end method

.method public hasBackgroundColor()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasBackgroundColor:Z

    return v0
.end method

.method public hasEdgeColor()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeColor:Z

    return v0
.end method

.method public hasEdgeType()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeType:Z

    return v0
.end method

.method public hasForegroundColor()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasForegroundColor:Z

    return v0
.end method

.method public hasWindowColor()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasWindowColor:Z

    return v0
.end method
