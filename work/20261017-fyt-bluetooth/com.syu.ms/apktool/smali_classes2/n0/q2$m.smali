.class public Ln0/q2$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/q2;->U2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/q2;


# direct methods
.method public constructor <init>(Ln0/q2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/q2$m;->a:Ln0/q2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6

    if-nez p1, :cond_1

    .line 1
    sget-object v0, Lu0/b;->Y2:Lo1/o;

    if-eqz v0, :cond_0

    const/4 v1, -0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2
    invoke-interface/range {v0 .. v5}, Lo1/o;->a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lu0/d;->N1()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
