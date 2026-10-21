.class public abstract Landroid/text/LoginFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/LoginFilter$PasswordFilterGMail;,
        Landroid/text/LoginFilter$UsernameFilterGeneric;,
        Landroid/text/LoginFilter$UsernameFilterGMail;
    }
.end annotation


# instance fields
.field private mAppendInvalid:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroid/text/LoginFilter;->mAppendInvalid:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Landroid/text/LoginFilter;->mAppendInvalid:Z

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/text/LoginFilter;->onStart()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    if-ge v1, p5, :cond_1

    .line 7
    .line 8
    invoke-interface {p4, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {p0, v2}, Landroid/text/LoginFilter;->isAllowed(C)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    .line 19
    .line 20
    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p5, 0x0

    .line 25
    move v1, p2

    .line 26
    :goto_1
    if-ge v1, p3, :cond_5

    .line 27
    .line 28
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {p0, v2}, Landroid/text/LoginFilter;->isAllowed(C)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_2
    iget-boolean v3, p0, Landroid/text/LoginFilter;->mAppendInvalid:Z

    .line 42
    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_3
    if-nez p5, :cond_4

    .line 49
    .line 50
    new-instance p5, Landroid/text/SpannableStringBuilder;

    .line 51
    .line 52
    invoke-direct {p5, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 53
    .line 54
    .line 55
    sub-int v0, v1, p2

    .line 56
    .line 57
    :cond_4
    add-int/lit8 v3, v0, 0x1

    .line 58
    .line 59
    invoke-virtual {p5, v0, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 60
    .line 61
    .line 62
    :goto_2
    invoke-virtual {p0, v2}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    .line 63
    .line 64
    .line 65
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_5
    :goto_4
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-ge p6, p1, :cond_7

    .line 73
    .line 74
    invoke-interface {p4, p6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-virtual {p0, p1}, Landroid/text/LoginFilter;->isAllowed(C)Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-nez p2, :cond_6

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    .line 85
    .line 86
    .line 87
    :cond_6
    add-int/lit8 p6, p6, 0x1

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_7
    invoke-virtual {p0}, Landroid/text/LoginFilter;->onStop()V

    .line 91
    .line 92
    .line 93
    return-object p5
.end method

.method public abstract isAllowed(C)Z
.end method

.method public onInvalidCharacter(C)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
