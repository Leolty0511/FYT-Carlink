.class public Landroid/util/CheckTime;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/CheckTime$System;
    }
.end annotation


# static fields
.field private static final ACTION_TIMEOUT:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "CheckTime"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkTime(JLjava/lang/String;)Z
    .locals 2

    const-wide/16 v0, 0xc8

    .line 1
    invoke-static {p0, p1, p2, v0, v1}, Landroid/util/CheckTime;->checkTime(JLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static checkTime(JLjava/lang/String;J)Z
    .locals 6

    const/4 v5, 0x1

    move-wide v0, p0

    move-object v2, p2

    move-wide v3, p3

    .line 2
    invoke-static/range {v0 .. v5}, Landroid/util/CheckTime;->checkTime(JLjava/lang/String;JZ)Z

    move-result p0

    return p0
.end method

.method public static checkTime(JLjava/lang/String;JZ)Z
    .locals 3

    .line 3
    invoke-static {}, Landroid/util/CheckTime;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    cmp-long p0, v0, p3

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    const-string p1, "ms"

    const-string p3, " took "

    const-string p4, "CheckTime"

    if-eqz p5, :cond_1

    .line 4
    new-instance p5, Ljava/lang/StringBuilder;

    const-string v2, "App running slow: Executing "

    invoke-direct {p5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p5, p1, p4}, Landroid/accessibilityservice/c;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    new-instance p5, Ljava/lang/StringBuilder;

    const-string v2, "System running slow: Executing "

    invoke-direct {p5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return p0
.end method

.method public static getTime()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
