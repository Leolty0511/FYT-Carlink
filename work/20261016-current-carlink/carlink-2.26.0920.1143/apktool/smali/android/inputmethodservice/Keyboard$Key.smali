.class public Landroid/inputmethodservice/Keyboard$Key;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field private static final KEY_STATE_NORMAL:[I

.field private static final KEY_STATE_NORMAL_OFF:[I

.field private static final KEY_STATE_NORMAL_ON:[I

.field private static final KEY_STATE_PRESSED:[I

.field private static final KEY_STATE_PRESSED_OFF:[I

.field private static final KEY_STATE_PRESSED_ON:[I


# instance fields
.field public codes:[I

.field public edgeFlags:I

.field public gap:I

.field public height:I

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconPreview:Landroid/graphics/drawable/Drawable;

.field private keyboard:Landroid/inputmethodservice/Keyboard;

.field public label:Ljava/lang/CharSequence;

.field public modifier:Z

.field public on:Z

.field public popupCharacters:Ljava/lang/CharSequence;

.field public popupResId:I

.field public pressed:Z

.field public repeatable:Z

.field public sticky:Z

.field public text:Ljava/lang/CharSequence;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    new-array v1, v1, [I

    .line 11
    .line 12
    fill-array-data v1, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v1, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v2, v1, [I

    .line 19
    .line 20
    const v3, 0x101009f

    .line 21
    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    aput v3, v2, v4

    .line 25
    .line 26
    sput-object v2, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    .line 27
    .line 28
    new-array v0, v0, [I

    .line 29
    .line 30
    fill-array-data v0, :array_2

    .line 31
    .line 32
    .line 33
    sput-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    .line 34
    .line 35
    new-array v0, v4, [I

    .line 36
    .line 37
    sput-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL:[I

    .line 38
    .line 39
    new-array v0, v1, [I

    .line 40
    .line 41
    const v1, 0x10100a7

    .line 42
    .line 43
    .line 44
    aput v1, v0, v4

    .line 45
    .line 46
    sput-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED:[I

    .line 47
    .line 48
    return-void

    .line 49
    :array_0
    .array-data 4
        0x101009f
        0x10100a0
    .end array-data

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    :array_1
    .array-data 4
        0x10100a7
        0x101009f
        0x10100a0
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :array_2
    .array-data 4
        0x10100a7
        0x101009f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 4

    .line 7
    invoke-direct {p0, p2}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/inputmethodservice/Keyboard$Row;)V

    .line 8
    iput p3, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 9
    iput p4, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 10
    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    sget-object p4, Lcom/android/internal/R$styleable;->Keyboard:[I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 11
    iget-object p4, p0, Landroid/inputmethodservice/Keyboard$Key;->keyboard:Landroid/inputmethodservice/Keyboard;

    .line 12
    invoke-static {p4}, Landroid/inputmethodservice/Keyboard;->access$000(Landroid/inputmethodservice/Keyboard;)I

    move-result p4

    iget v0, p2, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    const/4 v1, 0x0

    .line 13
    invoke-static {p3, v1, p4, v0}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p4

    iput p4, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 14
    iget-object p4, p0, Landroid/inputmethodservice/Keyboard$Key;->keyboard:Landroid/inputmethodservice/Keyboard;

    .line 15
    invoke-static {p4}, Landroid/inputmethodservice/Keyboard;->access$200(Landroid/inputmethodservice/Keyboard;)I

    move-result p4

    iget v0, p2, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    const/4 v2, 0x1

    .line 16
    invoke-static {p3, v2, p4, v0}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p4

    iput p4, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    .line 17
    iget-object p4, p0, Landroid/inputmethodservice/Keyboard$Key;->keyboard:Landroid/inputmethodservice/Keyboard;

    .line 18
    invoke-static {p4}, Landroid/inputmethodservice/Keyboard;->access$000(Landroid/inputmethodservice/Keyboard;)I

    move-result p4

    iget v0, p2, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    const/4 v3, 0x2

    .line 19
    invoke-static {p3, v3, p4, v0}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result p4

    iput p4, p0, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    .line 20
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    sget-object p4, Lcom/android/internal/R$styleable;->Keyboard_Key:[I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 22
    iget p3, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget p4, p0, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr p3, p4

    iput p3, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 23
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    .line 24
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 25
    iget p4, p3, Landroid/util/TypedValue;->type:I

    const/16 p5, 0x10

    const/4 v0, 0x3

    if-eq p4, p5, :cond_1

    const/16 p5, 0x11

    if-ne p4, p5, :cond_0

    goto :goto_0

    :cond_0
    if-ne p4, v0, :cond_2

    .line 26
    iget-object p3, p3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/inputmethodservice/Keyboard$Key;->parseCSV(Ljava/lang/String;)[I

    move-result-object p3

    iput-object p3, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    goto :goto_1

    :cond_1
    :goto_0
    new-array p4, v2, [I

    .line 27
    iget p3, p3, Landroid/util/TypedValue;->data:I

    aput p3, p4, v1

    iput-object p4, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    :cond_2
    :goto_1
    const/4 p3, 0x7

    .line 28
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_3

    .line 29
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    iget-object p5, p0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 30
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p5

    .line 31
    invoke-virtual {p3, v1, v1, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 32
    :cond_3
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 33
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    const/4 p3, 0x6

    .line 34
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    const/4 p3, 0x4

    .line 35
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/inputmethodservice/Keyboard$Key;->modifier:Z

    const/4 p3, 0x5

    .line 36
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroid/inputmethodservice/Keyboard$Key;->sticky:Z

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 38
    iget p2, p2, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    or-int/2addr p2, p3

    iput p2, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    const/16 p2, 0xa

    .line 39
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_4

    .line 40
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    iget-object p4, p0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p4

    invoke-virtual {p2, v1, v1, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    const/16 p2, 0x9

    .line 41
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/16 p2, 0x8

    .line 42
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 43
    iget-object p2, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    if-nez p2, :cond_5

    iget-object p2, p0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    new-array p2, v2, [I

    .line 44
    iget-object p3, p0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {p3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    aput p3, p2, v1

    iput-object p2, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 45
    :cond_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/inputmethodservice/Keyboard$Row;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/inputmethodservice/Keyboard$Row;->access$600(Landroid/inputmethodservice/Keyboard$Row;)Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard$Key;->keyboard:Landroid/inputmethodservice/Keyboard;

    .line 3
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    iput v0, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    .line 4
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    iput v0, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 5
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    iput v0, p0, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    .line 6
    iget p1, p1, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    iput p1, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    return-void
.end method


# virtual methods
.method public getCurrentDrawableState()[I
    .locals 2

    .line 1
    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL:[I

    .line 2
    .line 3
    iget-boolean v1, p0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-boolean v1, p0, Landroid/inputmethodservice/Keyboard$Key;->sticky:Z

    .line 18
    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    iget-boolean v1, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    .line 32
    .line 33
    if-eqz v1, :cond_4

    .line 34
    .line 35
    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED:[I

    .line 36
    .line 37
    :cond_4
    :goto_0
    return-object v0
.end method

.method public isInside(II)Z
    .locals 7

    .line 1
    iget v0, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    move v1, v3

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v2

    .line 12
    :goto_0
    and-int/lit8 v4, v0, 0x2

    .line 13
    .line 14
    if-lez v4, :cond_1

    .line 15
    .line 16
    move v4, v3

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move v4, v2

    .line 19
    :goto_1
    and-int/lit8 v5, v0, 0x4

    .line 20
    .line 21
    if-lez v5, :cond_2

    .line 22
    .line 23
    move v5, v3

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move v5, v2

    .line 26
    :goto_2
    and-int/lit8 v0, v0, 0x8

    .line 27
    .line 28
    if-lez v0, :cond_3

    .line 29
    .line 30
    move v0, v3

    .line 31
    goto :goto_3

    .line 32
    :cond_3
    move v0, v2

    .line 33
    :goto_3
    iget v6, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 34
    .line 35
    if-ge p1, v6, :cond_4

    .line 36
    .line 37
    if-eqz v1, :cond_7

    .line 38
    .line 39
    iget v1, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 40
    .line 41
    add-int/2addr v1, v6

    .line 42
    if-gt p1, v1, :cond_7

    .line 43
    .line 44
    :cond_4
    iget v1, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 45
    .line 46
    add-int/2addr v1, v6

    .line 47
    if-lt p1, v1, :cond_5

    .line 48
    .line 49
    if-eqz v4, :cond_7

    .line 50
    .line 51
    if-lt p1, v6, :cond_7

    .line 52
    .line 53
    :cond_5
    iget p1, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 54
    .line 55
    if-ge p2, p1, :cond_6

    .line 56
    .line 57
    if-eqz v5, :cond_7

    .line 58
    .line 59
    iget v1, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    .line 60
    .line 61
    add-int/2addr v1, p1

    .line 62
    if-gt p2, v1, :cond_7

    .line 63
    .line 64
    :cond_6
    iget v1, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    .line 65
    .line 66
    add-int/2addr v1, p1

    .line 67
    if-lt p2, v1, :cond_8

    .line 68
    .line 69
    if-eqz v0, :cond_7

    .line 70
    .line 71
    if-lt p2, p1, :cond_7

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_7
    return v2

    .line 75
    :cond_8
    :goto_4
    return v3
.end method

.method public onPressed()V
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    return-void
.end method

.method public onReleased(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    .line 6
    .line 7
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->sticky:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-boolean p1, p0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 14
    .line 15
    xor-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    iput-boolean p1, p0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public parseCSV(Ljava/lang/String;)[I
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ","

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    move v4, v0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    add-int/2addr v3, v0

    .line 14
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-lez v3, :cond_1

    .line 19
    .line 20
    add-int/lit8 v4, v4, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v4, v2

    .line 24
    :cond_1
    new-array v0, v4, [I

    .line 25
    .line 26
    new-instance v3, Ljava/util/StringTokenizer;

    .line 27
    .line 28
    invoke-direct {v3, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    add-int/lit8 v1, v2, 0x1

    .line 38
    .line 39
    :try_start_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    aput v4, v0, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :catch_0
    const-string v2, "Error parsing keycodes "

    .line 51
    .line 52
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-string v4, "Keyboard"

    .line 57
    .line 58
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :goto_2
    move v2, v1

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    return-object v0
.end method

.method public squaredDistanceFrom(II)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 2
    .line 3
    iget v1, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 4
    .line 5
    div-int/lit8 v1, v1, 0x2

    .line 6
    .line 7
    add-int/2addr v1, v0

    .line 8
    sub-int/2addr v1, p1

    .line 9
    iget p1, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 10
    .line 11
    iget v0, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    .line 12
    .line 13
    div-int/lit8 v0, v0, 0x2

    .line 14
    .line 15
    add-int/2addr v0, p1

    .line 16
    sub-int/2addr v0, p2

    .line 17
    mul-int/2addr v1, v1

    .line 18
    mul-int/2addr v0, v0

    .line 19
    add-int/2addr v0, v1

    .line 20
    return v0
.end method
