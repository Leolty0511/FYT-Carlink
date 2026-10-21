.class public abstract synthetic Landroid/view/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/MenuItem;)I
    .locals 0

    const/16 p0, 0x1000

    return p0
.end method

.method public static b(Landroid/view/MenuItem;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/view/MenuItem;)Landroid/content/res/ColorStateList;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Landroid/view/MenuItem;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Landroid/view/MenuItem;)I
    .locals 0

    const/16 p0, 0x1000

    return p0
.end method

.method public static f(Landroid/view/MenuItem;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static h(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;
    .locals 1

    const v0, 0x1100f

    and-int/2addr p2, v0

    const/16 v0, 0x1000

    if-ne p2, v0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static i(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public static j(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public static k(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public static l(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;
    .locals 1

    const v0, 0x1100f

    and-int/2addr p2, v0

    const/16 v0, 0x1000

    if-ne p2, v0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static m(Landroid/view/MenuItem;CCII)Landroid/view/MenuItem;
    .locals 2

    const v0, 0x1100f

    and-int/2addr p4, v0

    const/16 v1, 0x1000

    if-ne p4, v1, :cond_0

    and-int/2addr p3, v0

    if-ne p3, v1, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static n(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method
