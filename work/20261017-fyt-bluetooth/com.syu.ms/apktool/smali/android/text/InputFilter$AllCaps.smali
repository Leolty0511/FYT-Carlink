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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6

    move p4, p2

    :goto_0
    if-ge p4, p3, :cond_2

    .line 1
    invoke-interface {p1, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p5

    invoke-static {p5}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result p5

    if-eqz p5, :cond_1

    sub-int p4, p3, p2

    .line 2
    new-array p4, p4, [C

    const/4 p5, 0x0

    .line 3
    invoke-static {p1, p2, p3, p4, p5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 4
    new-instance p5, Ljava/lang/String;

    invoke-direct {p5, p4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p4

    .line 5
    instance-of p5, p1, Landroid/text/Spanned;

    if-eqz p5, :cond_0

    .line 6
    new-instance p5, Landroid/text/SpannableString;

    invoke-direct {p5, p4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v1, p2

    move v2, p3

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    return-object p5

    :cond_0
    return-object p4

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
