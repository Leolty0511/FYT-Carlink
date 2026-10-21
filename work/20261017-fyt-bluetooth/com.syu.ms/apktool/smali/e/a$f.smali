.class public Le/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a;->g()Lo1/o;
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

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object p1

    const/16 p2, 0x214

    invoke-virtual {p1, p2}, Lc/e;->c(I)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
