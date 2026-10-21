.class public Ln0/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/m;->x3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/m;


# direct methods
.method public constructor <init>(Ln0/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/m$a;->a:Ln0/m;

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

    sget-object p1, Lu0/b;->V2:[I

    goto :goto_0

    .line 2
    :cond_1
    sget-object p1, Lu0/b;->W2:[I

    .line 3
    :goto_0
    array-length p3, p1

    .line 4
    sget p4, Lu0/b;->K:I

    invoke-static {p1, p4}, Lo1/n0;->c([II)I

    move-result p4

    const/4 p5, -0x1

    add-int/2addr p4, p5

    .line 5
    sget v0, Lu0/b;->j:I

    const/4 v1, 0x0

    if-ne v0, p2, :cond_2

    sget v0, Lu0/b;->f:I

    if-eqz v0, :cond_2

    .line 6
    invoke-static {v1}, Lu0/d;->N(I)V

    return p2

    :cond_2
    if-le p4, p5, :cond_3

    if-ge p4, p3, :cond_3

    .line 7
    aget p1, p1, p4

    sget p3, Lu0/b;->Q:I

    invoke-static {p1, v1, p3}, Lo1/o0;->a(III)I

    move-result p1

    invoke-static {p1}, Lu0/d;->V(I)V

    .line 8
    invoke-static {}, Lo1/n0;->b()V

    goto :goto_1

    :cond_3
    if-ne p4, p5, :cond_4

    .line 9
    invoke-static {p2}, Lu0/d;->N(I)V

    const-wide/16 p3, 0xc8

    .line 10
    invoke-static {p3, p4}, La/i;->a0(J)V

    .line 11
    sget p1, Lu0/b;->Q:I

    invoke-static {p1}, Lu0/d;->V(I)V

    :cond_4
    :goto_1
    return p2
.end method
