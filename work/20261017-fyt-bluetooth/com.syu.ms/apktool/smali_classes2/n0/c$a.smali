.class public Ln0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/c;->j3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/c;


# direct methods
.method public constructor <init>(Ln0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/c$a;->a:Ln0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 9

    .line 1
    sget v0, Lk0/nt;->L:I

    .line 2
    sget-object v0, La/b;->s:Ljava/lang/String;

    sget v1, Lk0/nt;->L:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lu0/d;->m0(Ljava/lang/String;Z)V

    .line 3
    sget-object v3, Lk0/qt;->s:Lo1/o;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lo1/o;->a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z

    return v2
.end method
