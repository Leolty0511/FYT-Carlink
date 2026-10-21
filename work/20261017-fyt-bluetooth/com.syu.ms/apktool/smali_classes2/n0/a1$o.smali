.class public Ln0/a1$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/a1;->X2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/a1;


# direct methods
.method public constructor <init>(Ln0/a1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/a1$o;->a:Ln0/a1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 1
    sget-object v0, La/b;->k:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x3c

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0x8

    aput v4, v2, v3

    .line 2
    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    :goto_0
    return v1
.end method
