.class public abstract synthetic Landroid/text/method/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Landroid/icu/text/DecimalFormatSymbols;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic B(Landroid/app/Person;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/Person;->isImportant()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic C(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;
    .locals 0

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic D(Landroid/icu/text/DecimalFormatSymbols;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparatorString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic a(Landroid/text/PrecomputedText;I)I
    .locals 0

    invoke-virtual {p0, p1}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result p0

    return p0
.end method

.method public static synthetic b()Landroid/app/Person$Builder;
    .locals 1

    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic c(Landroid/app/Person$Builder;Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Person$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Landroid/app/Person$Builder;Ljava/lang/CharSequence;)Landroid/app/Person$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Landroid/app/Person$Builder;Ljava/lang/String;)Landroid/app/Person$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Landroid/app/Person$Builder;Z)Landroid/app/Person$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Person$Builder;->setBot(Z)Landroid/app/Person$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Landroid/app/Person$Builder;)Landroid/app/Person;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Landroid/os/Parcelable;)Landroid/app/Person;
    .locals 0

    check-cast p0, Landroid/app/Person;

    return-object p0
.end method

.method public static bridge synthetic i(Ljava/lang/Object;)Landroid/app/Person;
    .locals 0

    check-cast p0, Landroid/app/Person;

    return-object p0
.end method

.method public static bridge synthetic j(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Landroid/app/Person;)Landroid/graphics/drawable/Icon;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Landroid/text/Spannable;)Landroid/text/PrecomputedText;
    .locals 0

    check-cast p0, Landroid/text/PrecomputedText;

    return-object p0
.end method

.method public static bridge synthetic n(Landroid/app/Person;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o(Landroid/app/Person;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic p(Landroid/icu/text/DecimalFormatSymbols;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q()V
    .locals 1

    new-instance v0, Landroid/app/Person$Builder;

    return-void
.end method

.method public static bridge synthetic r(Landroid/text/PrecomputedText;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/text/PrecomputedText;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic s(Landroid/app/Person;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/Person;->isBot()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic t(Landroid/content/pm/SigningInfo;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic u(Landroid/text/Spannable;)Z
    .locals 0

    instance-of p0, p0, Landroid/text/PrecomputedText;

    return p0
.end method

.method public static bridge synthetic v(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;
    .locals 0

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic w(Landroid/icu/text/DecimalFormatSymbols;)[Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic x(Landroid/app/Person$Builder;Ljava/lang/String;)Landroid/app/Person$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic y(Landroid/app/Person$Builder;Z)Landroid/app/Person$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Person$Builder;->setImportant(Z)Landroid/app/Person$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic z(Landroid/app/Person;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
