.class public abstract synthetic Landroidx/core/location/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/view/ContentInfo;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/ContentInfo;->getFlags()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Landroid/view/ContentInfo;)Landroid/content/ClipData;
    .locals 0

    invoke-virtual {p0}, Landroid/view/ContentInfo;->getClip()Landroid/content/ClipData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(J)Landroid/location/LocationRequest$Builder;
    .locals 1

    new-instance v0, Landroid/location/LocationRequest$Builder;

    invoke-direct {v0, p0, p1}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    return-object v0
.end method

.method public static bridge synthetic d(Landroid/location/LocationRequest$Builder;F)Landroid/location/LocationRequest$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/location/LocationRequest$Builder;->setMinUpdateDistanceMeters(F)Landroid/location/LocationRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Landroid/location/LocationRequest$Builder;I)Landroid/location/LocationRequest$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Landroid/location/LocationRequest$Builder;J)Landroid/location/LocationRequest$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Landroid/location/LocationRequest$Builder;)Landroid/location/LocationRequest;
    .locals 0

    invoke-virtual {p0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Landroid/view/ContentInfo;)Landroid/net/Uri;
    .locals 0

    invoke-virtual {p0}, Landroid/view/ContentInfo;->getLinkUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Landroid/view/ContentInfo;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Landroid/view/ContentInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(Ljava/lang/Object;)Landroid/os/OutcomeReceiver;
    .locals 0

    check-cast p0, Landroid/os/OutcomeReceiver;

    return-object p0
.end method

.method public static synthetic k(Landroid/content/ClipData;I)Landroid/view/ContentInfo$Builder;
    .locals 1

    new-instance v0, Landroid/view/ContentInfo$Builder;

    invoke-direct {v0, p0, p1}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/content/ClipData;I)V

    return-object v0
.end method

.method public static bridge synthetic l(Landroid/view/ContentInfo$Builder;Landroid/content/ClipData;)Landroid/view/ContentInfo$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ContentInfo$Builder;->setClip(Landroid/content/ClipData;)Landroid/view/ContentInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Landroid/view/ContentInfo;)Landroid/view/ContentInfo$Builder;
    .locals 1

    new-instance v0, Landroid/view/ContentInfo$Builder;

    invoke-direct {v0, p0}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/view/ContentInfo;)V

    return-object v0
.end method

.method public static bridge synthetic n(Landroid/view/ContentInfo$Builder;)Landroid/view/ContentInfo;
    .locals 0

    invoke-virtual {p0}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o(Ljava/lang/Object;)Landroid/view/ContentInfo;
    .locals 0

    check-cast p0, Landroid/view/ContentInfo;

    return-object p0
.end method

.method public static synthetic p()V
    .locals 1

    new-instance v0, Landroid/location/LocationRequest$Builder;

    return-void
.end method

.method public static bridge synthetic q(Landroid/view/ContentInfo$Builder;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ContentInfo$Builder;->setSource(I)Landroid/view/ContentInfo$Builder;

    return-void
.end method

.method public static bridge synthetic r(Landroid/view/ContentInfo$Builder;Landroid/content/ClipData;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ContentInfo$Builder;->setClip(Landroid/content/ClipData;)Landroid/view/ContentInfo$Builder;

    return-void
.end method

.method public static bridge synthetic s(Landroid/view/ContentInfo$Builder;Landroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ContentInfo$Builder;->setLinkUri(Landroid/net/Uri;)Landroid/view/ContentInfo$Builder;

    return-void
.end method

.method public static bridge synthetic t(Landroid/view/ContentInfo$Builder;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ContentInfo$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/ContentInfo$Builder;

    return-void
.end method

.method public static bridge synthetic u(Landroid/view/ContentInfo;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/ContentInfo;->getSource()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic v(Landroid/location/LocationRequest$Builder;I)Landroid/location/LocationRequest$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/location/LocationRequest$Builder;->setMaxUpdates(I)Landroid/location/LocationRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic w(Landroid/location/LocationRequest$Builder;J)Landroid/location/LocationRequest$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/location/LocationRequest$Builder;->setDurationMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x()V
    .locals 1

    new-instance v0, Landroid/view/ContentInfo$Builder;

    return-void
.end method

.method public static bridge synthetic y(Landroid/view/ContentInfo$Builder;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ContentInfo$Builder;->setFlags(I)Landroid/view/ContentInfo$Builder;

    return-void
.end method

.method public static bridge synthetic z(Landroid/location/LocationRequest$Builder;J)Landroid/location/LocationRequest$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/location/LocationRequest$Builder;->setMaxUpdateDelayMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object p0

    return-object p0
.end method
