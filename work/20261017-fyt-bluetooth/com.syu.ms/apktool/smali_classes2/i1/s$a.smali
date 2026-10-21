.class public Li1/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:[I

.field public c:[F

.field public d:[Ljava/lang/String;

.field public final synthetic e:Li1/s;


# direct methods
.method public constructor <init>(Li1/s;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/s$a;->e:Li1/s;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Li1/s$a;->a:I

    .line 4
    iget-object p1, p1, Li1/s;->f:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a([F)Z
    .locals 1

    .line 1
    iget-object v0, p0, Li1/s$a;->c:[F

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li1/s$a;->c:[F

    :cond_0
    return v0
.end method

.method public final b([I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Li1/s$a;->b:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li1/s$a;->b:[I

    :cond_0
    return v0
.end method

.method public final c([Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Li1/s$a;->d:[Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Li1/s$a;->d:[Ljava/lang/String;

    :cond_1
    return v0
.end method
