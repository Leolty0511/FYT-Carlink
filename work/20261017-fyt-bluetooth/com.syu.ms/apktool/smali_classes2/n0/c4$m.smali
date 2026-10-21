.class public Ln0/c4$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/c4;->N3([I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/c4;


# direct methods
.method public constructor <init>(Ln0/c4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/c4$m;->a:Ln0/c4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    const/4 p2, 0x0

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
    if-nez p1, :cond_2

    move p3, p2

    goto :goto_1

    .line 4
    :cond_2
    array-length p3, p1

    :goto_1
    const/4 p4, 0x1

    if-nez p3, :cond_3

    return p4

    .line 5
    :cond_3
    sget p5, Lu0/b;->K:I

    invoke-static {p1, p5}, Lo1/n0;->c([II)I

    move-result p5

    add-int/2addr p5, p3

    sub-int/2addr p5, p4

    .line 6
    rem-int/2addr p5, p3

    .line 7
    sget v0, Lu0/b;->j:I

    if-ne v0, p4, :cond_4

    aget v0, p1, p2

    if-nez v0, :cond_4

    .line 8
    invoke-static {p2}, Lu0/d;->N(I)V

    return p4

    .line 9
    :cond_4
    aget p5, p1, p5

    sget v0, Lu0/b;->Q:I

    invoke-static {p5, p2, v0}, Lo1/o0;->a(III)I

    move-result p5

    if-nez p5, :cond_5

    .line 10
    invoke-static {p4}, Lu0/d;->N(I)V

    const-wide/16 v0, 0xc8

    .line 11
    invoke-static {v0, v1}, La/i;->a0(J)V

    sub-int/2addr p3, p4

    .line 12
    aget p1, p1, p3

    sget p3, Lu0/b;->Q:I

    invoke-static {p1, p2, p3}, Lo1/o0;->a(III)I

    move-result p1

    invoke-static {p1}, Lu0/d;->V(I)V

    goto :goto_2

    .line 13
    :cond_5
    invoke-static {p5}, Lu0/d;->V(I)V

    :goto_2
    return p4
.end method
