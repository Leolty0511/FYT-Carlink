.class public Lk0/ll$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ll;
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
    iput-object p1, p0, Lk0/ll$k;->a:Lk0/ll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    check-cast p1, Le/e$a;

    invoke-static {p1}, Lk0/ll;->d3(Le/e$a;)Le/e$a;

    .line 2
    iget-object p1, p0, Lk0/ll$k;->a:Lk0/ll;

    iget p1, p1, Lk0/ll;->J:I

    if-eqz p1, :cond_2

    .line 3
    invoke-static {}, Lk0/ll;->c3()Le/e$a;

    move-result-object p1

    iget p1, p1, Le/e$a;->a:I

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/16 v5, 0x97

    const/16 v6, 0xe3

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v9, 0x1

    const/16 v10, 0x8

    if-nez p1, :cond_1

    new-array p1, v10, [I

    aput v6, p1, v7

    aput v5, p1, v9

    aput v8, p1, v4

    aput v9, p1, v3

    .line 4
    invoke-static {}, Lk0/ll;->c3()Le/e$a;

    move-result-object v3

    iget v3, v3, Le/e$a;->b:I

    shr-int/2addr v3, v10

    and-int/lit16 v3, v3, 0xff

    aput v3, p1, v2

    invoke-static {}, Lk0/ll;->c3()Le/e$a;

    move-result-object v2

    iget v2, v2, Le/e$a;->b:I

    and-int/lit16 v2, v2, 0xff

    aput v2, p1, v8

    invoke-static {}, Lk0/ll;->c3()Le/e$a;

    move-result-object v2

    iget v2, v2, Le/e$a;->c:I

    shr-int/2addr v2, v10

    and-int/lit16 v2, v2, 0xff

    aput v2, p1, v1

    invoke-static {}, Lk0/ll;->c3()Le/e$a;

    move-result-object v1

    iget v1, v1, Le/e$a;->c:I

    and-int/lit16 v1, v1, 0xff

    aput v1, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lk0/ll;->c3()Le/e$a;

    move-result-object p1

    iget p1, p1, Le/e$a;->a:I

    if-ne p1, v9, :cond_2

    new-array p1, v10, [I

    aput v6, p1, v7

    aput v5, p1, v9

    aput v8, p1, v4

    aput v7, p1, v3

    .line 6
    invoke-static {}, Lk0/ll;->c3()Le/e$a;

    move-result-object v3

    iget v3, v3, Le/e$a;->b:I

    shr-int/2addr v3, v10

    and-int/lit16 v3, v3, 0xff

    aput v3, p1, v2

    invoke-static {}, Lk0/ll;->c3()Le/e$a;

    move-result-object v2

    iget v2, v2, Le/e$a;->b:I

    and-int/lit16 v2, v2, 0xff

    aput v2, p1, v8

    invoke-static {}, Lk0/ll;->c3()Le/e$a;

    move-result-object v2

    iget v2, v2, Le/e$a;->c:I

    shr-int/2addr v2, v10

    and-int/lit16 v2, v2, 0xff

    aput v2, p1, v1

    invoke-static {}, Lk0/ll;->c3()Le/e$a;

    move-result-object v1

    iget v1, v1, Le/e$a;->c:I

    and-int/lit16 v1, v1, 0xff

    aput v1, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_2
    :goto_0
    return-void
.end method
