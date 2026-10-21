.class public Lcom/android/fmradio/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fmradio/a$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/android/fmradio/a;

.field public static final f:Lcom/android/fmradio/a;

.field public static final g:Lcom/android/fmradio/a;

.field public static final h:Lcom/android/fmradio/a;

.field public static final i:Lcom/android/fmradio/a;

.field public static final j:Lcom/android/fmradio/a;

.field public static final k:Lcom/android/fmradio/a;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/fmradio/a;

    const/16 v1, 0x222e

    const/16 v2, 0x2a30

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/fmradio/a;-><init>(III)V

    sput-object v0, Lcom/android/fmradio/a;->e:Lcom/android/fmradio/a;

    .line 2
    new-instance v0, Lcom/android/fmradio/a;

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/fmradio/a;-><init>(III)V

    sput-object v0, Lcom/android/fmradio/a;->f:Lcom/android/fmradio/a;

    .line 3
    new-instance v0, Lcom/android/fmradio/a;

    const/16 v3, 0x1964

    const/16 v4, 0x1ce8

    const/4 v5, 0x3

    invoke-direct {v0, v3, v4, v5}, Lcom/android/fmradio/a;-><init>(III)V

    sput-object v0, Lcom/android/fmradio/a;->g:Lcom/android/fmradio/a;

    .line 4
    new-instance v0, Lcom/android/fmradio/a;

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/fmradio/a;-><init>(III)V

    sput-object v0, Lcom/android/fmradio/a;->h:Lcom/android/fmradio/a;

    .line 5
    new-instance v0, Lcom/android/fmradio/a;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/fmradio/a;-><init>(III)V

    sput-object v0, Lcom/android/fmradio/a;->i:Lcom/android/fmradio/a;

    .line 6
    new-instance v0, Lcom/android/fmradio/a;

    const/16 v1, 0x208

    const/16 v2, 0x654

    invoke-direct {v0, v1, v2, v3}, Lcom/android/fmradio/a;-><init>(III)V

    sput-object v0, Lcom/android/fmradio/a;->j:Lcom/android/fmradio/a;

    .line 7
    new-instance v0, Lcom/android/fmradio/a;

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/fmradio/a;-><init>(III)V

    sput-object v0, Lcom/android/fmradio/a;->k:Lcom/android/fmradio/a;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/fmradio/a;->a:I

    .line 3
    iput p2, p0, Lcom/android/fmradio/a;->b:I

    .line 4
    iput p3, p0, Lcom/android/fmradio/a;->c:I

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p1

    .line 5
    div-int/2addr p2, p3

    int-to-float p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    :goto_0
    iput p1, p0, Lcom/android/fmradio/a;->d:I

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/fmradio/a;->a:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/fmradio/a;->b:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/fmradio/a;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/fmradio/a;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/fmradio/a;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    instance-of v0, p1, Lcom/android/fmradio/a;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/android/fmradio/a;

    .line 3
    iget v0, p1, Lcom/android/fmradio/a;->a:I

    iget v1, p0, Lcom/android/fmradio/a;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/fmradio/a;->b:I

    iget v1, p0, Lcom/android/fmradio/a;->b:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcom/android/fmradio/a;->c:I

    iget v0, p0, Lcom/android/fmradio/a;->c:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/android/fmradio/a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/fmradio/a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/fmradio/a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "FmRang [min: %d, max: %d, step: %d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
