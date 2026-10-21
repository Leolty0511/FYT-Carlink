.class public Landroid/media/MediaCasException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCasException$ResourceBusyException;,
        Landroid/media/MediaCasException$DeniedByServerException;,
        Landroid/media/MediaCasException$NotProvisionedException;,
        Landroid/media/MediaCasException$UnsupportedCasException;
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/media/MediaCasException$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/MediaCasException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static throwExceptionIfNeeded(I)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x7

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eq p0, v0, :cond_3

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/16 v0, 0xb

    .line 13
    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    invoke-static {p0}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    new-instance p0, Landroid/media/MediaCasException$DeniedByServerException;

    .line 21
    .line 22
    invoke-direct {p0, v1}, Landroid/media/MediaCasException$DeniedByServerException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0

    .line 26
    :cond_2
    new-instance p0, Landroid/media/MediaCasException$ResourceBusyException;

    .line 27
    .line 28
    invoke-direct {p0, v1}, Landroid/media/MediaCasException$ResourceBusyException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_3
    new-instance p0, Landroid/media/MediaCasException$NotProvisionedException;

    .line 33
    .line 34
    invoke-direct {p0, v1}, Landroid/media/MediaCasException$NotProvisionedException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method
