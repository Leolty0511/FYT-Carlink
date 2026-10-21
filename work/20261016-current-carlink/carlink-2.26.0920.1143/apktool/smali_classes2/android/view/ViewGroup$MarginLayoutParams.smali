.class public Landroid/view/ViewGroup$MarginLayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarginLayoutParams"
.end annotation


# static fields
.field public static final DEFAULT_MARGIN_RELATIVE:I = -0x80000000

.field private static final DEFAULT_MARGIN_RESOLVED:I = 0x0

.field private static final LAYOUT_DIRECTION_MASK:I = 0x3

.field private static final LEFT_MARGIN_UNDEFINED_MASK:I = 0x4

.field private static final NEED_RESOLUTION_MASK:I = 0x20

.field private static final RIGHT_MARGIN_UNDEFINED_MASK:I = 0x8

.field private static final RTL_COMPATIBILITY_MODE_MASK:I = 0x10

.field private static final UNDEFINED_MARGIN:I = -0x80000000


# instance fields
.field public bottomMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private endMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public leftMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field mMarginFlags:B
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LAYOUT_DIRECTION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "LEFT_MARGIN_UNDEFINED_MASK"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "RIGHT_MARGIN_UNDEFINED_MASK"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "RTL_COMPATIBILITY_MODE_MASK"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "NEED_RESOLUTION_MASK"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field public rightMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private startMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public topMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/high16 p1, -0x80000000

    .line 35
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 36
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 37
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    and-int/lit8 p1, p1, -0x21

    int-to-byte p1, p1

    and-int/lit8 p1, p1, -0x11

    int-to-byte p1, p1

    .line 38
    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 3
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 4
    sget-object v1, Lcom/android/internal/R$styleable;->ViewGroup_MarginLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, p2, v2, v1}, Landroid/view/ViewGroup$LayoutParams;->setBaseAttributes(Landroid/content/res/TypedArray;II)V

    const/4 v1, 0x2

    const/4 v3, -0x1

    .line 6
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-ltz v1, :cond_0

    .line 7
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 8
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 9
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 10
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_2

    :cond_0
    const/16 v1, 0x9

    .line 11
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    const/16 v4, 0xa

    .line 12
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x4

    if-ltz v1, :cond_1

    .line 13
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 14
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    .line 15
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v1, v0, :cond_2

    .line 16
    iget-byte v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/2addr v1, v5

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 17
    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_2
    const/4 v1, 0x5

    .line 18
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ne v1, v0, :cond_3

    .line 19
    iget-byte v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/2addr v1, v4

    int-to-byte v1, v1

    iput-byte v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 20
    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_3
    :goto_0
    const/4 v1, 0x7

    .line 21
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 22
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    if-ltz v3, :cond_4

    .line 23
    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 24
    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    .line 25
    :cond_4
    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v0, 0x6

    .line 26
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 27
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 29
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x11

    if-lt p1, v1, :cond_6

    if-nez v0, :cond_7

    .line 31
    :cond_6
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 32
    :cond_7
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/2addr p1, v2

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 33
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p1, -0x80000000

    .line 52
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 53
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 54
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    and-int/lit8 p1, p1, -0x21

    int-to-byte p1, p1

    and-int/lit8 p1, p1, -0x11

    int-to-byte p1, p1

    .line 55
    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    const/high16 v0, -0x80000000

    .line 40
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 41
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 42
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 43
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 44
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 45
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 46
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 47
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 48
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 49
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 50
    iget-byte p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    return-void
.end method

