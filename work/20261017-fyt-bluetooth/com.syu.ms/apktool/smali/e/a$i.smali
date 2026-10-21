.class public Le/a$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a;->f()Lo1/o;
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

    .line 1
    sget p2, Lu0/b;->o:I

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 2
    invoke-static {p1}, Lu0/d;->U1(I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
