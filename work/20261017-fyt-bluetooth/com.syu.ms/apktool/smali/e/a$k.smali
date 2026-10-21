.class public Le/a$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a;->k()Lo1/o;
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
.method public a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    const/4 p2, 0x0

    if-nez p1, :cond_2

    .line 1
    sget p1, Lu0/b;->j:I

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p2}, Lu0/d;->N(I)V

    goto :goto_0

    .line 3
    :cond_0
    sget p1, Lu0/b;->h:I

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p2}, Lu0/d;->u3(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 5
    invoke-static {p1}, Lu0/d;->C3(I)V

    :cond_2
    :goto_0
    return p2
.end method
