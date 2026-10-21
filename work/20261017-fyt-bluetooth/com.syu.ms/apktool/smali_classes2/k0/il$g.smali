.class public Lk0/il$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/il;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/il;


# direct methods
.method public constructor <init>(Lk0/il;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/il$g;->a:Lk0/il;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    check-cast p1, Le/e$a;

    invoke-static {p1}, Lk0/il;->g3(Le/e$a;)Le/e$a;

    .line 2
    sget p1, Lu0/b;->r0:I

    const/4 v0, 0x7

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    sget p1, Lu0/b;->o:I

    if-ne p1, v1, :cond_2

    .line 3
    invoke-static {}, Lk0/il;->f3()Le/e$a;

    move-result-object p1

    iget p1, p1, Le/e$a;->a:I

    const/16 v2, 0x9

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/16 v6, 0x6b

    const/4 v7, 0x2

    const/16 v8, 0xe3

    const/16 v9, 0xa

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/16 v12, 0x8

    if-nez p1, :cond_1

    new-array p1, v9, [I

    aput v8, p1, v11

    aput v11, p1, v1

    aput v6, p1, v7

    aput v10, p1, v5

    aput v1, p1, v4

    .line 4
    invoke-static {}, Lk0/il;->f3()Le/e$a;

    move-result-object v4

    iget v4, v4, Le/e$a;->b:I

    shr-int/2addr v4, v12

    and-int/lit16 v4, v4, 0xff

    aput v4, p1, v3

    invoke-static {}, Lk0/il;->f3()Le/e$a;

    move-result-object v3

    iget v3, v3, Le/e$a;->b:I

    and-int/lit16 v3, v3, 0xff

    aput v3, p1, v10

    invoke-static {}, Lk0/il;->f3()Le/e$a;

    move-result-object v3

    iget v3, v3, Le/e$a;->c:I

    shr-int/2addr v3, v12

    and-int/lit16 v3, v3, 0xff

    aput v3, p1, v0

    invoke-static {}, Lk0/il;->f3()Le/e$a;

    move-result-object v0

    iget v0, v0, Le/e$a;->c:I

    and-int/lit16 v0, v0, 0xff

    aput v0, p1, v12

    aput v1, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lk0/il;->f3()Le/e$a;

    move-result-object p1

    iget p1, p1, Le/e$a;->a:I

    if-ne p1, v1, :cond_3

    new-array p1, v9, [I

    aput v8, p1, v11

    aput v11, p1, v1

    aput v6, p1, v7

    aput v10, p1, v5

    aput v1, p1, v4

    .line 6
    invoke-static {}, Lk0/il;->f3()Le/e$a;

    move-result-object v1

    iget v1, v1, Le/e$a;->b:I

    shr-int/2addr v1, v12

    and-int/lit16 v1, v1, 0xff

    aput v1, p1, v3

    invoke-static {}, Lk0/il;->f3()Le/e$a;

    move-result-object v1

    iget v1, v1, Le/e$a;->b:I

    and-int/lit16 v1, v1, 0xff

    aput v1, p1, v10

    invoke-static {}, Lk0/il;->f3()Le/e$a;

    move-result-object v1

    iget v1, v1, Le/e$a;->c:I

    shr-int/2addr v1, v12

    and-int/lit16 v1, v1, 0xff

    aput v1, p1, v0

    invoke-static {}, Lk0/il;->f3()Le/e$a;

    move-result-object v0

    iget v0, v0, Le/e$a;->c:I

    and-int/lit16 v0, v0, 0xff

    aput v0, p1, v12

    aput v11, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lk0/il$g;->a:Lk0/il;

    iget p1, p1, Lk0/il;->l:I

    if-nez p1, :cond_3

    sget-object p1, La/b;->Q:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lk0/il;->f3()Le/e$a;

    move-result-object p1

    iget p1, p1, Le/e$a;->a:I

    if-nez p1, :cond_3

    new-array p1, v0, [I

    .line 8
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x0
        0x67
        0x3
        0x1
        0x0
        0x80
    .end array-data
.end method
