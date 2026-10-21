.class public final Landroidx/core/os/MessageCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/MessageCompat$Api22Impl;
    }
.end annotation


# static fields
.field private static sTryIsAsynchronous:Z = true

.field private static sTrySetAsynchronous:Z = true


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAsynchronous(Landroid/os/Message;)Z
    .locals 3
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x16

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/core/os/MessageCompat$Api22Impl;->isAsynchronous(Landroid/os/Message;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    sget-boolean v1, Landroidx/core/os/MessageCompat;->sTryIsAsynchronous:Z

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x10

    .line 18
    .line 19
    if-lt v0, v1, :cond_1

    .line 20
    .line 21
    :try_start_0
    invoke-static {p0}, Landroidx/core/os/MessageCompat$Api22Impl;->isAsynchronous(Landroid/os/Message;)Z

    .line 22
    .line 23
    .line 24
    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return p0

    .line 26
    :catch_0
    sput-boolean v2, Landroidx/core/os/MessageCompat;->sTryIsAsynchronous:Z

    .line 27
    .line 28
    :cond_1
    return v2
.end method

.method public static setAsynchronous(Landroid/os/Message;Z)V
    .locals 2
    .param p0    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x16

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroidx/core/os/MessageCompat$Api22Impl;->setAsynchronous(Landroid/os/Message;Z)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-boolean v1, Landroidx/core/os/MessageCompat;->sTrySetAsynchronous:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x10

    .line 16
    .line 17
    if-lt v0, v1, :cond_1

    .line 18
    .line 19
    :try_start_0
    invoke-static {p0, p1}, Landroidx/core/os/MessageCompat$Api22Impl;->setAsynchronous(Landroid/os/Message;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    const/4 p0, 0x0

    .line 24
    sput-boolean p0, Landroidx/core/os/MessageCompat;->sTrySetAsynchronous:Z

    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method
