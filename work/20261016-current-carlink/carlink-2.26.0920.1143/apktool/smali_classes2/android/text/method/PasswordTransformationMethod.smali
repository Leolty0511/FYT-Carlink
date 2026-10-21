.class public Landroid/text/method/PasswordTransformationMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/method/TransformationMethod;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/PasswordTransformationMethod$ViewReference;,
        Landroid/text/method/PasswordTransformationMethod$Visible;,
        Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;
    }
.end annotation


# static fields
.field private static DOT:C = '\u2022'

.field private static sInstance:Landroid/text/method/PasswordTransformationMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()C
    .locals 1

    sget-char v0, Landroid/text/method/PasswordTransformationMethod;->DOT:C

    return v0
.end method

.method public static getInstance()Landroid/text/method/PasswordTransformationMethod;
    .locals 1

    .line 1
    sget-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Landroid/text/method/PasswordTransformationMethod;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    .line 9
    .line 10
    .line 11
    sput-object v0, Landroid/text/method/PasswordTransformationMethod;->sInstance:Landroid/text/method/PasswordTransformationMethod;

    .line 12
    .line 13
    return-object v0
.end method

.method private static removeVisibleSpans(Landroid/text/Spannable;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-class v1, Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, [Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 13
    .line 14
    :goto_0
    array-length v1, v0

    .line 15
    if-ge v2, v1, :cond_0

    .line 16
    .line 17
    aget-object v1, v0, v2

    .line 18
    .line 19
    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 5

    .line 1
    instance-of v0, p1, Landroid/text/Spannable;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroid/text/Spannable;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-class v2, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, [Landroid/text/method/PasswordTransformationMethod$ViewReference;

    .line 20
    .line 21
    move v2, v3

    .line 22
    :goto_0
    array-length v4, v1

    .line 23
    if-ge v2, v4, :cond_0

    .line 24
    .line 25
    aget-object v4, v1, v2

    .line 26
    .line 27
    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {v0}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    .line 37
    .line 38
    invoke-direct {v1, p2}, Landroid/text/method/PasswordTransformationMethod$ViewReference;-><init>(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    const/16 p2, 0x22

    .line 42
    .line 43
    invoke-interface {v0, v1, v3, v3, p2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 44
    .line 45
    .line 46
    :cond_1
    new-instance p2, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;

    .line 47
    .line 48
    invoke-direct {p2, p1}, Landroid/text/method/PasswordTransformationMethod$PasswordCharSequence;-><init>(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    return-object p2
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    instance-of p1, p2, Landroid/text/Spannable;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    check-cast p2, Landroid/text/Spannable;

    .line 8
    .line 9
    invoke-static {p2}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .line 1
    instance-of p3, p1, Landroid/text/Spannable;

    .line 2
    .line 3
    if-eqz p3, :cond_3

    .line 4
    .line 5
    move-object p3, p1

    .line 6
    check-cast p3, Landroid/text/Spannable;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const-class v0, Landroid/text/method/PasswordTransformationMethod$ViewReference;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-interface {p3, v1, p1, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, [Landroid/text/method/PasswordTransformationMethod$ViewReference;

    .line 20
    .line 21
    array-length v0, p1

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    if-nez v0, :cond_1

    .line 27
    .line 28
    array-length v2, p1

    .line 29
    if-ge v1, v2, :cond_1

    .line 30
    .line 31
    aget-object v0, p1, v1

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/view/View;

    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    if-nez v0, :cond_2

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    and-int/lit8 p1, p1, 0x8

    .line 58
    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    if-lez p4, :cond_3

    .line 62
    .line 63
    invoke-static {p3}, Landroid/text/method/PasswordTransformationMethod;->removeVisibleSpans(Landroid/text/Spannable;)V

    .line 64
    .line 65
    .line 66
    const/4 p1, 0x1

    .line 67
    if-ne p4, p1, :cond_3

    .line 68
    .line 69
    new-instance p1, Landroid/text/method/PasswordTransformationMethod$Visible;

    .line 70
    .line 71
    invoke-direct {p1, p3, p0}, Landroid/text/method/PasswordTransformationMethod$Visible;-><init>(Landroid/text/Spannable;Landroid/text/method/PasswordTransformationMethod;)V

    .line 72
    .line 73
    .line 74
    add-int/2addr p4, p2

    .line 75
    const/16 v0, 0x21

    .line 76
    .line 77
    invoke-interface {p3, p1, p2, p4, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 78
    .line 79
    .line 80
    :cond_3
    return-void
.end method