.method private doResolveMargins()V
    .locals 5

    .line 1
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x10

    .line 4
    .line 5
    const/high16 v2, -0x80000000

    .line 6
    .line 7
    const/16 v3, 0x10

    .line 8
    .line 9
    if-ne v1, v3, :cond_1

    .line 10
    .line 11
    and-int/lit8 v1, v0, 0x4

    .line 12
    .line 13
    const/4 v3, 0x4

    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 17
    .line 18
    if-le v1, v2, :cond_0

    .line 19
    .line 20
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 21
    .line 22
    :cond_0
    and-int/lit8 v1, v0, 0x8

    .line 23
    .line 24
    const/16 v3, 0x8

    .line 25
    .line 26
    if-ne v1, v3, :cond_7

    .line 27
    .line 28
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 29
    .line 30
    if-le v1, v2, :cond_7

    .line 31
    .line 32
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    and-int/lit8 v1, v0, 0x3

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    const/4 v4, 0x0

    .line 39
    if-eq v1, v3, :cond_4

    .line 40
    .line 41
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 42
    .line 43
    if-le v1, v2, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move v1, v4

    .line 47
    :goto_0
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 48
    .line 49
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 50
    .line 51
    if-le v1, v2, :cond_3

    .line 52
    .line 53
    move v4, v1

    .line 54
    :cond_3
    iput v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 58
    .line 59
    if-le v1, v2, :cond_5

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_5
    move v1, v4

    .line 63
    :goto_1
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 64
    .line 65
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 66
    .line 67
    if-le v1, v2, :cond_6

    .line 68
    .line 69
    move v4, v1

    .line 70
    :cond_6
    iput v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 71
    .line 72
    :cond_7
    :goto_2
    and-int/lit8 v0, v0, -0x21

    .line 73
    .line 74
    int-to-byte v0, v0

    .line 75
    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public final copyMarginsFrom(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2
    .line 3
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 4
    .line 5
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 6
    .line 7
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8
    .line 9
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 10
    .line 11
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 12
    .line 13
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 14
    .line 15
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 16
    .line 17
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 18
    .line 19
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 20
    .line 21
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 22
    .line 23
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 24
    .line 25
    iget-byte p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 26
    .line 27
    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 28
    .line 29
    return-void
.end method

.method public encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "leftMargin"

    .line 5
    .line 6
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "topMargin"

    .line 12
    .line 13
    .line 14
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string v0, "rightMargin"

    .line 20
    .line 21
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    const-string v0, "bottomMargin"

    .line 27
    .line 28
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    const-string/jumbo v0, "startMargin"

    .line 34
    .line 35
    .line 36
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    const-string v0, "endMargin"

    .line 42
    .line 43
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 44
    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public getLayoutDirection()I
    .locals 1

    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getMarginEnd()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 9
    .line 10
    const/16 v1, 0x20

    .line 11
    .line 12
    and-int/2addr v0, v1

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->doResolveMargins()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 19
    .line 20
    and-int/lit8 v0, v0, 0x3

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-eq v0, v1, :cond_2

    .line 24
    .line 25
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 26
    .line 27
    return v0

    .line 28
    :cond_2
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 29
    .line 30
    return v0
.end method

.method public getMarginStart()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 9
    .line 10
    const/16 v1, 0x20

    .line 11
    .line 12
    and-int/2addr v0, v1

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->doResolveMargins()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 19
    .line 20
    and-int/lit8 v0, v0, 0x3

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-eq v0, v1, :cond_2

    .line 24
    .line 25
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 26
    .line 27
    return v0

    .line 28
    :cond_2
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 29
    .line 30
    return v0
.end method

.method public isLayoutRtl()Z
    .locals 2

    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMarginRelative()Z
    .locals 2

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    iget-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5
    .line 6
    invoke-static {v2}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 18
    .line 19
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iget v4, v2, Landroid/graphics/Insets;->left:I

    .line 24
    .line 25
    add-int v6, v3, v4

    .line 26
    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iget v4, v2, Landroid/graphics/Insets;->top:I

    .line 32
    .line 33
    add-int v7, v3, v4

    .line 34
    .line 35
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    iget v4, v2, Landroid/graphics/Insets;->right:I

    .line 40
    .line 41
    sub-int v8, v3, v4

    .line 42
    .line 43
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    .line 48
    .line 49
    sub-int v9, v1, v2

    .line 50
    .line 51
    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 52
    .line 53
    iget v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 54
    .line 55
    iget v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 56
    .line 57
    iget v13, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 58
    .line 59
    move-object/from16 v5, p2

    .line 60
    .line 61
    move-object/from16 v14, p3

    .line 62
    .line 63
    invoke-static/range {v5 .. v14}, Landroid/view/ViewGroup;->access$500(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setLayoutDirection(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 11
    .line 12
    const/16 v0, 0x20

    .line 13
    .line 14
    and-int/2addr p1, v0

    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->doResolveMargins()V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8
    .line 9
    and-int/lit8 v1, v0, 0x3

    .line 10
    .line 11
    if-eq p1, v1, :cond_2

    .line 12
    .line 13
    and-int/lit8 v0, v0, -0x4

    .line 14
    .line 15
    int-to-byte v0, v0

    .line 16
    and-int/lit8 p1, p1, 0x3

    .line 17
    .line 18
    or-int/2addr p1, v0

    .line 19
    int-to-byte p1, p1

    .line 20
    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 29
    .line 30
    or-int/lit8 p1, p1, 0x20

    .line 31
    .line 32
    int-to-byte p1, p1

    .line 33
    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 37
    .line 38
    and-int/lit8 p1, p1, -0x21

    .line 39
    .line 40
    int-to-byte p1, p1

    .line 41
    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 42
    .line 43
    :cond_2
    :goto_0
    return-void
.end method

.method public setMarginEnd(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 2
    .line 3
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x20

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 9
    .line 10
    return-void
.end method

.method public setMarginStart(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 2
    .line 3
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x20

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 9
    .line 10
    return-void
.end method

.method public setMargins(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2
    .line 3
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 4
    .line 5
    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 6
    .line 7
    iput p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 8
    .line 9
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 10
    .line 11
    and-int/lit8 p1, p1, -0x5

    .line 12
    .line 13
    int-to-byte p1, p1

    .line 14
    and-int/lit8 p1, p1, -0x9

    .line 15
    .line 16
    int-to-byte p1, p1

    .line 17
    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 26
    .line 27
    or-int/lit8 p1, p1, 0x20

    .line 28
    .line 29
    int-to-byte p1, p1

    .line 30
    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 34
    .line 35
    and-int/lit8 p1, p1, -0x21

    .line 36
    .line 37
    int-to-byte p1, p1

    .line 38
    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public setMarginsRelative(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 2
    .line 3
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 4
    .line 5
    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 6
    .line 7
    iput p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 8
    .line 9
    iget-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x20

    .line 12
    .line 13
    int-to-byte p1, p1

    .line 14
    iput-byte p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 15
    .line 16
    return-void
.end method
