.class public Ln0/a1$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/a1;->x3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/a1;


# direct methods
.method public constructor <init>(Ln0/a1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/a1$l;->a:Ln0/a1;

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

    .line 2
    sget-object p1, Lu0/b;->V2:[I

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lu0/b;->W2:[I

    :goto_0
    const/4 p3, 0x0

    if-nez p1, :cond_2

    move p4, p3

    goto :goto_1

    .line 4
    :cond_2
    array-length p4, p1

    :goto_1
    if-nez p4, :cond_3

    return p2

    .line 5
    :cond_3
    sget p5, Lu0/b;->j:I

    if-ne p5, p2, :cond_4

    aget p5, p1, p3

    if-nez p5, :cond_4

    .line 6
    invoke-static {p3}, Lu0/d;->N(I)V

    return p2

    .line 7
    :cond_4
    sget p5, Lu0/b;->K:I

    invoke-static {p1, p5}, Lo1/n0;->c([II)I

    move-result p5

    add-int/2addr p5, p4

    sub-int/2addr p5, p2

    .line 8
    rem-int/2addr p5, p4

    .line 9
    aget p5, p1, p5

    sget v0, Lu0/b;->Q:I

    invoke-static {p5, p3, v0}, Lo1/o0;->a(III)I

    move-result p5

    if-nez p5, :cond_5

    .line 10
    invoke-static {p2}, Lu0/d;->N(I)V

    const-wide/16 v0, 0xc8

    .line 11
    invoke-static {v0, v1}, La/i;->a0(J)V

    sub-int/2addr p4, p2

    .line 12
    aget p1, p1, p4

    sget p4, Lu0/b;->Q:I

    invoke-static {p1, p3, p4}, Lo1/o0;->a(III)I

    move-result p1

    invoke-static {p1}, Lu0/d;->V(I)V

    goto :goto_2

    .line 13
    :cond_5
    invoke-static {p5}, Lu0/d;->V(I)V

    :goto_2
    return p2
.end method
