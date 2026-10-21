.class public Ln0/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/j;->j3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/j;


# direct methods
.method public constructor <init>(Ln0/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/j$a;->a:Ln0/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    if-eqz p2, :cond_3

    .line 1
    array-length p3, p2

    const/4 p4, 0x2

    if-lt p3, p4, :cond_3

    const/4 p3, 0x1

    aget p4, p2, p3

    if-nez p4, :cond_3

    .line 2
    sget p4, Lu0/b;->f:I

    if-nez p4, :cond_2

    .line 3
    aget p1, p2, p1

    const/16 p2, 0xdc

    if-ne p1, p2, :cond_0

    .line 4
    invoke-static {p3}, Lu0/d;->U1(I)V

    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 5
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 6
    :cond_0
    sget p1, Lu0/b;->x:I

    if-eqz p1, :cond_1

    .line 7
    invoke-static {p3}, Lu0/d;->U1(I)V

    :cond_1
    :goto_0
    return p3

    .line 8
    :cond_2
    sget p2, Lu0/b;->j:I

    if-eqz p2, :cond_3

    .line 9
    invoke-static {p1}, Lu0/d;->N(I)V

    return p3

    :cond_3
    return p1

    :array_0
    .array-data 4
        0x1
        0xaa
        0x91
    .end array-data
.end method
