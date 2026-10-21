.class public Landroid/util/CheckTime$System;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/CheckTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "System"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 5
    .line 6
    const-string v1, "You should never call new CheckTime.System()."

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw v0
.end method

.method public static checkTime(JLjava/lang/String;)Z
    .locals 6

    const-wide/16 v3, 0xc8

    const/4 v5, 0x0

    move-wide v0, p0

    move-object v2, p2

    .line 1
    invoke-static/range {v0 .. v5}, Landroid/util/CheckTime;->checkTime(JLjava/lang/String;JZ)Z

    move-result p0

    return p0
.end method

.method public static checkTime(JLjava/lang/String;J)Z
    .locals 6

    const/4 v5, 0x0

    move-wide v0, p0

    move-object v2, p2

    move-wide v3, p3

    .line 2
    invoke-static/range {v0 .. v5}, Landroid/util/CheckTime;->checkTime(JLjava/lang/String;JZ)Z

    move-result p0

    return p0
.end method
