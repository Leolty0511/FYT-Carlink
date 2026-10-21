.class public abstract synthetic Landroid/companion/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/companion/DeviceFilter;Landroid/os/Parcelable;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Landroid/companion/DeviceFilter;->matches(Landroid/os/Parcelable;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
