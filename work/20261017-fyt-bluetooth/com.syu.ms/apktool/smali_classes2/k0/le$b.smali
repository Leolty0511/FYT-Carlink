.class public Lk0/le$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk0/le;->S2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/le;


# direct methods
.method public constructor <init>(Lk0/le;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/le$b;->a:Lk0/le;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lk0/le$b;->a:Lk0/le;

    invoke-static {p1}, Lk0/le;->d3(Lk0/le;)V

    const/4 p1, 0x1

    return p1
.end method
