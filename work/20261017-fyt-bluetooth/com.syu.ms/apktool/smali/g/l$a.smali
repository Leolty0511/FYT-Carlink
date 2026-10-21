.class public Lg/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf1/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/l;


# direct methods
.method public constructor <init>(Lg/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/l$a;->a:Lg/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf1/q;I)V
    .locals 3

    const-string p2, "persist.lsec.params"

    const-string v0, ""

    .line 1
    invoke-static {p2, v0}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p2}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p2}, Lo1/s0;->D(Ljava/lang/String;)[I

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "params:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    array-length v2, p2

    invoke-static {p2, v1, v2}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2815S"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p1, p2}, Lf1/q;->q([I)Z

    :cond_0
    return-void
.end method
