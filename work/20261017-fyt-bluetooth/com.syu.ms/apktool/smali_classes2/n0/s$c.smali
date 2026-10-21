.class public Ln0/s$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/s;->j3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/s;


# direct methods
.method public constructor <init>(Ln0/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/s$c;->a:Ln0/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    sget-object p1, La/b;->s:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/16 p1, 0x3c

    new-array p3, p2, [I

    const/4 p4, 0x0

    const/4 p5, 0x2

    aput p5, p3, p4

    .line 2
    invoke-static {p1, p3}, Lu0/d;->I3(I[I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lu0/d;->O1()V

    :goto_0
    return p2
.end method
