.class public Lg1/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0}, Lu0/i;->y3()V

    .line 2
    sget v0, Lu0/b;->R:I

    .line 3
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_4

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_4

    .line 4
    sget v1, Lu0/b;->T:I

    if-lez v1, :cond_4

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 5
    sput v1, Lu0/b;->T:I

    if-gtz v1, :cond_4

    .line 6
    sget-object v3, Lu0/b;->X2:Lo1/o;

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 7
    invoke-interface/range {v3 .. v8}, Lo1/o;->a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {}, Lo1/n0;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    sget v0, Lu0/b;->h4:I

    if-nez v0, :cond_2

    .line 10
    sget v0, Ln0/j4;->b:I

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_1

    .line 11
    invoke-static {v2}, Lu0/d;->j3(I)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {v2}, Lu0/d;->N(I)V

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_4

    .line 13
    invoke-static {v2}, Lu0/d;->u3(I)V

    goto :goto_0

    .line 14
    :cond_3
    sput v0, Lu0/b;->T:I

    :cond_4
    :goto_0
    return-void
.end method
