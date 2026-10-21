.class public Landroid/text/LoginFilter$UsernameFilterGeneric;
.super Landroid/text/LoginFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/LoginFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsernameFilterGeneric"
.end annotation


# static fields
.field private static final mAllowed:Ljava/lang/String; = "@_-+."


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/text/LoginFilter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/text/LoginFilter;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public isAllowed(C)Z
    .locals 2

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-gt v0, p1, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x39

    .line 7
    .line 8
    if-gt p1, v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const/16 v0, 0x61

    .line 12
    .line 13
    if-gt v0, p1, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x7a

    .line 16
    .line 17
    if-gt p1, v0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    const/16 v0, 0x41

    .line 21
    .line 22
    if-gt v0, p1, :cond_2

    .line 23
    .line 24
    const/16 v0, 0x5a

    .line 25
    .line 26
    if-gt p1, v0, :cond_2

    .line 27
    .line 28
    return v1

    .line 29
    :cond_2
    const-string v0, "@_-+."

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 v0, -0x1

    .line 36
    if-eq p1, v0, :cond_3

    .line 37
    .line 38
    return v1

    .line 39
    :cond_3
    const/4 p1, 0x0

    .line 40
    return p1
.end method
