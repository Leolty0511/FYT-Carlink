.class public Landroid/text/InputFilter$AllCaps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllCaps"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;
    }
.end annotation


# instance fields
.field private final mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/text/InputFilter$AllCaps;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Landroid/text/InputFilter$AllCaps;->mLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    new-instance p4, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;

    .line 2
    .line 3
    invoke-direct {p4, p1, p2, p3}, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;-><init>(Ljava/lang/CharSequence;II)V

    .line 4
    .line 5
    .line 6
    sub-int/2addr p3, p2

    .line 7
    const/4 p2, 0x0

    .line 8
    move p5, p2

    .line 9
    :goto_0
    if-ge p5, p3, :cond_2

    .line 10
    .line 11
    invoke-static {p4, p5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 12
    .line 13
    .line 14
    move-result p6

    .line 15
    invoke-static {p6}, Ljava/lang/Character;->isLowerCase(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-static {p6}, Ljava/lang/Character;->isTitleCase(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-static {p6}, Ljava/lang/Character;->charCount(I)I

    .line 29
    .line 30
    .line 31
    move-result p6

    .line 32
    add-int/2addr p5, p6

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    const/4 p2, 0x1

    .line 35
    :cond_2
    const/4 p3, 0x0

    .line 36
    if-nez p2, :cond_3

    .line 37
    .line 38
    return-object p3

    .line 39
    :cond_3
    instance-of p1, p1, Landroid/text/Spanned;

    .line 40
    .line 41
    iget-object p2, p0, Landroid/text/InputFilter$AllCaps;->mLocale:Ljava/util/Locale;

    .line 42
    .line 43
    invoke-static {p2, p4, p1}, Landroid/text/TextUtils;->toUpperCase(Ljava/util/Locale;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-ne p2, p4, :cond_4

    .line 48
    .line 49
    return-object p3

    .line 50
    :cond_4
    if-eqz p1, :cond_5

    .line 51
    .line 52
    new-instance p1, Landroid/text/SpannableString;

    .line 53
    .line 54
    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_5
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :goto_2
    return-object p1
.end method
