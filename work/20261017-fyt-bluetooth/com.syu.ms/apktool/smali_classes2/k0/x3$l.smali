.class public Lk0/x3$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk0/x3;->S2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/x3;


# direct methods
.method public constructor <init>(Lk0/x3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/x3$l;->a:Lk0/x3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    return p2

    .line 1
    :cond_0
    iget-object p1, p0, Lk0/x3$l;->a:Lk0/x3;

    const/4 p3, 0x2

    invoke-static {p1, p3}, Lk0/x3;->e3(Lk0/x3;I)V

    return p2
.end method
