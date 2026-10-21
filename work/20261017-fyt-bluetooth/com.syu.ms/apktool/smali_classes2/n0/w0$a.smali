.class public Ln0/w0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/w0;->j3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/w0;


# direct methods
.method public constructor <init>(Ln0/w0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/w0$a;->a:Ln0/w0;

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
    invoke-static {}, Lo1/u;->i()I

    return p2
.end method
