.class public abstract synthetic Landroidx/core/graphics/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A()Landroid/graphics/BlendMode;
    .locals 1

    sget-object v0, Landroid/graphics/BlendMode;->OVERLAY:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public static bridge synthetic B()Landroid/graphics/BlendMode;
    .locals 1

    sget-object v0, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public static bridge synthetic C()Landroid/graphics/BlendMode;
    .locals 1

    sget-object v0, Landroid/graphics/BlendMode;->LIGHTEN:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public static bridge synthetic D()Landroid/graphics/BlendMode;
    .locals 1

    sget-object v0, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public static bridge synthetic a(Landroid/graphics/fonts/FontFamily;)I
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/fonts/FontFamily;->getSize()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Landroid/graphics/fonts/FontStyle;)I
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c()Landroid/graphics/BlendMode;
    .locals 1

    sget-object v0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public static synthetic d(Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface$CustomFallbackBuilder;
    .locals 1

    new-instance v0, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v0, p0}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    return-object v0
.end method

.method public static synthetic e(Landroid/content/res/Resources;I)Landroid/graphics/fonts/Font$Builder;
    .locals 1

    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v0, p0, p1}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    return-object v0
.end method

.method public static bridge synthetic f(Landroid/graphics/fonts/Font$Builder;I)Landroid/graphics/fonts/Font$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Landroid/graphics/fonts/Font$Builder;Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Landroid/os/ParcelFileDescriptor;)Landroid/graphics/fonts/Font$Builder;
    .locals 1

    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v0, p0}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v0
.end method

.method public static bridge synthetic i(Landroid/graphics/fonts/Font$Builder;)Landroid/graphics/fonts/Font;
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(Landroid/graphics/fonts/FontFamily;)Landroid/graphics/fonts/Font;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    .locals 1

    new-instance v0, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v0, p0}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    return-object v0
.end method

.method public static bridge synthetic m(Landroid/graphics/fonts/FontFamily$Builder;)Landroid/graphics/fonts/FontFamily;
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(II)Landroid/graphics/fonts/FontStyle;
    .locals 1

    new-instance v0, Landroid/graphics/fonts/FontStyle;

    invoke-direct {v0, p0, p1}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    return-object v0
.end method

.method public static synthetic o()V
    .locals 1

    new-instance v0, Landroid/graphics/Typeface$CustomFallbackBuilder;

    return-void
.end method

.method public static bridge synthetic p(Landroid/graphics/fonts/FontFamily$Builder;Landroid/graphics/fonts/Font;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;

    return-void
.end method

.method public static bridge synthetic q(Landroid/graphics/fonts/FontStyle;)I
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic r()Landroid/graphics/BlendMode;
    .locals 1

    sget-object v0, Landroid/graphics/BlendMode;->XOR:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public static bridge synthetic s(Landroid/graphics/fonts/Font$Builder;I)Landroid/graphics/fonts/Font$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t()V
    .locals 1

    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    return-void
.end method

.method public static bridge synthetic u()Landroid/graphics/BlendMode;
    .locals 1

    sget-object v0, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public static bridge synthetic v(Landroid/graphics/fonts/Font$Builder;I)Landroid/graphics/fonts/Font$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w()V
    .locals 1

    new-instance v0, Landroid/graphics/fonts/FontFamily$Builder;

    return-void
.end method

.method public static bridge synthetic x()Landroid/graphics/BlendMode;
    .locals 1

    sget-object v0, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public static synthetic y()V
    .locals 1

    new-instance v0, Landroid/graphics/fonts/FontStyle;

    return-void
.end method

.method public static bridge synthetic z()Landroid/graphics/BlendMode;
    .locals 1

    sget-object v0, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    return-object v0
.end method
