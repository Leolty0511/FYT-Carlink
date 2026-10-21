.class public Lk0/jl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk0/jl;->S2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/jl;


# direct methods
.method public constructor <init>(Lk0/jl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/jl$b;->a:Lk0/jl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    sget-object p2, La/b;->Q:Ljava/lang/String;

    invoke-static {p2}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    const/4 p2, 0x6

    if-nez p1, :cond_0

    new-array p1, p2, [I

    .line 2
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_2

    new-array p1, p2, [I

    .line 3
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 4
    invoke-static {}, Lu0/d;->u1()V

    :cond_2
    :goto_0
    return p3

    :array_0
    .array-data 4
        0xe3
        0x0
        0xa8
        0x2
        0x1
        0x6
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x0
        0xa8
        0x2
        0x0
        0x6
    .end array-data
.end method
