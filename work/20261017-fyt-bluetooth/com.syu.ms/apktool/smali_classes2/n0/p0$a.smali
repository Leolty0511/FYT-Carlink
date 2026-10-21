.class public Ln0/p0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/p0;->x3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/p0;


# direct methods
.method public constructor <init>(Ln0/p0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/p0$a;->a:Ln0/p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    const/4 p2, 0x1

    const/4 p3, -0x3

    if-eq p1, p3, :cond_0

    return p2

    .line 1
    :cond_0
    sget p1, Lu0/b;->w:I

    if-nez p1, :cond_1

    invoke-static {}, Ln0/p0;->S3()[I

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {}, Ln0/p0;->T3()[I

    move-result-object p1

    .line 3
    :goto_0
    array-length p3, p1

    .line 4
    sget p4, Lu0/b;->K:I

    const/4 p5, 0x0

    aget v0, p1, p5

    if-le p4, v0, :cond_2

    move p4, p2

    goto :goto_1

    :cond_2
    move p4, p5

    :goto_1
    const/4 v0, -0x1

    add-int/2addr p4, v0

    .line 5
    sget v1, Lu0/b;->j:I

    if-ne v1, p2, :cond_3

    sget v1, Lu0/b;->f:I

    if-eqz v1, :cond_3

    .line 6
    invoke-static {p5}, Lu0/d;->N(I)V

    return p2

    :cond_3
    if-le p4, v0, :cond_4

    if-ge p4, p3, :cond_4

    .line 7
    aget p1, p1, p4

    sget p3, Lu0/b;->Q:I

    invoke-static {p1, p5, p3}, Lo1/o0;->a(III)I

    move-result p1

    invoke-static {p1}, Lu0/d;->V(I)V

    .line 8
    invoke-static {}, Lo1/n0;->b()V

    goto :goto_2

    :cond_4
    if-ne p4, v0, :cond_5

    .line 9
    invoke-static {p2}, Lu0/d;->N(I)V

    const-wide/16 p3, 0xc8

    .line 10
    invoke-static {p3, p4}, La/i;->a0(J)V

    .line 11
    sget p1, Lu0/b;->Q:I

    invoke-static {p1}, Lu0/d;->V(I)V

    :cond_5
    :goto_2
    return p2
.end method
