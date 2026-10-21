.class public Le/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a;->a()Lo1/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    .line 1
    array-length p4, p2

    const/4 p5, 0x2

    if-lt p4, p5, :cond_2

    aget p4, p2, p3

    if-nez p4, :cond_2

    .line 2
    aget p2, p2, p1

    const/16 p4, 0xdc

    if-ne p2, p4, :cond_1

    .line 3
    sget p2, Lu0/b;->n4:I

    if-eqz p2, :cond_0

    sget p2, Lu0/b;->a0:I

    if-nez p2, :cond_0

    .line 4
    invoke-static {p1}, Lu0/d;->U1(I)V

    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 5
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 6
    :cond_0
    sget p2, Lu0/b;->f:I

    if-nez p2, :cond_2

    .line 7
    invoke-static {p3}, Lu0/d;->U1(I)V

    goto :goto_0

    .line 8
    :cond_1
    sget p2, Lu0/b;->f:I

    if-nez p2, :cond_2

    sget p2, Lu0/b;->x:I

    if-eqz p2, :cond_2

    .line 9
    invoke-static {p3}, Lu0/d;->U1(I)V

    :goto_0
    move p1, p3

    :cond_2
    return p1

    :array_0
    .array-data 4
        0x1
        0xaa
        0x91
    .end array-data
.end method
