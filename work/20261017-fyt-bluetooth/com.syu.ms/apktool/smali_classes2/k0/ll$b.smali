.class public Lk0/ll$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk0/ll;->S2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ll;


# direct methods
.method public constructor <init>(Lk0/ll;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ll$b;->a:Lk0/ll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    const/4 p2, 0x7

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
        0x98
        0x4
        0xc0
        0x1
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x98
        0x4
        0xc0
        0x1
        0x0
        0x0
    .end array-data
.end method
