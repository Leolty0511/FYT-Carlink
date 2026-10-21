.class public Lk0/jl$d;
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
    iput-object p1, p0, Lk0/jl$d;->a:Lk0/jl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    const/4 p2, 0x6

    const/4 p3, 0x1

    if-nez p1, :cond_0

    new-array p1, p2, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    new-array p1, p2, [I

    .line 2
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return p3

    :array_0
    .array-data 4
        0xe3
        0x0
        0x94
        0x2
        0xa
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x0
        0x94
        0x2
        0xa
        0x0
    .end array-data
.end method
