.class public Ln0/f4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/f4;->j3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/f4;


# direct methods
.method public constructor <init>(Ln0/f4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/f4$a;->a:Ln0/f4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_1

    .line 1
    sget p1, Lu0/b;->h:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    .line 2
    invoke-static {}, Lu0/d;->N1()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 3
    invoke-static {p1}, Lu0/d;->u3(I)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
