.class public Lk0/ke$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk0/ke;->S2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ke;


# direct methods
.method public constructor <init>(Lk0/ke;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ke$h;->a:Lk0/ke;

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
