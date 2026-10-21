.class public Lk0/qt$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/qt;
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
    check-cast p5, Lo1/c;

    .line 2
    sget-object p1, La/b;->K:Ljava/lang/String;

    sget p2, Lk0/nt;->K:I

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-ne p2, p4, :cond_0

    goto :goto_0

    :cond_0
    move p4, p3

    :goto_0
    invoke-static {p1, p4}, Lu0/d;->m0(Ljava/lang/String;Z)V

    return p3
.end method
