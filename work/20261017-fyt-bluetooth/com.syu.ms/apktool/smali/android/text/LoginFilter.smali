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

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p5, :cond_1

    .line 2
    invoke-interface {p4, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 3
    invoke-virtual {p0, v2}, Landroid/text/LoginFilter;->isAllowed(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p5, 0x0

    move v1, p2

    :goto_1
    if-ge v1, p3, :cond_5

    .line 4
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 5
    invoke-virtual {p0, v2}, Landroid/text/LoginFilter;->isAllowed(C)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 6
    :cond_2
    iget-boolean v3, p0, Landroid/text/LoginFilter;->mAppendInvalid:Z

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    if-nez p5, :cond_4

    .line 7
    new-instance p5, Landroid/text/SpannableStringBuilder;

    invoke-direct {p5, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    sub-int v0, v1, p2

    :cond_4
    add-int/lit8 v3, v0, 0x1

    .line 8
    invoke-virtual {p5, v0, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 9
    :goto_2
    invoke-virtual {p0, v2}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10
    :cond_5
    :goto_4
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ge p6, p1, :cond_7

    .line 11
    invoke-interface {p4, p6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Landroid/text/LoginFilter;->isAllowed(C)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0, p1}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    :cond_6
    add-int/lit8 p6, p6, 0x1

    goto :goto_4

    .line 13
    :cond_7
    invoke-virtual {p0}, Landroid/text/LoginFilter;->onStop()V

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
